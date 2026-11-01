package org.mozilla.javascript.optimizer;

import androidx.core.app.NotificationCompat;
import freemarker.core.k;
import java.util.HashMap;
import java.util.List;
import org.mozilla.classfile.Cfor;
import org.mozilla.javascript.CompilerEnvirons;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Evaluator;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.GeneratedClassLoader;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.NativeFunction;
import org.mozilla.javascript.ObjArray;
import org.mozilla.javascript.ObjToIntMap;
import org.mozilla.javascript.RhinoException;
import org.mozilla.javascript.Script;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.SecurityController;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.Name;
import org.mozilla.javascript.ast.ScriptNode;
import org.mozilla.javascript.optimizer.OptRuntime;

/* loaded from: classes3.dex */
public class Codegen implements Evaluator {
    public static final String DEFAULT_MAIN_METHOD_CLASS = "org.mozilla.javascript.optimizer.OptRuntime";
    public static final String FUNCTION_CONSTRUCTOR_SIGNATURE = "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V";
    public static final String FUNCTION_INIT_SIGNATURE = "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V";
    public static final String ID_FIELD_NAME = "_id";
    public static final String REGEXP_INIT_METHOD_NAME = "_reInit";
    public static final String REGEXP_INIT_METHOD_SIGNATURE = "(Lorg/mozilla/javascript/Context;)V";
    private static final String SUPER_CLASS_NAME = "org.mozilla.javascript.NativeFunction";
    private static final Object globalLock = new Object();
    private static int globalSerialClassCounter;
    private CompilerEnvirons compilerEnv;
    private ObjArray directCallTargets;
    private double[] itsConstantList;
    private int itsConstantListSize;
    public String mainClassName;
    public String mainClassSignature;
    private String mainMethodClass = DEFAULT_MAIN_METHOD_CLASS;
    private ObjToIntMap scriptOrFnIndexes;
    public ScriptNode[] scriptOrFnNodes;

    private static void addDoubleWrap(Cfor cfor) {
        cfor.m37821instanceof(184, "org/mozilla/javascript/optimizer/OptRuntime", "wrapDouble", "(D)Ljava/lang/Double;");
    }

    public static RuntimeException badTree() {
        throw new RuntimeException("Bad tree in codegen");
    }

    private static void collectScriptNodes_r(ScriptNode scriptNode, ObjArray objArray) {
        objArray.add(scriptNode);
        int functionCount = scriptNode.getFunctionCount();
        for (int i = 0; i != functionCount; i++) {
            collectScriptNodes_r(scriptNode.getFunctionNode(i), objArray);
        }
    }

    private Class<?> defineClass(Object obj, Object obj2) {
        Object[] objArr = (Object[]) obj;
        String str = (String) objArr[0];
        byte[] bArr = (byte[]) objArr[1];
        GeneratedClassLoader generatedClassLoaderCreateLoader = SecurityController.createLoader(getClass().getClassLoader(), obj2);
        try {
            Class<?> clsDefineClass = generatedClassLoaderCreateLoader.defineClass(str, bArr);
            generatedClassLoaderCreateLoader.linkClass(clsDefineClass);
            return clsDefineClass;
        } catch (IllegalArgumentException | SecurityException e) {
            throw new RuntimeException("Malformed optimizer package " + e);
        }
    }

