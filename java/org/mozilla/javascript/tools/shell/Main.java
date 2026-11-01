package org.mozilla.javascript.tools.shell;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.ContextAction;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.GeneratedClassLoader;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.NativeArray;
import org.mozilla.javascript.RhinoException;
import org.mozilla.javascript.Script;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.SecurityController;
import org.mozilla.javascript.commonjs.module.ModuleScope;
import org.mozilla.javascript.commonjs.module.Require;
import org.mozilla.javascript.tools.SourceReader;
import org.mozilla.javascript.tools.ToolErrorReporter;

/* loaded from: classes3.dex */
public class Main {
    private static final int EXITCODE_FILE_NOT_FOUND = 4;
    private static final int EXITCODE_RUNTIME_ERROR = 3;
    public static ToolErrorReporter errorReporter;
    public static String mainModule;
    public static List<String> modulePath;
    public static Require require;
    private static SecurityProxy securityImpl;
    public static ShellContextFactory shellContextFactory = new ShellContextFactory();
    public static Global global = new Global();
    public static int exitCode = 0;
    public static boolean processStdin = true;
    public static List<String> fileList = new ArrayList();
    public static boolean sandboxed = false;
    public static boolean useRequire = false;
    private static final ScriptCache scriptCache = new ScriptCache(32);

    public static class IProxy implements ContextAction<Object>, QuitAction {
        private static final int EVAL_INLINE_SCRIPT = 2;
        private static final int PROCESS_FILES = 1;
        private static final int SYSTEM_EXIT = 3;
        public String[] args;
        public String scriptText;
        private int type;

        public IProxy(int i) {
            this.type = i;
        }

        @Override // org.mozilla.javascript.tools.shell.QuitAction
        public void quit(Context context, int i) {
            if (this.type != 3) {
                throw Kit.codeBug();
            }
            System.exit(i);
        }

        @Override // org.mozilla.javascript.ContextAction
        public Object run(Context context) {
            if (Main.useRequire) {
                Main.require = Main.global.installRequire(context, Main.modulePath, Main.sandboxed);
            }
            int i = this.type;
            if (i == 1) {
                Main.processFiles(context, this.args);
                return null;
            }
            if (i != 2) {
                throw Kit.codeBug();
            }
            Main.evalInlineScript(context, this.scriptText);
            return null;
        }
    }

    public static class ScriptCache extends LinkedHashMap<String, ScriptReference> {
        public int capacity;
        public ReferenceQueue<Script> queue;

        public ScriptCache(int i) {
            super(i + 1, 2.0f, true);
            this.capacity = i;
            this.queue = new ReferenceQueue<>();
        }

        public ScriptReference get(String str, byte[] bArr) {
            while (true) {
                ScriptReference scriptReference = (ScriptReference) this.queue.poll();
                if (scriptReference == null) {
                    break;
                }
                remove(scriptReference.path);
            }
            ScriptReference scriptReference2 = get(str);
            if (scriptReference2 == null || Arrays.equals(bArr, scriptReference2.digest)) {
                return scriptReference2;
            }
            remove(scriptReference2.path);
            return null;
        }

        public void put(String str, byte[] bArr, Script script) {
            put(str, new ScriptReference(str, bArr, script, this.queue));
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<String, ScriptReference> entry) {
            return size() > this.capacity;
        }
    }

    public static class ScriptReference extends SoftReference<Script> {
        public byte[] digest;
        public String path;

        public ScriptReference(String str, byte[] bArr, Script script, ReferenceQueue<Script> referenceQueue) {
            super(script, referenceQueue);
            this.path = str;
            this.digest = bArr;
        }
    }

    static {
        global.initQuitAction(new IProxy(3));
    }

