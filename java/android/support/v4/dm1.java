package android.support.v4;

import java.util.Arrays;
import java.util.Collections;
import kotlin.collections.Cclass;
import kotlin.jvm.internal.FunctionBase;
import kotlin.reflect.Cfor;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KMutableProperty2;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;

/* loaded from: classes3.dex */
public class dm1 {

    /* renamed from: do, reason: not valid java name */
    private static final fm1 f1080do;

    /* renamed from: for, reason: not valid java name */
    private static final KClass[] f1081for;

    /* renamed from: if, reason: not valid java name */
    public static final String f1082if = " (Kotlin reflection is not available)";

    static {
        fm1 fm1Var = null;
        try {
            fm1Var = (fm1) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (fm1Var == null) {
            fm1Var = new fm1();
        }
        f1080do = fm1Var;
        f1081for = new KClass[0];
    }

    /* renamed from: break, reason: not valid java name */
    public static KMutableProperty1 m1410break(h11 h11Var) {
        return f1080do.m2349goto(h11Var);
    }

    /* renamed from: case, reason: not valid java name */
    public static KClass[] m1411case(Class[] clsArr) {
        int length = clsArr.length;
        if (length == 0) {
            return f1081for;
        }
        KClass[] kClassArr = new KClass[length];
        for (int i = 0; i < length; i++) {
            kClassArr[i] = m1426new(clsArr[i]);
        }
        return kClassArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static KMutableProperty2 m1412catch(j11 j11Var) {
        return f1080do.m2353this(j11Var);
    }

    @iz1(version = "1.4")
    /* renamed from: class, reason: not valid java name */
    public static KType m1413class(Class cls) {
        return f1080do.m2354throw(m1426new(cls), Collections.emptyList(), true);
    }

    @iz1(version = "1.4")
    /* renamed from: const, reason: not valid java name */
    public static KType m1414const(Class cls, qq0 qq0Var) {
        return f1080do.m2354throw(m1426new(cls), Collections.singletonList(qq0Var), true);
    }

    @iz1(version = "1.4")
    /* renamed from: default, reason: not valid java name */
    public static KType m1415default(Class cls, qq0 qq0Var) {
        return f1080do.m2354throw(m1426new(cls), Collections.singletonList(qq0Var), false);
    }

    /* renamed from: do, reason: not valid java name */
    public static KClass m1416do(Class cls) {
        return f1080do.m2345do(cls);
    }

    @iz1(version = "1.4")
    /* renamed from: else, reason: not valid java name */
    public static KDeclarationContainer m1417else(Class cls) {
        return f1080do.m2341case(cls, "");
    }

    @iz1(version = "1.4")
    /* renamed from: extends, reason: not valid java name */
    public static KType m1418extends(Class cls, qq0 qq0Var, qq0 qq0Var2) {
        return f1080do.m2354throw(m1426new(cls), Arrays.asList(qq0Var, qq0Var2), false);
    }

    @iz1(version = "1.4")
    /* renamed from: final, reason: not valid java name */
    public static KType m1419final(Class cls, qq0 qq0Var, qq0 qq0Var2) {
        return f1080do.m2354throw(m1426new(cls), Arrays.asList(qq0Var, qq0Var2), true);
    }

    @iz1(version = "1.4")
    /* renamed from: finally, reason: not valid java name */
    public static KType m1420finally(Class cls, qq0... qq0VarArr) {
        return f1080do.m2354throw(m1426new(cls), Cclass.tx(qq0VarArr), false);
    }

    /* renamed from: for, reason: not valid java name */
    public static KFunction m1421for(je0 je0Var) {
        return f1080do.m2348for(je0Var);
    }

    /* renamed from: goto, reason: not valid java name */
    public static KDeclarationContainer m1422goto(Class cls, String str) {
        return f1080do.m2341case(cls, str);
    }

    /* renamed from: if, reason: not valid java name */
    public static KClass m1423if(Class cls, String str) {
        return f1080do.m2350if(cls, str);
    }

    /* renamed from: import, reason: not valid java name */
    public static KProperty1 m1424import(ig1 ig1Var) {
        return f1080do.m2342catch(ig1Var);
    }

    /* renamed from: native, reason: not valid java name */
    public static KProperty2 m1425native(kg1 kg1Var) {
        return f1080do.m2343class(kg1Var);
    }

    /* renamed from: new, reason: not valid java name */
    public static KClass m1426new(Class cls) {
        return f1080do.m2351new(cls);
    }

    @iz1(version = "1.4")
    /* renamed from: package, reason: not valid java name */
    public static KType m1427package(KClassifier kClassifier) {
        return f1080do.m2354throw(kClassifier, Collections.emptyList(), false);
    }

    @iz1(version = "1.4")
    /* renamed from: private, reason: not valid java name */
    public static KTypeParameter m1428private(Object obj, String str, Cfor cfor, boolean z) {
        return f1080do.m2356while(obj, str, cfor, z);
    }

    @iz1(version = "1.1")
    /* renamed from: public, reason: not valid java name */
    public static String m1429public(yr0 yr0Var) {
        return f1080do.m2344const(yr0Var);
    }

    @iz1(version = "1.3")
    /* renamed from: return, reason: not valid java name */
    public static String m1430return(FunctionBase functionBase) {
        return f1080do.m2347final(functionBase);
    }

    @iz1(version = "1.4")
    /* renamed from: static, reason: not valid java name */
    public static void m1431static(KTypeParameter kTypeParameter, KType kType) {
        f1080do.m2352super(kTypeParameter, Collections.singletonList(kType));
    }

    @iz1(version = "1.4")
    /* renamed from: super, reason: not valid java name */
    public static KType m1432super(Class cls, qq0... qq0VarArr) {
        return f1080do.m2354throw(m1426new(cls), Cclass.tx(qq0VarArr), true);
    }

    @iz1(version = "1.4")
    /* renamed from: switch, reason: not valid java name */
    public static void m1433switch(KTypeParameter kTypeParameter, KType... kTypeArr) {
        f1080do.m2352super(kTypeParameter, Cclass.tx(kTypeArr));
    }

    /* renamed from: this, reason: not valid java name */
    public static KMutableProperty0 m1434this(f11 f11Var) {
        return f1080do.m2346else(f11Var);
    }

    @iz1(version = "1.4")
    /* renamed from: throw, reason: not valid java name */
    public static KType m1435throw(KClassifier kClassifier) {
        return f1080do.m2354throw(kClassifier, Collections.emptyList(), true);
    }

    @iz1(version = "1.4")
    /* renamed from: throws, reason: not valid java name */
    public static KType m1436throws(Class cls) {
        return f1080do.m2354throw(m1426new(cls), Collections.emptyList(), false);
    }

    /* renamed from: try, reason: not valid java name */
    public static KClass m1437try(Class cls, String str) {
        return f1080do.m2355try(cls, str);
    }

    /* renamed from: while, reason: not valid java name */
    public static KProperty0 m1438while(gg1 gg1Var) {
        return f1080do.m2340break(gg1Var);
    }
}