    private void emitConstantDudeInitializers(Cfor cfor) throws RuntimeException {
        int i = this.itsConstantListSize;
        if (i == 0) {
            return;
        }
        cfor.d0("<clinit>", "()V", (short) 24);
        double[] dArr = this.itsConstantList;
        for (int i2 = 0; i2 != i; i2++) {
            double d = dArr[i2];
            String str = "_k" + i2;
            String staticConstantWrapperType = getStaticConstantWrapperType(d);
            cfor.m37815continue(str, staticConstantWrapperType, (short) 10);
            int i3 = (int) d;
            if (i3 == d) {
                cfor.l(i3);
                cfor.m37821instanceof(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
            } else {
                cfor.k(d);
                addDoubleWrap(cfor);
            }
            cfor.m37831switch(179, this.mainClassName, str, staticConstantWrapperType);
        }
        cfor.m37823native(177);
        cfor.e0((short) 0);
    }

    private void emitDirectConstructor(Cfor cfor, OptFunctionNode optFunctionNode) throws RuntimeException {
        cfor.d0(getDirectCtorName(optFunctionNode.fnode), getBodyMethodSignature(optFunctionNode.fnode), (short) 10);
        int paramCount = optFunctionNode.fnode.getParamCount();
        int i = (paramCount * 3) + 4;
        int i2 = i + 1;
        cfor.m37833throws(0);
        cfor.m37833throws(1);
        cfor.m37833throws(2);
        cfor.m37821instanceof(182, "org/mozilla/javascript/BaseFunction", "createObject", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
        cfor.m37816default(i2);
        cfor.m37833throws(0);
        cfor.m37833throws(1);
        cfor.m37833throws(2);
        cfor.m37833throws(i2);
        for (int i3 = 0; i3 < paramCount; i3++) {
            int i4 = i3 * 3;
            cfor.m37833throws(i4 + 4);
            cfor.m37817extends(i4 + 5);
        }
        cfor.m37833throws(i);
        cfor.m37821instanceof(184, this.mainClassName, getBodyMethodName(optFunctionNode.fnode), getBodyMethodSignature(optFunctionNode.fnode));
        int iM37820import = cfor.m37820import();
        cfor.m37823native(89);
        cfor.m37829static(193, "org/mozilla/javascript/Scriptable");
        cfor.m37827public(153, iM37820import);
        cfor.m37829static(192, "org/mozilla/javascript/Scriptable");
        cfor.m37823native(176);
        cfor.O(iM37820import);
        cfor.m37833throws(i2);
        cfor.m37823native(176);
        cfor.e0((short) (i2 + 1));
    }

    private void emitRegExpInit(Cfor cfor) throws RuntimeException {
        int i = 0;
        int i2 = 0;
        int regexpCount = 0;
        while (true) {
            ScriptNode[] scriptNodeArr = this.scriptOrFnNodes;
            if (i2 == scriptNodeArr.length) {
                break;
            }
            regexpCount += scriptNodeArr[i2].getRegexpCount();
            i2++;
        }
        if (regexpCount == 0) {
            return;
        }
        short s = 10;
        cfor.d0(REGEXP_INIT_METHOD_NAME, REGEXP_INIT_METHOD_SIGNATURE, (short) 10);
        cfor.m37815continue("_reInitDone", "Z", (short) 74);
        cfor.m37831switch(178, this.mainClassName, "_reInitDone", "Z");
        int iM37820import = cfor.m37820import();
        cfor.m37827public(153, iM37820import);
        cfor.m37823native(177);
        cfor.O(iM37820import);
        cfor.m37833throws(0);
        cfor.m37821instanceof(184, "org/mozilla/javascript/ScriptRuntime", "checkRegExpProxy", "(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;");
        cfor.m37816default(1);
        int i3 = 0;
        while (true) {
            ScriptNode[] scriptNodeArr2 = this.scriptOrFnNodes;
            if (i3 == scriptNodeArr2.length) {
                cfor.l(1);
                cfor.m37831switch(179, this.mainClassName, "_reInitDone", "Z");
                cfor.m37823native(177);
                cfor.e0((short) 2);
                return;
            }
            ScriptNode scriptNode = scriptNodeArr2[i3];
            int regexpCount2 = scriptNode.getRegexpCount();
            int i4 = 0;
            while (i4 != regexpCount2) {
                String compiledRegexpName = getCompiledRegexpName(scriptNode, i4);
                String regexpString = scriptNode.getRegexpString(i4);
                String regexpFlags = scriptNode.getRegexpFlags(i4);
                cfor.m37815continue(compiledRegexpName, "Ljava/lang/Object;", s);
                cfor.m37833throws(1);
                cfor.m37833throws(i);
                cfor.n(regexpString);
                if (regexpFlags == null) {
                    cfor.m37823native(1);
                } else {
                    cfor.n(regexpFlags);
                }
                cfor.m37821instanceof(185, "org/mozilla/javascript/RegExpProxy", "compileRegExp", "(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;");
                cfor.m37831switch(179, this.mainClassName, compiledRegexpName, "Ljava/lang/Object;");
                i4++;
                i = 0;
                s = 10;
            }
            i3++;
            i = 0;
            s = 10;
        }
    }

    private void generateCallMethod(Cfor cfor, boolean z) throws RuntimeException {
        int iR;
        int paramCount;
        cfor.d0(NotificationCompat.CATEGORY_CALL, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;", (short) 17);
        int iM37820import = cfor.m37820import();
        cfor.m37833throws(1);
        cfor.m37821instanceof(184, "org/mozilla/javascript/ScriptRuntime", "hasTopCall", "(Lorg/mozilla/javascript/Context;)Z");
        cfor.m37827public(154, iM37820import);
        cfor.m37833throws(0);
        cfor.m37833throws(1);
        cfor.m37833throws(2);
        cfor.m37833throws(3);
        cfor.m37833throws(4);
        cfor.o(z);
        cfor.m37821instanceof(184, "org/mozilla/javascript/ScriptRuntime", "doTopCall", "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;");
        cfor.m37823native(176);
        cfor.O(iM37820import);
        cfor.m37833throws(0);
        cfor.m37833throws(1);
        cfor.m37833throws(2);
        cfor.m37833throws(3);
        cfor.m37833throws(4);
        int length = this.scriptOrFnNodes.length;
        boolean z2 = 2 <= length;
        if (z2) {
            cfor.j();
            cfor.m37831switch(180, cfor.G(), "_id", OptRuntime.GeneratorState.resumptionPoint_TYPE);
            iR = cfor.r(1, length - 1);
        } else {
            iR = 0;
        }
        short sK = 0;
        for (int i = 0; i != length; i++) {
            ScriptNode scriptNode = this.scriptOrFnNodes[i];
            if (z2) {
                if (i == 0) {
                    cfor.S(iR);
                    sK = cfor.K();
                } else {
                    cfor.R(iR, i - 1, sK);
                }
            }
            if (scriptNode.getType() == 110) {
                OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode);
                if (optFunctionNode.isTargetOfDirectCall() && (paramCount = optFunctionNode.fnode.getParamCount()) != 0) {
                    for (int i2 = 0; i2 != paramCount; i2++) {
                        cfor.m37823native(190);
                        cfor.l(i2);
                        int iM37820import2 = cfor.m37820import();
                        int iM37820import3 = cfor.m37820import();
                        cfor.m37827public(164, iM37820import2);
                        cfor.m37833throws(4);
                        cfor.l(i2);
                        cfor.m37823native(50);
                        cfor.m37827public(167, iM37820import3);
                        cfor.O(iM37820import2);
                        pushUndefined(cfor);
                        cfor.O(iM37820import3);
                        cfor.v(-1);
                        cfor.k(0.0d);
                        cfor.m37833throws(4);
                    }
                }
            }
            cfor.m37821instanceof(184, this.mainClassName, getBodyMethodName(scriptNode), getBodyMethodSignature(scriptNode));
            cfor.m37823native(176);
        }
        cfor.e0((short) 5);
    }

    private byte[] generateCode(String str) throws RuntimeException {
        boolean z = true;
        boolean z2 = this.scriptOrFnNodes[0].getType() == 137;
        ScriptNode[] scriptNodeArr = this.scriptOrFnNodes;
        if (scriptNodeArr.length <= 1 && z2) {
            z = false;
        }
        boolean zIsInStrictMode = scriptNodeArr[0].isInStrictMode();
        Cfor cfor = new Cfor(this.mainClassName, SUPER_CLASS_NAME, this.compilerEnv.isGenerateDebugInfo() ? this.scriptOrFnNodes[0].getSourceName() : null);
        cfor.m37815continue("_id", OptRuntime.GeneratorState.resumptionPoint_TYPE, (short) 2);
        if (z) {
            generateFunctionConstructor(cfor);
        }
        if (z2) {
            cfor.m37819implements("org/mozilla/javascript/Script");
            generateScriptCtor(cfor);
            generateMain(cfor);
            generateExecute(cfor);
        }
        generateCallMethod(cfor, zIsInStrictMode);
        generateResumeGenerator(cfor);
        generateNativeFunctionOverrides(cfor, str);
        int length = this.scriptOrFnNodes.length;
        for (int i = 0; i != length; i++) {
            ScriptNode scriptNode = this.scriptOrFnNodes[i];
            BodyCodegen bodyCodegen = new BodyCodegen();
            bodyCodegen.cfw = cfor;
            bodyCodegen.codegen = this;
            bodyCodegen.compilerEnv = this.compilerEnv;
            bodyCodegen.scriptOrFn = scriptNode;
            bodyCodegen.scriptOrFnIndex = i;
            bodyCodegen.generateBodyCode();
            if (scriptNode.getType() == 110) {
                OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode);
                generateFunctionInit(cfor, optFunctionNode);
                if (optFunctionNode.isTargetOfDirectCall()) {
                    emitDirectConstructor(cfor, optFunctionNode);
                }
            }
        }
        emitRegExpInit(cfor);
        emitConstantDudeInitializers(cfor);
        return cfor.f0();
    }

    private void generateExecute(Cfor cfor) throws RuntimeException {
        cfor.d0("exec", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;", (short) 17);
        cfor.j();
        cfor.m37833throws(1);
        cfor.m37833throws(2);
        cfor.m37823native(89);
        cfor.m37823native(1);
        cfor.m37821instanceof(182, cfor.G(), NotificationCompat.CATEGORY_CALL, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;");
        cfor.m37823native(176);
        cfor.e0((short) 3);
    }

    private void generateFunctionConstructor(Cfor cfor) throws RuntimeException {
        int iR;
        cfor.d0("<init>", FUNCTION_CONSTRUCTOR_SIGNATURE, (short) 1);
        short sK = 0;
        cfor.m37833throws(0);
        cfor.m37821instanceof(183, SUPER_CLASS_NAME, "<init>", "()V");
        cfor.j();
        cfor.m37826protected(3);
        cfor.m37831switch(181, cfor.G(), "_id", OptRuntime.GeneratorState.resumptionPoint_TYPE);
        cfor.j();
        cfor.m37833throws(2);
        cfor.m37833throws(1);
        int i = this.scriptOrFnNodes[0].getType() == 137 ? 1 : 0;
        int length = this.scriptOrFnNodes.length;
        if (i == length) {
            throw badTree();
        }
        boolean z = 2 <= length - i;
        if (z) {
            cfor.m37826protected(3);
            iR = cfor.r(i + 1, length - 1);
        } else {
            iR = 0;
        }
        for (int i2 = i; i2 != length; i2++) {
            if (z) {
                if (i2 == i) {
                    cfor.S(iR);
                    sK = cfor.K();
                } else {
                    cfor.R(iR, (i2 - 1) - i, sK);
                }
            }
            cfor.m37821instanceof(183, this.mainClassName, getFunctionInitMethodName(OptFunctionNode.get(this.scriptOrFnNodes[i2])), FUNCTION_INIT_SIGNATURE);
            cfor.m37823native(177);
        }
        cfor.e0((short) 4);
    }

    private void generateFunctionInit(Cfor cfor, OptFunctionNode optFunctionNode) throws RuntimeException {
        cfor.d0(getFunctionInitMethodName(optFunctionNode), FUNCTION_INIT_SIGNATURE, (short) 18);
        cfor.j();
        cfor.m37833throws(1);
        cfor.m37833throws(2);
        cfor.m37821instanceof(182, "org/mozilla/javascript/NativeFunction", "initScriptFunction", FUNCTION_INIT_SIGNATURE);
        if (optFunctionNode.fnode.getRegexpCount() != 0) {
            cfor.m37833throws(1);
            cfor.m37821instanceof(184, this.mainClassName, REGEXP_INIT_METHOD_NAME, REGEXP_INIT_METHOD_SIGNATURE);
        }
        cfor.m37823native(177);
        cfor.e0((short) 3);
    }

    private void generateMain(Cfor cfor) throws RuntimeException {
        cfor.d0(k.f23949while, "([Ljava/lang/String;)V", (short) 9);
        cfor.m37829static(187, cfor.G());
        cfor.m37823native(89);
        cfor.m37821instanceof(183, cfor.G(), "<init>", "()V");
        cfor.m37823native(42);
        cfor.m37821instanceof(184, this.mainMethodClass, k.f23949while, "(Lorg/mozilla/javascript/Script;[Ljava/lang/String;)V");
        cfor.m37823native(177);
        cfor.e0((short) 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void generateNativeFunctionOverrides(Cfor cfor, String str) throws RuntimeException {
        short s;
        int length;
        int iR;
        int i;
        short s2 = 1;
        cfor.d0("getLanguageVersion", "()I", (short) 1);
        cfor.l(this.compilerEnv.getLanguageVersion());
        cfor.m37823native(172);
        cfor.e0((short) 1);
        int i2 = 0;
        while (i2 != 6) {
            int i3 = 4;
            if (i2 != 4 || str != null) {
                int i4 = 5;
                int i5 = 2;
                int i6 = 3;
                if (i2 == 0) {
                    cfor.d0("getFunctionName", "()Ljava/lang/String;", s2);
                } else if (i2 == s2) {
                    cfor.d0("getParamCount", "()I", s2);
                } else if (i2 != 2) {
                    if (i2 == 3) {
                        cfor.d0("getParamOrVarName", "(I)Ljava/lang/String;", s2);
                        s = 2;
                    } else if (i2 == 4) {
                        cfor.d0("getEncodedSource", "()Ljava/lang/String;", s2);
                        cfor.n(str);
                    } else {
                        if (i2 != 5) {
                            throw Kit.codeBug();
                        }
                        cfor.d0("getParamOrVarConst", "(I)Z", s2);
                        s = 3;
                    }
                    length = this.scriptOrFnNodes.length;
                    if (length <= s2) {
                        cfor.j();
                        cfor.m37831switch(180, cfor.G(), "_id", OptRuntime.GeneratorState.resumptionPoint_TYPE);
                        iR = cfor.r(s2, length - 1);
                    } else {
                        iR = 0;
                    }
                    short sK = 0;
                    i = 0;
                    while (i != length) {
                        ScriptNode scriptNode = this.scriptOrFnNodes[i];
                        if (i != 0) {
                            cfor.R(iR, i - 1, sK);
                        } else if (length > s2) {
                            cfor.S(iR);
                            sK = cfor.K();
                        }
                        if (i2 == 0) {
                            if (scriptNode.getType() == 137) {
                                cfor.n("");
                            } else {
                                cfor.n(((FunctionNode) scriptNode).getName());
                            }
                            cfor.m37823native(176);
                        } else if (i2 == s2) {
                            cfor.l(scriptNode.getParamCount());
                            cfor.m37823native(172);
                        } else if (i2 == i5) {
                            cfor.l(scriptNode.getParamAndVarCount());
                            cfor.m37823native(172);
                        } else if (i2 == i6) {
                            int paramAndVarCount = scriptNode.getParamAndVarCount();
                            if (paramAndVarCount == 0) {
                                cfor.m37823native(s2);
                                cfor.m37823native(176);
                            } else if (paramAndVarCount == s2) {
                                cfor.n(scriptNode.getParamOrVarName(0));
                                cfor.m37823native(176);
                            } else {
                                cfor.m37826protected(s2);
                                int iR2 = cfor.r(s2, paramAndVarCount - 1);
                                for (int i7 = 0; i7 != paramAndVarCount; i7++) {
                                    if (cfor.K() != 0) {
                                        Kit.codeBug();
                                    }
                                    String paramOrVarName = scriptNode.getParamOrVarName(i7);
                                    if (i7 == 0) {
                                        cfor.S(iR2);
                                    } else {
                                        cfor.R(iR2, i7 - 1, 0);
                                    }
                                    cfor.n(paramOrVarName);
                                    cfor.m37823native(176);
                                }
                            }
                        } else if (i2 == i3) {
                            cfor.l(scriptNode.getEncodedSourceStart());
                            cfor.l(scriptNode.getEncodedSourceEnd());
                            cfor.m37821instanceof(182, "java/lang/String", "substring", "(II)Ljava/lang/String;");
                            cfor.m37823native(176);
                        } else {
                            if (i2 != i4) {
                                throw Kit.codeBug();
                            }
                            int paramAndVarCount2 = scriptNode.getParamAndVarCount();
                            boolean[] paramAndVarConst = scriptNode.getParamAndVarConst();
                            if (paramAndVarCount2 == 0) {
                                cfor.m37823native(i6);
                                cfor.m37823native(172);
                            } else if (paramAndVarCount2 == s2) {
                                cfor.o(paramAndVarConst[0]);
                                cfor.m37823native(172);
                            } else {
                                cfor.m37826protected(s2);
                                int iR3 = cfor.r(s2, paramAndVarCount2 - 1);
                                for (int i8 = 0; i8 != paramAndVarCount2; i8++) {
                                    if (cfor.K() != 0) {
                                        Kit.codeBug();
                                    }
                                    if (i8 == 0) {
                                        cfor.S(iR3);
                                    } else {
                                        cfor.R(iR3, i8 - 1, 0);
                                    }
                                    cfor.o(paramAndVarConst[i8]);
                                    cfor.m37823native(172);
                                }
                            }
                        }
                        i++;
                        s2 = 1;
                        i3 = 4;
                        i4 = 5;
                        i5 = 2;
                        i6 = 3;
                    }
                    cfor.e0(s);
                } else {
                    cfor.d0("getParamAndVarCount", "()I", s2);
                }
                s = 1;
                length = this.scriptOrFnNodes.length;
                if (length <= s2) {
                }
                short sK2 = 0;
                i = 0;
                while (i != length) {
                }
                cfor.e0(s);
            }
            i2++;
            s2 = 1;
        }
    }

    private void generateResumeGenerator(Cfor cfor) throws RuntimeException {
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (true) {
            ScriptNode[] scriptNodeArr = this.scriptOrFnNodes;
            if (i2 >= scriptNodeArr.length) {
                break;
            }
            if (isGenerator(scriptNodeArr[i2])) {
                z = true;
            }
            i2++;
        }
        if (!z) {
            return;
        }
        cfor.d0("resumeGenerator", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", (short) 17);
        cfor.m37833throws(0);
        cfor.m37833throws(1);
        cfor.m37833throws(2);
        cfor.m37833throws(4);
        cfor.m37833throws(5);
        cfor.m37826protected(3);
        cfor.j();
        cfor.m37831switch(180, cfor.G(), "_id", OptRuntime.GeneratorState.resumptionPoint_TYPE);
        int iR = cfor.r(0, this.scriptOrFnNodes.length - 1);
        cfor.S(iR);
        int iM37820import = cfor.m37820import();
        while (true) {
            ScriptNode[] scriptNodeArr2 = this.scriptOrFnNodes;
            if (i >= scriptNodeArr2.length) {
                cfor.O(iM37820import);
                pushUndefined(cfor);
                cfor.m37823native(176);
                cfor.e0((short) 6);
                return;
            }
            ScriptNode scriptNode = scriptNodeArr2[i];
            cfor.R(iR, i, 6);
            if (isGenerator(scriptNode)) {
                String str = "(" + this.mainClassSignature + "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;";
                cfor.m37821instanceof(184, this.mainClassName, getBodyMethodName(scriptNode) + "_gen", str);
                cfor.m37823native(176);
            } else {
                cfor.m37827public(167, iM37820import);
            }
            i++;
        }
    }

    private void generateScriptCtor(Cfor cfor) throws RuntimeException {
        cfor.d0("<init>", "()V", (short) 1);
        cfor.j();
        cfor.m37821instanceof(183, SUPER_CLASS_NAME, "<init>", "()V");
        cfor.j();
        cfor.l(0);
        cfor.m37831switch(181, cfor.G(), "_id", OptRuntime.GeneratorState.resumptionPoint_TYPE);
        cfor.m37823native(177);
        cfor.e0((short) 1);
    }

    private static String getStaticConstantWrapperType(double d) {
        return ((double) ((int) d)) == d ? "Ljava/lang/Integer;" : "Ljava/lang/Double;";
    }

    private static void initOptFunctions_r(ScriptNode scriptNode) {
        int functionCount = scriptNode.getFunctionCount();
        for (int i = 0; i != functionCount; i++) {
            FunctionNode functionNode = scriptNode.getFunctionNode(i);
            new OptFunctionNode(functionNode);
            initOptFunctions_r(functionNode);
        }
    }

    private void initScriptNodesData(ScriptNode scriptNode) {
        ObjArray objArray = new ObjArray();
        collectScriptNodes_r(scriptNode, objArray);
        int size = objArray.size();
        ScriptNode[] scriptNodeArr = new ScriptNode[size];
        this.scriptOrFnNodes = scriptNodeArr;
        objArray.toArray(scriptNodeArr);
        this.scriptOrFnIndexes = new ObjToIntMap(size);
        for (int i = 0; i != size; i++) {
            this.scriptOrFnIndexes.put(this.scriptOrFnNodes[i], i);
        }
    }

    public static boolean isGenerator(ScriptNode scriptNode) {
        return scriptNode.getType() == 110 && ((FunctionNode) scriptNode).isGenerator();
    }

    public static void pushUndefined(Cfor cfor) {
        cfor.m37831switch(178, "org/mozilla/javascript/Undefined", "instance", "Ljava/lang/Object;");
    }

    private void transform(ScriptNode scriptNode) {
        initOptFunctions_r(scriptNode);
        int optimizationLevel = this.compilerEnv.getOptimizationLevel();
        HashMap map = null;
        if (optimizationLevel > 0 && scriptNode.getType() == 137) {
            int functionCount = scriptNode.getFunctionCount();
            for (int i = 0; i != functionCount; i++) {
                OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode, i);
                if (optFunctionNode.fnode.getFunctionType() == 1) {
                    String name = optFunctionNode.fnode.getName();
                    if (name.length() != 0) {
                        if (map == null) {
                            map = new HashMap();
                        }
                        map.put(name, optFunctionNode);
                    }
                }
            }
        }
        if (map != null) {
            this.directCallTargets = new ObjArray();
        }
        new OptTransformer(map, this.directCallTargets).transform(scriptNode, this.compilerEnv);
        if (optimizationLevel > 0) {
            new Optimizer().optimize(scriptNode);
        }
    }

    @Override // org.mozilla.javascript.Evaluator
    public void captureStackInfo(RhinoException rhinoException) {
        throw new UnsupportedOperationException();
    }

    public String cleanName(ScriptNode scriptNode) {
        if (!(scriptNode instanceof FunctionNode)) {
            return "script";
        }
        Name functionName = ((FunctionNode) scriptNode).getFunctionName();
        return functionName == null ? "anonymous" : functionName.getIdentifier();
    }

    @Override // org.mozilla.javascript.Evaluator
    public Object compile(CompilerEnvirons compilerEnvirons, ScriptNode scriptNode, String str, boolean z) {
        int i;
        synchronized (globalLock) {
            i = globalSerialClassCounter + 1;
            globalSerialClassCounter = i;
        }
        String strReplaceAll = "c";
        if (scriptNode.getSourceName().length() > 0) {
            strReplaceAll = scriptNode.getSourceName().replaceAll("\\W", "_");
            if (!Character.isJavaIdentifierStart(strReplaceAll.charAt(0))) {
                strReplaceAll = "_" + strReplaceAll;
            }
        }
        String str2 = "org.mozilla.javascript.gen." + strReplaceAll + "_" + i;
        return new Object[]{str2, compileToClassFile(compilerEnvirons, str2, scriptNode, str, z)};
    }

    public byte[] compileToClassFile(CompilerEnvirons compilerEnvirons, String str, ScriptNode scriptNode, String str2, boolean z) {
        this.compilerEnv = compilerEnvirons;
        transform(scriptNode);
        if (z) {
            scriptNode = scriptNode.getFunctionNode(0);
        }
        initScriptNodesData(scriptNode);
        this.mainClassName = str;
        this.mainClassSignature = Cfor.A(str);
        return generateCode(str2);
    }

    @Override // org.mozilla.javascript.Evaluator
    public Function createFunctionObject(Context context, Scriptable scriptable, Object obj, Object obj2) {
        try {
            return (NativeFunction) defineClass(obj, obj2).getConstructors()[0].newInstance(scriptable, context, 0);
        } catch (Exception e) {
            throw new RuntimeException("Unable to instantiate compiled class:" + e.toString());
        }
    }

    @Override // org.mozilla.javascript.Evaluator
    public Script createScriptObject(Object obj, Object obj2) {
        try {
            return (Script) defineClass(obj, obj2).newInstance();
        } catch (Exception e) {
            throw new RuntimeException("Unable to instantiate compiled class:" + e.toString());
        }
    }

    public String getBodyMethodName(ScriptNode scriptNode) {
        return "_c_" + cleanName(scriptNode) + "_" + getIndex(scriptNode);
    }

    public String getBodyMethodSignature(ScriptNode scriptNode) {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        sb.append(this.mainClassSignature);
        sb.append("Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;");
        if (scriptNode.getType() == 110) {
            OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode);
            if (optFunctionNode.isTargetOfDirectCall()) {
                int paramCount = optFunctionNode.fnode.getParamCount();
                for (int i = 0; i != paramCount; i++) {
                    sb.append("Ljava/lang/Object;D");
                }
            }
        }
        sb.append("[Ljava/lang/Object;)Ljava/lang/Object;");
        return sb.toString();
    }

    public String getCompiledRegexpName(ScriptNode scriptNode, int i) {
        return "_re" + getIndex(scriptNode) + "_" + i;
    }

    public String getDirectCtorName(ScriptNode scriptNode) {
        return "_n" + getIndex(scriptNode);
    }

    public String getFunctionInitMethodName(OptFunctionNode optFunctionNode) {
        return "_i" + getIndex(optFunctionNode.fnode);
    }

    public int getIndex(ScriptNode scriptNode) {
        return this.scriptOrFnIndexes.getExisting(scriptNode);
    }

    @Override // org.mozilla.javascript.Evaluator
    public String getPatchedStack(RhinoException rhinoException, String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.mozilla.javascript.Evaluator
    public List<String> getScriptStack(RhinoException rhinoException) {
        throw new UnsupportedOperationException();
    }

    @Override // org.mozilla.javascript.Evaluator
    public String getSourcePositionFromStack(Context context, int[] iArr) {
        throw new UnsupportedOperationException();
    }

    public void pushNumberAsObject(Cfor cfor, double d) throws RuntimeException {
        if (d == 0.0d) {
            if (1.0d / d > 0.0d) {
                cfor.m37831switch(178, "org/mozilla/javascript/optimizer/OptRuntime", "zeroObj", "Ljava/lang/Double;");
                return;
            } else {
                cfor.k(d);
                addDoubleWrap(cfor);
                return;
            }
        }
        if (d == 1.0d) {
            cfor.m37831switch(178, "org/mozilla/javascript/optimizer/OptRuntime", "oneObj", "Ljava/lang/Double;");
            return;
        }
        if (d == -1.0d) {
            cfor.m37831switch(178, "org/mozilla/javascript/optimizer/OptRuntime", "minusOneObj", "Ljava/lang/Double;");
            return;
        }
        if (d != d) {
            cfor.m37831switch(178, "org/mozilla/javascript/ScriptRuntime", "NaNobj", "Ljava/lang/Double;");
            return;
        }
        int i = this.itsConstantListSize;
        if (i >= 2000) {
            cfor.k(d);
            addDoubleWrap(cfor);
            return;
        }
        int i2 = 0;
        if (i == 0) {
            this.itsConstantList = new double[64];
        } else {
            double[] dArr = this.itsConstantList;
            int i3 = 0;
            while (i3 != i && dArr[i3] != d) {
                i3++;
            }
            if (i == dArr.length) {
                double[] dArr2 = new double[i * 2];
                System.arraycopy(this.itsConstantList, 0, dArr2, 0, i);
                this.itsConstantList = dArr2;
            }
            i2 = i3;
        }
        if (i2 == i) {
            this.itsConstantList[i] = d;
            this.itsConstantListSize = i + 1;
        }
        cfor.m37831switch(178, this.mainClassName, "_k" + i2, getStaticConstantWrapperType(d));
    }

    @Override // org.mozilla.javascript.Evaluator
    public void setEvalScriptFlag(Script script) {
        throw new UnsupportedOperationException();
    }

    public void setMainMethodClass(String str) {
        this.mainMethodClass = str;
    }
}
