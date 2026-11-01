package com.sun.script.javascript;

import com.alibaba.fastjson.support.spring.FastJsonJsonView;
import com.sun.script.util.ScriptEngineFactoryBase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.script.ScriptEngine;

/* loaded from: classes2.dex */
public class RhinoScriptEngineFactory extends ScriptEngineFactoryBase {
    private static List<String> extensions;
    private static List<String> mimeTypes;
    private static List<String> names;

    static {
        ArrayList arrayList = new ArrayList(6);
        names = arrayList;
        arrayList.add("js");
        names.add("rhino");
        names.add("mozilla.rhino");
        names.add("javascript");
        names.add("ECMAScript");
        names.add("ecmascript");
        names = Collections.unmodifiableList(names);
        ArrayList arrayList2 = new ArrayList(4);
        mimeTypes = arrayList2;
        arrayList2.add(FastJsonJsonView.DEFAULT_JSONP_CONTENT_TYPE);
        mimeTypes.add("application/ecmascript");
        mimeTypes.add("text/javascript");
        mimeTypes.add("text/ecmascript");
        mimeTypes = Collections.unmodifiableList(mimeTypes);
        ArrayList arrayList3 = new ArrayList(1);
        extensions = arrayList3;
        arrayList3.add("js");
        extensions = Collections.unmodifiableList(extensions);
    }

    @Override // javax.script.ScriptEngineFactory
    public List<String> getExtensions() {
        return extensions;
    }

    @Override // javax.script.ScriptEngineFactory
    public String getMethodCallSyntax(String str, String str2, String... strArr) {
        String str3 = str + "." + str2 + "(";
        int length = strArr.length;
        if (length == 0) {
            return str3 + ")";
        }
        for (int i = 0; i < length; i++) {
            String str4 = str3 + strArr[i];
            str3 = i != length - 1 ? str4 + "," : str4 + ")";
        }
        return str3;
    }

    @Override // javax.script.ScriptEngineFactory
    public List<String> getMimeTypes() {
        return mimeTypes;
    }

    @Override // javax.script.ScriptEngineFactory
    public List<String> getNames() {
        return names;
    }

    @Override // javax.script.ScriptEngineFactory
    public String getOutputStatement(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        stringBuffer.append("print(\"");
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"') {
                stringBuffer.append("\\\"");
            } else if (cCharAt != '\\') {
                stringBuffer.append(cCharAt);
            } else {
                stringBuffer.append("\\\\");
            }
        }
        stringBuffer.append("\")");
        return stringBuffer.toString();
    }

    @Override // javax.script.ScriptEngineFactory
    public Object getParameter(String str) {
        if (str.equals(ScriptEngine.NAME)) {
            return "javascript";
        }
        if (str.equals(ScriptEngine.ENGINE)) {
            return "Mozilla Rhino";
        }
        if (str.equals(ScriptEngine.ENGINE_VERSION)) {
            return "1.7.7";
        }
        if (str.equals(ScriptEngine.LANGUAGE)) {
            return "ECMAScript";
        }
        if (str.equals(ScriptEngine.LANGUAGE_VERSION)) {
            return "1.8";
        }
        if (str.equals("THREADING")) {
            return "MULTITHREADED";
        }
        throw new IllegalArgumentException("Invalid key");
    }

    @Override // javax.script.ScriptEngineFactory
    public String getProgram(String... strArr) {
        String str = "";
        for (String str2 : strArr) {
            str = str + str2 + ";";
        }
        return str;
    }

    @Override // javax.script.ScriptEngineFactory
    public ScriptEngine getScriptEngine() {
        RhinoScriptEngine rhinoScriptEngine = new RhinoScriptEngine();
        rhinoScriptEngine.setEngineFactory(this);
        return rhinoScriptEngine;
    }
}