    public static void evalInlineScript(Context context, String str) {
        try {
            Script scriptCompileString = context.compileString(str, "<command>", 1, null);
            if (scriptCompileString != null) {
                scriptCompileString.exec(context, getShellScope());
            }
        } catch (VirtualMachineError e) {
            e.printStackTrace();
            Context.reportError(ToolErrorReporter.getMessage("msg.uncaughtJSException", e.toString()));
            exitCode = 3;
        } catch (RhinoException e2) {
            ToolErrorReporter.reportException(context.getErrorReporter(), e2);
            exitCode = 3;
        }
    }

    public static int exec(String[] strArr) throws NumberFormatException {
        ToolErrorReporter toolErrorReporter = new ToolErrorReporter(false, global.getErr());
        errorReporter = toolErrorReporter;
        shellContextFactory.setErrorReporter(toolErrorReporter);
        String[] strArrProcessOptions = processOptions(strArr);
        int i = exitCode;
        if (i > 0) {
            return i;
        }
        if (processStdin) {
            fileList.add(null);
        }
        Global global2 = global;
        if (!global2.initialized) {
            global2.init(shellContextFactory);
        }
        IProxy iProxy = new IProxy(1);
        iProxy.args = strArrProcessOptions;
        shellContextFactory.call(iProxy);
        return exitCode;
    }

