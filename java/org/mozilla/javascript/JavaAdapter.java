package org.mozilla.javascript;

import android.support.v4.ay0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.security.CodeSource;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;
import org.mozilla.classfile.Cfor;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.JavaAdapter;
import org.mozilla.javascript.ObjToIntMap;
import org.mozilla.javascript.optimizer.OptRuntime;

/* loaded from: classes3.dex */
public final class JavaAdapter implements IdFunctionCall {
    private static final Object FTAG = "JavaAdapter";
    private static final int Id_JavaAdapter = 1;

    public static class JavaAdapterSignature {
        public Class<?>[] interfaces;
        public ObjToIntMap names;
        public Class<?> superClass;

        public JavaAdapterSignature(Class<?> cls, Class<?>[] clsArr, ObjToIntMap objToIntMap) {
            this.superClass = cls;
            this.interfaces = clsArr;
            this.names = objToIntMap;
        }

        public boolean equals(Object obj) throws RuntimeException {
            if (!(obj instanceof JavaAdapterSignature)) {
                return false;
            }
            JavaAdapterSignature javaAdapterSignature = (JavaAdapterSignature) obj;
            if (this.superClass != javaAdapterSignature.superClass) {
                return false;
            }
            Class<?>[] clsArr = this.interfaces;
            Class<?>[] clsArr2 = javaAdapterSignature.interfaces;
            if (clsArr != clsArr2) {
                if (clsArr.length == clsArr2.length) {
                    int i = 0;
                    while (true) {
                        Class<?>[] clsArr3 = this.interfaces;
                        if (i >= clsArr3.length) {
                            break;
                        }
                        if (clsArr3[i] != javaAdapterSignature.interfaces[i]) {
                            return false;
                        }
                        i++;
                    }
                } else {
                    return false;
                }
            }
            if (this.names.size() != javaAdapterSignature.names.size()) {
                return false;
            }
            ObjToIntMap.Iterator iterator = new ObjToIntMap.Iterator(this.names);
            iterator.start();
            while (!iterator.done()) {
                String str = (String) iterator.getKey();
                int value = iterator.getValue();
                if (value != javaAdapterSignature.names.get(str, value + 1)) {
                    return false;
                }
                iterator.next();
            }
            return true;
        }

        public int hashCode() {
            return (this.superClass.hashCode() + Arrays.hashCode(this.interfaces)) ^ this.names.size();
        }
    }

    public static int appendMethodSignature(Class<?>[] clsArr, Class<?> cls, StringBuilder sb) {
        sb.append('(');
        int length = clsArr.length + 1;
        for (Class<?> cls2 : clsArr) {
            appendTypeString(sb, cls2);
            if (cls2 == Long.TYPE || cls2 == Double.TYPE) {
                length++;
            }
        }
        sb.append(')');
        appendTypeString(sb, cls);
        return length;
    }