    private static byte[] getDigest(Object obj) throws UnsupportedEncodingException {
        byte[] bytes;
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            try {
                bytes = ((String) obj).getBytes("UTF-8");
            } catch (UnsupportedEncodingException unused) {
                bytes = ((String) obj).getBytes();
            }
        } else {
            bytes = (byte[]) obj;
        }
        try {
            return MessageDigest.getInstance("MD5").digest(bytes);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public static PrintStream getErr() {
        return getGlobal().getErr();
    }

    public static Global getGlobal() {
        return global;
    }

    public static InputStream getIn() {
        return getGlobal().getIn();
    }

    public static PrintStream getOut() {
        return getGlobal().getOut();
    }

    public static Scriptable getScope(String str) {
        URI uri;
        if (!useRequire) {
            return global;
        }
        if (str == null) {
            uri = new File(System.getProperty("user.dir")).toURI();
        } else if (SourceReader.toUrl(str) != null) {
            try {
                uri = new URI(str);
            } catch (URISyntaxException unused) {
                uri = new File(str).toURI();
            }
        } else {
            uri = new File(str).toURI();
        }
        return new ModuleScope(global, uri, null);
    }

    public static Scriptable getShellScope() {
        return getScope(null);
    }

    private static void initJavaPolicySecuritySupport() {
        try {
            SecurityProxy securityProxy = (SecurityProxy) JavaPolicySecurity.class.newInstance();
            securityImpl = securityProxy;
            SecurityController.initGlobal(securityProxy);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | LinkageError e) {
            throw new IllegalStateException("Can not load security support: " + e, e);
        }
    }

    private static Script loadCompiledScript(Context context, String str, byte[] bArr, Object obj) throws FileNotFoundException {
        if (bArr == null) {
            throw new FileNotFoundException(str);
        }
        int iLastIndexOf = str.lastIndexOf(47);
        int i = iLastIndexOf < 0 ? 0 : iLastIndexOf + 1;
        int iLastIndexOf2 = str.lastIndexOf(46);
        if (iLastIndexOf2 < i) {
            iLastIndexOf2 = str.length();
        }
        String strSubstring = str.substring(i, iLastIndexOf2);
        try {
            GeneratedClassLoader generatedClassLoaderCreateLoader = SecurityController.createLoader(context.getApplicationClassLoader(), obj);
            Class<?> clsDefineClass = generatedClassLoaderCreateLoader.defineClass(strSubstring, bArr);
            generatedClassLoaderCreateLoader.linkClass(clsDefineClass);
            if (Script.class.isAssignableFrom(clsDefineClass)) {
                return (Script) clsDefineClass.newInstance();
            }
            throw Context.reportRuntimeError("msg.must.implement.Script");
        } catch (IllegalAccessException e) {
            Context.reportError(e.toString());
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            Context.reportError(e2.toString());
            throw new RuntimeException(e2);
        }
    }

    public static void main(String[] strArr) throws NumberFormatException {
        try {
            if (Boolean.getBoolean("rhino.use_java_policy_security")) {
                initJavaPolicySecuritySupport();
            }
        } catch (SecurityException e) {
            e.printStackTrace(System.err);
        }
        int iExec = exec(strArr);
        if (iExec != 0) {
            System.exit(iExec);
        }
    }

    public static void processFile(Context context, Scriptable scriptable, String str) throws IOException {
        SecurityProxy securityProxy = securityImpl;
        if (securityProxy == null) {
            processFileSecure(context, scriptable, str, null);
        } else {
            securityProxy.callProcessFileSecure(context, scriptable, str);
        }
    }

    public static void processFileNoThrow(Context context, Scriptable scriptable, String str) {
        try {
            processFile(context, scriptable, str);
        } catch (IOException e) {
            Context.reportError(ToolErrorReporter.getMessage("msg.couldnt.read.source", str, e.getMessage()));
            exitCode = 4;
        } catch (VirtualMachineError e2) {
            e2.printStackTrace();
            Context.reportError(ToolErrorReporter.getMessage("msg.uncaughtJSException", e2.toString()));
            exitCode = 3;
        } catch (RhinoException e3) {
            ToolErrorReporter.reportException(context.getErrorReporter(), e3);
            exitCode = 3;
        }
    }

    public static void processFileSecure(Context context, Scriptable scriptable, String str, Object obj) throws IOException {
        Script scriptCompileString;
        boolean zEndsWith = str.endsWith(".class");
        Object fileOrUrl = readFileOrUrl(str, !zEndsWith);
        byte[] digest = getDigest(fileOrUrl);
        String str2 = str + "_" + context.getOptimizationLevel();
        ScriptReference scriptReference = scriptCache.get(str2, digest);
        Script script = scriptReference != null ? scriptReference.get() : null;
        if (script == null) {
            if (zEndsWith) {
                scriptCompileString = loadCompiledScript(context, str, (byte[]) fileOrUrl, obj);
            } else {
                String strSubstring = (String) fileOrUrl;
                if (strSubstring.length() > 0 && strSubstring.charAt(0) == '#') {
                    for (int i = 1; i != strSubstring.length(); i++) {
                        char cCharAt = strSubstring.charAt(i);
                        if (cCharAt == '\n' || cCharAt == '\r') {
                            strSubstring = strSubstring.substring(i);
                            break;
                        }
                    }
                }
                scriptCompileString = context.compileString(strSubstring, str, 1, obj);
            }
            script = scriptCompileString;
            scriptCache.put(str2, digest, script);
        }
        if (script != null) {
            script.exec(context, scriptable);
        }
    }

    public static void processFiles(Context context, String[] strArr) {
        Object[] objArr = new Object[strArr.length];
        System.arraycopy(strArr, 0, objArr, 0, strArr.length);
        global.defineProperty("arguments", context.newArray(global, objArr), 2);
        for (String str : fileList) {
            try {
                processSource(context, str);
            } catch (IOException e) {
                Context.reportError(ToolErrorReporter.getMessage("msg.couldnt.read.source", str, e.getMessage()));
                exitCode = 4;
            } catch (VirtualMachineError e2) {
                e2.printStackTrace();
                Context.reportError(ToolErrorReporter.getMessage("msg.uncaughtJSException", e2.toString()));
                exitCode = 3;
            } catch (RhinoException e3) {
                ToolErrorReporter.reportException(context.getErrorReporter(), e3);
                exitCode = 3;
            }
        }
    }

    public static String[] processOptions(String[] strArr) throws NumberFormatException {
        int i = 0;
        while (i != strArr.length) {
            String str = strArr[i];
            if (!str.startsWith("-")) {
                processStdin = false;
                fileList.add(str);
                mainModule = str;
                String[] strArr2 = new String[(strArr.length - i) - 1];
                System.arraycopy(strArr, i + 1, strArr2, 0, (strArr.length - i) - 1);
                return strArr2;
            }
            if (str.equals("-version")) {
                i++;
                if (i != strArr.length) {
                    try {
                        int i2 = Integer.parseInt(strArr[i]);
                        if (Context.isValidLanguageVersion(i2)) {
                            shellContextFactory.setLanguageVersion(i2);
                            i++;
                        } else {
                            str = strArr[i];
                        }
                    } catch (NumberFormatException unused) {
                        str = strArr[i];
                    }
                }
                global.getOut().println(ToolErrorReporter.getMessage("msg.shell.invalid", str));
                global.getOut().println(ToolErrorReporter.getMessage("msg.shell.usage", Main.class.getName()));
                exitCode = 1;
                return null;
            }
            if (str.equals("-opt") || str.equals("-O")) {
                i++;
                if (i != strArr.length) {
                    try {
                        int i3 = Integer.parseInt(strArr[i]);
                        if (i3 == -2) {
                            i3 = -1;
                        } else if (!Context.isValidOptimizationLevel(i3)) {
                            str = strArr[i];
                        }
                        shellContextFactory.setOptimizationLevel(i3);
                        i++;
                    } catch (NumberFormatException unused2) {
                        str = strArr[i];
                    }
                }
                global.getOut().println(ToolErrorReporter.getMessage("msg.shell.invalid", str));
                global.getOut().println(ToolErrorReporter.getMessage("msg.shell.usage", Main.class.getName()));
                exitCode = 1;
                return null;
            }
            if (str.equals("-encoding")) {
                i++;
                if (i == strArr.length) {
                    global.getOut().println(ToolErrorReporter.getMessage("msg.shell.invalid", str));
                    global.getOut().println(ToolErrorReporter.getMessage("msg.shell.usage", Main.class.getName()));
                    exitCode = 1;
                    return null;
                }
                shellContextFactory.setCharacterEncoding(strArr[i]);
                i++;
            } else {
                if (str.equals("-strict")) {
                    shellContextFactory.setStrictMode(true);
                    shellContextFactory.setAllowReservedKeywords(false);
                    errorReporter.setIsReportingWarnings(true);
                } else if (str.equals("-fatal-warnings")) {
                    shellContextFactory.setWarningAsError(true);
                } else if (str.equals("-e")) {
                    processStdin = false;
                    i++;
                    if (i == strArr.length) {
                        global.getOut().println(ToolErrorReporter.getMessage("msg.shell.invalid", str));
                        global.getOut().println(ToolErrorReporter.getMessage("msg.shell.usage", Main.class.getName()));
                        exitCode = 1;
                        return null;
                    }
                    Global global2 = global;
                    if (!global2.initialized) {
                        global2.init(shellContextFactory);
                    }
                    IProxy iProxy = new IProxy(2);
                    iProxy.scriptText = strArr[i];
                    shellContextFactory.call(iProxy);
                } else if (str.equals("-require")) {
                    useRequire = true;
                } else if (str.equals("-sandbox")) {
                    sandboxed = true;
                    useRequire = true;
                } else if (str.equals("-modules")) {
                    i++;
                    if (i == strArr.length) {
                        global.getOut().println(ToolErrorReporter.getMessage("msg.shell.invalid", str));
                        global.getOut().println(ToolErrorReporter.getMessage("msg.shell.usage", Main.class.getName()));
                        exitCode = 1;
                        return null;
                    }
                    if (modulePath == null) {
                        modulePath = new ArrayList();
                    }
                    modulePath.add(strArr[i]);
                    useRequire = true;
                } else if (str.equals("-w")) {
                    errorReporter.setIsReportingWarnings(true);
                } else if (str.equals("-f")) {
                    processStdin = false;
                    i++;
                    if (i == strArr.length) {
                        global.getOut().println(ToolErrorReporter.getMessage("msg.shell.invalid", str));
                        global.getOut().println(ToolErrorReporter.getMessage("msg.shell.usage", Main.class.getName()));
                        exitCode = 1;
                        return null;
                    }
                    if (strArr[i].equals("-")) {
                        fileList.add(null);
                    } else {
                        fileList.add(strArr[i]);
                        mainModule = strArr[i];
                    }
                } else if (str.equals("-sealedlib")) {
                    global.setSealedStdLib(true);
                } else {
                    if (!str.equals("-debug")) {
                        if (str.equals("-?") || str.equals("-help")) {
                            global.getOut().println(ToolErrorReporter.getMessage("msg.shell.usage", Main.class.getName()));
                            exitCode = 1;
                            return null;
                        }
                        global.getOut().println(ToolErrorReporter.getMessage("msg.shell.invalid", str));
                        global.getOut().println(ToolErrorReporter.getMessage("msg.shell.usage", Main.class.getName()));
                        exitCode = 1;
                        return null;
                    }
                    shellContextFactory.setGeneratingDebug(true);
                }
                i++;
            }
        }
        return new String[0];
    }

    public static void processSource(Context context, String str) throws IOException {
        if (str != null && !str.equals("-")) {
            if (useRequire && str.equals(mainModule)) {
                require.requireMain(context, str);
                return;
            } else {
                processFile(context, getScope(str), str);
                return;
            }
        }
        Scriptable shellScope = getShellScope();
        String characterEncoding = shellContextFactory.getCharacterEncoding();
        ShellConsole console = global.getConsole(characterEncoding != null ? Charset.forName(characterEncoding) : Charset.defaultCharset());
        if (str == null) {
            console.println(context.getImplementationVersion());
        }
        boolean z = false;
        int i = 1;
        while (!z) {
            String[] prompts = global.getPrompts(context);
            String str2 = str == null ? prompts[0] : null;
            console.flush();
            String str3 = "";
            while (true) {
                try {
                    String line = console.readLine(str2);
                    if (line == null) {
                        z = true;
                        break;
                    }
                    str3 = str3 + line + "\n";
                    i++;
                    if (context.stringIsCompilableUnit(str3)) {
                        break;
                    } else {
                        str2 = prompts[1];
                    }
                } catch (IOException e) {
                    console.println(e.toString());
                }
            }
            try {
                try {
                    Script scriptCompileString = context.compileString(str3, "<stdin>", i, null);
                    if (scriptCompileString != null) {
                        Object objExec = scriptCompileString.exec(context, shellScope);
                        if (objExec != Context.getUndefinedValue() && (!(objExec instanceof Function) || !str3.trim().startsWith("function"))) {
                            try {
                                console.println(Context.toString(objExec));
                            } catch (RhinoException e2) {
                                ToolErrorReporter.reportException(context.getErrorReporter(), e2);
                            }
                        }
                        NativeArray nativeArray = global.history;
                        nativeArray.put((int) nativeArray.getLength(), nativeArray, str3);
                    }
                } catch (RhinoException e3) {
                    ToolErrorReporter.reportException(context.getErrorReporter(), e3);
                    exitCode = 3;
                }
            } catch (VirtualMachineError e4) {
                e4.printStackTrace();
                Context.reportError(ToolErrorReporter.getMessage("msg.uncaughtJSException", e4.toString()));
                exitCode = 3;
            }
        }
        console.println();
        console.flush();
    }

    private static Object readFileOrUrl(String str, boolean z) throws IOException {
        return SourceReader.readFileOrUrl(str, z, shellContextFactory.getCharacterEncoding());
    }

    public static void setErr(PrintStream printStream) {
        getGlobal().setErr(printStream);
    }

    public static void setIn(InputStream inputStream) {
        getGlobal().setIn(inputStream);
    }

    public static void setOut(PrintStream printStream) {
        getGlobal().setOut(printStream);
    }
}