    private static void appendOverridableMethods(Class<?> cls, ArrayList<Method> arrayList, HashSet<String> hashSet) throws SecurityException {
        Method[] declaredMethods = cls.getDeclaredMethods();
        for (int i = 0; i < declaredMethods.length; i++) {
            String str = declaredMethods[i].getName() + getMethodSignature(declaredMethods[i], declaredMethods[i].getParameterTypes());
            if (!hashSet.contains(str)) {
                int modifiers = declaredMethods[i].getModifiers();
                if (!Modifier.isStatic(modifiers)) {
                    if (Modifier.isFinal(modifiers)) {
                        hashSet.add(str);
                    } else if (Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers)) {
                        arrayList.add(declaredMethods[i]);
                        hashSet.add(str);
                    }
                }
            }
        }
    }

    private static StringBuilder appendTypeString(StringBuilder sb, Class<?> cls) {
        while (cls.isArray()) {
            sb.append('[');
            cls = cls.getComponentType();
        }
        if (cls.isPrimitive()) {
            sb.append(cls == Boolean.TYPE ? ay0.f286for : cls == Long.TYPE ? 'J' : Character.toUpperCase(cls.getName().charAt(0)));
        } else {
            sb.append(ay0.f288try);
            sb.append(cls.getName().replace(Ctry.f28883do, Attributes.InternalPrefix));
            sb.append(';');
        }
        return sb;
    }

    public static Object callMethod(ContextFactory contextFactory, final Scriptable scriptable, final Function function, final Object[] objArr, final long j) {
        if (function == null) {
            return null;
        }
        if (contextFactory == null) {
            contextFactory = ContextFactory.getGlobal();
        }
        final Scriptable parentScope = function.getParentScope();
        if (j == 0) {
            return Context.call(contextFactory, function, parentScope, scriptable, objArr);
        }
        Context currentContext = Context.getCurrentContext();
        return currentContext != null ? doCall(currentContext, parentScope, scriptable, function, objArr, j) : contextFactory.call(new ContextAction() { // from class: android.support.v4.fp0
            @Override // org.mozilla.javascript.ContextAction
            public final Object run(Context context) {
                return JavaAdapter.lambda$callMethod$0(parentScope, scriptable, function, objArr, j, context);
            }
        });
    }

    public static Object convertResult(Object obj, Class<?> cls) {
        if (obj != Undefined.instance || cls == ScriptRuntime.ObjectClass || cls == ScriptRuntime.StringClass) {
            return Context.jsToJava(obj, cls);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0178  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] createAdapterCode(ObjToIntMap objToIntMap, String str, Class<?> cls, Class<?>[] clsArr, String str2) throws NoSuchMethodException, RuntimeException {
        Method[] methodArr;
        int i;
        Method[] methodArr2;
        Cfor cfor = new Cfor(str, cls.getName(), "<adapter>");
        cfor.m37815continue("factory", "Lorg/mozilla/javascript/ContextFactory;", (short) 17);
        cfor.m37815continue("delegee", OptRuntime.GeneratorState.thisObj_TYPE, (short) 17);
        cfor.m37815continue("self", OptRuntime.GeneratorState.thisObj_TYPE, (short) 17);
        int length = clsArr == null ? 0 : clsArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (clsArr[i2] != null) {
                cfor.m37819implements(clsArr[i2].getName());
            }
        }
        String strReplace = cls.getName().replace(Ctry.f28883do, Attributes.InternalPrefix);
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            int modifiers = constructor.getModifiers();
            if (Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers)) {
                generateCtor(cfor, str, strReplace, constructor);
            }
        }
        generateSerialCtor(cfor, str, strReplace);
        if (str2 != null) {
            generateEmptyCtor(cfor, str, strReplace, str2);
        }
        ObjToIntMap objToIntMap2 = new ObjToIntMap();
        ObjToIntMap objToIntMap3 = new ObjToIntMap();
        for (int i3 = 0; i3 < length; i3++) {
            Method[] methods = clsArr[i3].getMethods();
            int i4 = 0;
            while (i4 < methods.length) {
                Method method = methods[i4];
                int modifiers2 = method.getModifiers();
                if (Modifier.isStatic(modifiers2) || Modifier.isFinal(modifiers2) || method.isDefault()) {
                    i = i4;
                    methodArr2 = methods;
                } else {
                    String name = method.getName();
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (!objToIntMap.has(name)) {
                        try {
                            cls.getMethod(name, parameterTypes);
                        } catch (NoSuchMethodException unused) {
                        }
                        i = i4;
                        methodArr2 = methods;
                    }
                    String str3 = name + getMethodSignature(method, parameterTypes);
                    if (!objToIntMap2.has(str3)) {
                        i = i4;
                        methodArr2 = methods;
                        generateMethod(cfor, str, name, parameterTypes, method.getReturnType(), true);
                        objToIntMap2.put(str3, 0);
                        objToIntMap3.put(name, 0);
                    }
                }
                i4 = i + 1;
                methods = methodArr2;
            }
        }
        int i5 = 0;
        for (Method[] overridableMethods = getOverridableMethods(cls); i5 < overridableMethods.length; overridableMethods = methodArr) {
            Method method2 = overridableMethods[i5];
            boolean zIsAbstract = Modifier.isAbstract(method2.getModifiers());
            String name2 = method2.getName();
            if (zIsAbstract || objToIntMap.has(name2)) {
                Class<?>[] parameterTypes2 = method2.getParameterTypes();
                String methodSignature = getMethodSignature(method2, parameterTypes2);
                String str4 = name2 + methodSignature;
                if (objToIntMap2.has(str4)) {
                    methodArr = overridableMethods;
                } else {
                    methodArr = overridableMethods;
                    generateMethod(cfor, str, name2, parameterTypes2, method2.getReturnType(), true);
                    objToIntMap2.put(str4, 0);
                    objToIntMap3.put(name2, 0);
                    if (!zIsAbstract) {
                        generateSuper(cfor, str, strReplace, name2, methodSignature, parameterTypes2, method2.getReturnType());
                    }
                }
            }
            i5++;
        }
        ObjToIntMap.Iterator iterator = new ObjToIntMap.Iterator(objToIntMap);
        iterator.start();
        while (!iterator.done()) {
            String str5 = (String) iterator.getKey();
            if (!objToIntMap3.has(str5)) {
                int value = iterator.getValue();
                Class[] clsArr2 = new Class[value];
                for (int i6 = 0; i6 < value; i6++) {
                    clsArr2[i6] = ScriptRuntime.ObjectClass;
                }
                generateMethod(cfor, str, str5, clsArr2, ScriptRuntime.ObjectClass, false);
            }
            iterator.next();
        }
        return cfor.f0();
    }

    public static Scriptable createAdapterWrapper(Scriptable scriptable, Object obj) {
        NativeJavaObject nativeJavaObject = new NativeJavaObject(ScriptableObject.getTopLevelScope(scriptable), obj, null, true);
        nativeJavaObject.setPrototype(scriptable);
        return nativeJavaObject;
    }

    private static Object doCall(Context context, Scriptable scriptable, Scriptable scriptable2, Function function, Object[] objArr, long j) {
        for (int i = 0; i != objArr.length; i++) {
            if (0 != ((1 << i) & j)) {
                Object obj = objArr[i];
                if (!(obj instanceof Scriptable)) {
                    objArr[i] = context.getWrapFactory().wrap(context, scriptable, obj, null);
                }
            }
        }
        return function.call(context, scriptable, scriptable2, objArr);
    }

    private static void generateCtor(Cfor cfor, String str, String str2, Constructor<?> constructor) throws RuntimeException {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        short sGeneratePushParam = 3;
        if (parameterTypes.length == 0) {
            cfor.d0("<init>", "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ContextFactory;)V", (short) 1);
            cfor.m37823native(42);
            cfor.m37821instanceof(183, str2, "<init>", "()V");
        } else {
            StringBuilder sb = new StringBuilder("(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ContextFactory;");
            int length = sb.length();
            for (Class<?> cls : parameterTypes) {
                appendTypeString(sb, cls);
            }
            sb.append(")V");
            cfor.d0("<init>", sb.toString(), (short) 1);
            cfor.m37823native(42);
            for (Class<?> cls2 : parameterTypes) {
                sGeneratePushParam = (short) (sGeneratePushParam + generatePushParam(cfor, sGeneratePushParam, cls2));
            }
            sb.delete(1, length);
            cfor.m37821instanceof(183, str2, "<init>", sb.toString());
        }
        cfor.m37823native(42);
        cfor.m37823native(43);
        cfor.m37831switch(181, str, "delegee", OptRuntime.GeneratorState.thisObj_TYPE);
        cfor.m37823native(42);
        cfor.m37823native(44);
        cfor.m37831switch(181, str, "factory", "Lorg/mozilla/javascript/ContextFactory;");
        cfor.m37823native(42);
        cfor.m37823native(43);
        cfor.m37823native(42);
        cfor.m37821instanceof(184, "org/mozilla/javascript/JavaAdapter", "createAdapterWrapper", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
        cfor.m37831switch(181, str, "self", OptRuntime.GeneratorState.thisObj_TYPE);
        cfor.m37823native(177);
        cfor.e0(sGeneratePushParam);
    }

    private static void generateEmptyCtor(Cfor cfor, String str, String str2, String str3) throws RuntimeException {
        cfor.d0("<init>", "()V", (short) 1);
        cfor.m37823native(42);
        cfor.m37821instanceof(183, str2, "<init>", "()V");
        cfor.m37823native(42);
        cfor.m37823native(1);
        cfor.m37831switch(181, str, "factory", "Lorg/mozilla/javascript/ContextFactory;");
        cfor.m37829static(187, str3);
        cfor.m37823native(89);
        cfor.m37821instanceof(183, str3, "<init>", "()V");
        cfor.m37821instanceof(184, "org/mozilla/javascript/JavaAdapter", "runScript", "(Lorg/mozilla/javascript/Script;)Lorg/mozilla/javascript/Scriptable;");
        cfor.m37823native(76);
        cfor.m37823native(42);
        cfor.m37823native(43);
        cfor.m37831switch(181, str, "delegee", OptRuntime.GeneratorState.thisObj_TYPE);
        cfor.m37823native(42);
        cfor.m37823native(43);
        cfor.m37823native(42);
        cfor.m37821instanceof(184, "org/mozilla/javascript/JavaAdapter", "createAdapterWrapper", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
        cfor.m37831switch(181, str, "self", OptRuntime.GeneratorState.thisObj_TYPE);
        cfor.m37823native(177);
        cfor.e0((short) 2);
    }

    private static void generateMethod(Cfor cfor, String str, String str2, Class<?>[] clsArr, Class<?> cls, boolean z) throws RuntimeException {
        StringBuilder sb = new StringBuilder();
        int iAppendMethodSignature = appendMethodSignature(clsArr, cls, sb);
        cfor.d0(str2, sb.toString(), (short) 1);
        cfor.m37823native(42);
        cfor.m37831switch(180, str, "factory", "Lorg/mozilla/javascript/ContextFactory;");
        cfor.m37823native(42);
        cfor.m37831switch(180, str, "self", OptRuntime.GeneratorState.thisObj_TYPE);
        cfor.m37823native(42);
        cfor.m37831switch(180, str, "delegee", OptRuntime.GeneratorState.thisObj_TYPE);
        cfor.n(str2);
        cfor.m37821instanceof(184, "org/mozilla/javascript/JavaAdapter", "getFunction", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;");
        generatePushWrappedArgs(cfor, clsArr, clsArr.length);
        if (clsArr.length > 64) {
            throw Context.reportRuntimeError0("JavaAdapter can not subclass methods with more then 64 arguments.");
        }
        long j = 0;
        for (int i = 0; i != clsArr.length; i++) {
            if (!clsArr[i].isPrimitive()) {
                j |= 1 << i;
            }
        }
        cfor.m(j);
        cfor.m37821instanceof(184, "org/mozilla/javascript/JavaAdapter", "callMethod", "(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)Ljava/lang/Object;");
        generateReturnResult(cfor, cls, z);
        cfor.e0((short) iAppendMethodSignature);
    }

    private static void generatePopResult(Cfor cfor, Class<?> cls) {
        if (!cls.isPrimitive()) {
            cfor.m37823native(176);
            return;
        }
        char cCharAt = cls.getName().charAt(0);
        if (cCharAt == 'f') {
            cfor.m37823native(174);
            return;
        }
        if (cCharAt != 'i') {
            if (cCharAt == 'l') {
                cfor.m37823native(173);
                return;
            } else if (cCharAt != 's' && cCharAt != 'z') {
                switch (cCharAt) {
                    case 'd':
                        cfor.m37823native(175);
                        break;
                }
                return;
            }
        }
        cfor.m37823native(172);
    }

    private static int generatePushParam(Cfor cfor, int i, Class<?> cls) throws RuntimeException {
        if (!cls.isPrimitive()) {
            cfor.m37833throws(i);
            return 1;
        }
        char cCharAt = cls.getName().charAt(0);
        if (cCharAt == 'f') {
            cfor.m37825private(i);
            return 1;
        }
        if (cCharAt != 'i') {
            if (cCharAt == 'l') {
                cfor.a(i);
                return 2;
            }
            if (cCharAt != 's' && cCharAt != 'z') {
                switch (cCharAt) {
                    case 'b':
                    case 'c':
                        break;
                    case 'd':
                        cfor.m37817extends(i);
                        return 2;
                    default:
                        throw Kit.codeBug();
                }
            }
        }
        cfor.m37826protected(i);
        return 1;
    }

    public static void generatePushWrappedArgs(Cfor cfor, Class<?>[] clsArr, int i) throws RuntimeException {
        cfor.l(i);
        cfor.m37829static(189, "java/lang/Object");
        int iGenerateWrapArg = 1;
        for (int i2 = 0; i2 != clsArr.length; i2++) {
            cfor.m37823native(89);
            cfor.l(i2);
            iGenerateWrapArg += generateWrapArg(cfor, iGenerateWrapArg, clsArr[i2]);
            cfor.m37823native(83);
        }
    }

    public static void generateReturnResult(Cfor cfor, Class<?> cls, boolean z) throws RuntimeException {
        if (cls == Void.TYPE) {
            cfor.m37823native(87);
            cfor.m37823native(177);
            return;
        }
        if (cls == Boolean.TYPE) {
            cfor.m37821instanceof(184, "org/mozilla/javascript/Context", "toBoolean", "(Ljava/lang/Object;)Z");
            cfor.m37823native(172);
            return;
        }
        if (cls == Character.TYPE) {
            cfor.m37821instanceof(184, "org/mozilla/javascript/Context", "toString", "(Ljava/lang/Object;)Ljava/lang/String;");
            cfor.m37823native(3);
            cfor.m37821instanceof(182, "java/lang/String", "charAt", "(I)C");
            cfor.m37823native(172);
            return;
        }
        if (!cls.isPrimitive()) {
            String name = cls.getName();
            if (z) {
                cfor.i(name);
                cfor.m37821instanceof(184, "java/lang/Class", "forName", "(Ljava/lang/String;)Ljava/lang/Class;");
                cfor.m37821instanceof(184, "org/mozilla/javascript/JavaAdapter", "convertResult", "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;");
            }
            cfor.m37829static(192, name);
            cfor.m37823native(176);
            return;
        }
        cfor.m37821instanceof(184, "org/mozilla/javascript/Context", "toNumber", "(Ljava/lang/Object;)D");
        char cCharAt = cls.getName().charAt(0);
        if (cCharAt != 'b') {
            if (cCharAt == 'd') {
                cfor.m37823native(175);
                return;
            }
            if (cCharAt == 'f') {
                cfor.m37823native(144);
                cfor.m37823native(174);
                return;
            } else if (cCharAt != 'i') {
                if (cCharAt == 'l') {
                    cfor.m37823native(143);
                    cfor.m37823native(173);
                    return;
                } else if (cCharAt != 's') {
                    throw new RuntimeException("Unexpected return type " + cls.toString());
                }
            }
        }
        cfor.m37823native(142);
        cfor.m37823native(172);
    }

    private static void generateSerialCtor(Cfor cfor, String str, String str2) throws RuntimeException {
        cfor.d0("<init>", "(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V", (short) 1);
        cfor.m37823native(42);
        cfor.m37821instanceof(183, str2, "<init>", "()V");
        cfor.m37823native(42);
        cfor.m37823native(43);
        cfor.m37831switch(181, str, "factory", "Lorg/mozilla/javascript/ContextFactory;");
        cfor.m37823native(42);
        cfor.m37823native(44);
        cfor.m37831switch(181, str, "delegee", OptRuntime.GeneratorState.thisObj_TYPE);
        cfor.m37823native(42);
        cfor.m37823native(45);
        cfor.m37831switch(181, str, "self", OptRuntime.GeneratorState.thisObj_TYPE);
        cfor.m37823native(177);
        cfor.e0((short) 4);
    }

    private static void generateSuper(Cfor cfor, String str, String str2, String str3, String str4, Class<?>[] clsArr, Class<?> cls) throws RuntimeException {
        cfor.d0("super$" + str3, str4, (short) 1);
        cfor.m37827public(25, 0);
        int iGeneratePushParam = 1;
        for (Class<?> cls2 : clsArr) {
            iGeneratePushParam += generatePushParam(cfor, iGeneratePushParam, cls2);
        }
        cfor.m37821instanceof(183, str2, str3, str4);
        if (cls.equals(Void.TYPE)) {
            cfor.m37823native(177);
        } else {
            generatePopResult(cfor, cls);
        }
        cfor.e0((short) (iGeneratePushParam + 1));
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int generateWrapArg(Cfor cfor, int i, Class<?> cls) throws RuntimeException {
        int i2 = 1;
        if (!cls.isPrimitive()) {
            cfor.m37827public(25, i);
        } else if (cls == Boolean.TYPE) {
            cfor.m37829static(187, "java/lang/Boolean");
            cfor.m37823native(89);
            cfor.m37827public(21, i);
            cfor.m37821instanceof(183, "java/lang/Boolean", "<init>", "(Z)V");
        } else if (cls == Character.TYPE) {
            cfor.m37827public(21, i);
            cfor.m37821instanceof(184, "java/lang/String", "valueOf", "(C)Ljava/lang/String;");
        } else {
            cfor.m37829static(187, "java/lang/Double");
            cfor.m37823native(89);
            char cCharAt = cls.getName().charAt(0);
            if (cCharAt == 'b') {
                cfor.m37827public(21, i);
                cfor.m37823native(135);
                cfor.m37821instanceof(183, "java/lang/Double", "<init>", "(D)V");
            } else {
                if (cCharAt != 'd') {
                    if (cCharAt == 'f') {
                        cfor.m37827public(23, i);
                        cfor.m37823native(141);
                    } else if (cCharAt != 'i') {
                        if (cCharAt == 'l') {
                            cfor.m37827public(22, i);
                            cfor.m37823native(138);
                        } else if (cCharAt == 's') {
                        }
                    }
                    cfor.m37821instanceof(183, "java/lang/Double", "<init>", "(D)V");
                } else {
                    cfor.m37827public(24, i);
                }
                i2 = 2;
                cfor.m37821instanceof(183, "java/lang/Double", "<init>", "(D)V");
            }
        }
        return i2;
    }

    private static Class<?> getAdapterClass(Scriptable scriptable, Class<?> cls, Class<?>[] clsArr, Scriptable scriptable2) {
        ClassCache classCache = ClassCache.get(scriptable);
        Map<JavaAdapterSignature, Class<?>> interfaceAdapterCacheMap = classCache.getInterfaceAdapterCacheMap();
        ObjToIntMap objectFunctionNames = getObjectFunctionNames(scriptable2);
        JavaAdapterSignature javaAdapterSignature = new JavaAdapterSignature(cls, clsArr, objectFunctionNames);
        Class<?> clsLoadAdapterClass = interfaceAdapterCacheMap.get(javaAdapterSignature);
        if (clsLoadAdapterClass == null) {
            String str = "adapter" + classCache.newClassSerialNumber();
            clsLoadAdapterClass = loadAdapterClass(str, createAdapterCode(objectFunctionNames, str, cls, clsArr, null));
            if (classCache.isCachingEnabled()) {
                interfaceAdapterCacheMap.put(javaAdapterSignature, clsLoadAdapterClass);
            }
        }
        return clsLoadAdapterClass;
    }

    public static Object getAdapterSelf(Class<?> cls, Object obj) throws IllegalAccessException, NoSuchFieldException {
        return cls.getDeclaredField("self").get(obj);
    }

    public static int[] getArgsToConvert(Class<?>[] clsArr) {
        int i = 0;
        for (int i2 = 0; i2 != clsArr.length; i2++) {
            if (!clsArr[i2].isPrimitive()) {
                i++;
            }
        }
        if (i == 0) {
            return null;
        }
        int[] iArr = new int[i];
        int i3 = 0;
        for (int i4 = 0; i4 != clsArr.length; i4++) {
            if (!clsArr[i4].isPrimitive()) {
                iArr[i3] = i4;
                i3++;
            }
        }
        return iArr;
    }

    public static Function getFunction(Scriptable scriptable, String str) {
        Object property = ScriptableObject.getProperty(scriptable, str);
        if (property == Scriptable.NOT_FOUND) {
            return null;
        }
        if (property instanceof Function) {
            return (Function) property;
        }
        throw ScriptRuntime.notFunctionError(property, str);
    }

    private static String getMethodSignature(Method method, Class<?>[] clsArr) {
        StringBuilder sb = new StringBuilder();
        appendMethodSignature(clsArr, method.getReturnType(), sb);
        return sb.toString();
    }

    private static ObjToIntMap getObjectFunctionNames(Scriptable scriptable) {
        Object[] propertyIds = ScriptableObject.getPropertyIds(scriptable);
        ObjToIntMap objToIntMap = new ObjToIntMap(propertyIds.length);
        for (int i = 0; i != propertyIds.length; i++) {
            if (propertyIds[i] instanceof String) {
                String str = (String) propertyIds[i];
                Object property = ScriptableObject.getProperty(scriptable, str);
                if (property instanceof Function) {
                    int int32 = ScriptRuntime.toInt32(ScriptableObject.getProperty((Function) property, "length"));
                    if (int32 < 0) {
                        int32 = 0;
                    }
                    objToIntMap.put(str, int32);
                }
            }
        }
        return objToIntMap;
    }

    public static Method[] getOverridableMethods(Class<?> cls) throws SecurityException {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
            appendOverridableMethods(superclass, arrayList, hashSet);
        }
        while (cls != null) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                appendOverridableMethods(cls2, arrayList, hashSet);
            }
            cls = cls.getSuperclass();
        }
        return (Method[]) arrayList.toArray(new Method[arrayList.size()]);
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        IdFunctionObject idFunctionObject = new IdFunctionObject(new JavaAdapter(), FTAG, 1, "JavaAdapter", 1, scriptable);
        idFunctionObject.markAsConstructor(null);
        if (z) {
            idFunctionObject.sealObject();
        }
        idFunctionObject.exportAsScopeProperty();
    }

    public static Object js_createAdapter(Context context, Scriptable scriptable, Object[] objArr) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        Object objNewInstance;
        int length = objArr.length;
        if (length == 0) {
            throw ScriptRuntime.typeError0("msg.adapter.zero.args");
        }
        int i = 0;
        while (i < length - 1) {
            Object obj = objArr[i];
            if (obj instanceof NativeObject) {
                break;
            }
            if (!(obj instanceof NativeJavaClass)) {
                throw ScriptRuntime.typeError2("msg.not.java.class.arg", String.valueOf(i), ScriptRuntime.toString(obj));
            }
            i++;
        }
        Class<?> cls = null;
        Class[] clsArr = new Class[i];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Class<?> classObject = ((NativeJavaClass) objArr[i3]).getClassObject();
            if (classObject.isInterface()) {
                clsArr[i2] = classObject;
                i2++;
            } else {
                if (cls != null) {
                    throw ScriptRuntime.typeError2("msg.only.one.super", cls.getName(), classObject.getName());
                }
                cls = classObject;
            }
        }
        if (cls == null) {
            cls = ScriptRuntime.ObjectClass;
        }
        Class[] clsArr2 = new Class[i2];
        System.arraycopy(clsArr, 0, clsArr2, 0, i2);
        Scriptable scriptableEnsureScriptable = ScriptableObject.ensureScriptable(objArr[i]);
        Class<?> adapterClass = getAdapterClass(scriptable, cls, clsArr2, scriptableEnsureScriptable);
        int i4 = (length - i) - 1;
        try {
            if (i4 > 0) {
                Object[] objArr2 = new Object[i4 + 2];
                objArr2[0] = scriptableEnsureScriptable;
                objArr2[1] = context.getFactory();
                System.arraycopy(objArr, i + 1, objArr2, 2, i4);
                NativeJavaMethod nativeJavaMethod = new NativeJavaClass(scriptable, adapterClass, true).members.ctors;
                int iFindCachedFunction = nativeJavaMethod.findCachedFunction(context, objArr2);
                if (iFindCachedFunction < 0) {
                    throw Context.reportRuntimeError2("msg.no.java.ctor", adapterClass.getName(), NativeJavaMethod.scriptSignature(objArr));
                }
                objNewInstance = NativeJavaClass.constructInternal(objArr2, nativeJavaMethod.methods[iFindCachedFunction]);
            } else {
                objNewInstance = adapterClass.getConstructor(ScriptRuntime.ScriptableClass, ScriptRuntime.ContextFactoryClass).newInstance(scriptableEnsureScriptable, context.getFactory());
            }
            Object adapterSelf = getAdapterSelf(adapterClass, objNewInstance);
            if (adapterSelf instanceof Wrapper) {
                Object objUnwrap = ((Wrapper) adapterSelf).unwrap();
                if (objUnwrap instanceof Scriptable) {
                    if (objUnwrap instanceof ScriptableObject) {
                        ScriptRuntime.setObjectProtoAndParent((ScriptableObject) objUnwrap, scriptable);
                    }
                    return objUnwrap;
                }
            }
            return adapterSelf;
        } catch (Exception e) {
            throw Context.throwAsScriptRuntimeEx(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$callMethod$0(Scriptable scriptable, Scriptable scriptable2, Function function, Object[] objArr, long j, Context context) {
        return doCall(context, scriptable, scriptable2, function, objArr, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScriptableObject lambda$runScript$1(Script script, Context context) {
        ScriptableObject global = ScriptRuntime.getGlobal(context);
        script.exec(context, global);
        return global;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Class<?> loadAdapterClass(String str, byte[] bArr) {
        ProtectionDomain scriptProtectionDomain;
        Class<?> staticSecurityDomainClass = SecurityController.getStaticSecurityDomainClass();
        if (staticSecurityDomainClass == CodeSource.class || staticSecurityDomainClass == ProtectionDomain.class) {
            scriptProtectionDomain = SecurityUtilities.getScriptProtectionDomain();
            if (scriptProtectionDomain == null) {
                scriptProtectionDomain = JavaAdapter.class.getProtectionDomain();
            }
            if (staticSecurityDomainClass == CodeSource.class) {
                scriptProtectionDomain = scriptProtectionDomain == null ? null : scriptProtectionDomain.getCodeSource();
            }
        }
        GeneratedClassLoader generatedClassLoaderCreateLoader = SecurityController.createLoader(null, scriptProtectionDomain);
        Class<?> clsDefineClass = generatedClassLoaderCreateLoader.defineClass(str, bArr);
        generatedClassLoaderCreateLoader.linkClass(clsDefineClass);
        return clsDefineClass;
    }

    public static Object readAdapterObject(Scriptable scriptable, ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        Context currentContext = Context.getCurrentContext();
        ContextFactory factory = currentContext != null ? currentContext.getFactory() : null;
        Class<?> cls = Class.forName((String) objectInputStream.readObject());
        String[] strArr = (String[]) objectInputStream.readObject();
        Class[] clsArr = new Class[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            clsArr[i] = Class.forName(strArr[i]);
        }
        Scriptable scriptable2 = (Scriptable) objectInputStream.readObject();
        Class<?> adapterClass = getAdapterClass(scriptable, cls, clsArr, scriptable2);
        Class<Scriptable> cls2 = ScriptRuntime.ScriptableClass;
        try {
            return adapterClass.getConstructor(ScriptRuntime.ContextFactoryClass, cls2, cls2).newInstance(factory, scriptable2, scriptable);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
            throw new ClassNotFoundException("adapter");
        }
    }

    public static Scriptable runScript(final Script script) {
        return (Scriptable) ContextFactory.getGlobal().call(new ContextAction() { // from class: android.support.v4.ep0
            @Override // org.mozilla.javascript.ContextAction
            public final Object run(Context context) {
                return JavaAdapter.lambda$runScript$1(script, context);
            }
        });
    }

    public static void writeAdapterObject(Object obj, ObjectOutputStream objectOutputStream) throws IOException {
        Class<?> cls = obj.getClass();
        objectOutputStream.writeObject(cls.getSuperclass().getName());
        Class<?>[] interfaces = cls.getInterfaces();
        String[] strArr = new String[interfaces.length];
        for (int i = 0; i < interfaces.length; i++) {
            strArr[i] = interfaces[i].getName();
        }
        objectOutputStream.writeObject(strArr);
        try {
            objectOutputStream.writeObject(cls.getField("delegee").get(obj));
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            throw new IOException();
        }
    }

    @Override // org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (idFunctionObject.hasTag(FTAG) && idFunctionObject.methodId() == 1) {
            return js_createAdapter(context, scriptable, objArr);
        }
        throw idFunctionObject.unknown();
    }
}
