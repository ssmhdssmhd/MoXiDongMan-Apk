package android.support.v4;

import java.util.List;
import kotlin.jvm.internal.Cconst;
import kotlin.jvm.internal.Cthrow;
import kotlin.jvm.internal.Cwhile;
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
public class fm1 {

    /* renamed from: do, reason: not valid java name */
    private static final String f1902do = "kotlin.jvm.functions.";

    /* renamed from: break, reason: not valid java name */
    public KProperty0 m2340break(gg1 gg1Var) {
        return gg1Var;
    }

    /* renamed from: case, reason: not valid java name */
    public KDeclarationContainer m2341case(Class cls, String str) {
        return new lb1(cls, str);
    }

    /* renamed from: catch, reason: not valid java name */
    public KProperty1 m2342catch(ig1 ig1Var) {
        return ig1Var;
    }

    /* renamed from: class, reason: not valid java name */
    public KProperty2 m2343class(kg1 kg1Var) {
        return kg1Var;
    }

    @iz1(version = "1.1")
    /* renamed from: const, reason: not valid java name */
    public String m2344const(yr0 yr0Var) {
        return m2347final(yr0Var);
    }

    /* renamed from: do, reason: not valid java name */
    public KClass m2345do(Class cls) {
        return new Cconst(cls);
    }

    /* renamed from: else, reason: not valid java name */
    public KMutableProperty0 m2346else(f11 f11Var) {
        return f11Var;
    }

    @iz1(version = "1.3")
    /* renamed from: final, reason: not valid java name */
    public String m2347final(FunctionBase functionBase) {
        String string = functionBase.getClass().getGenericInterfaces()[0].toString();
        return string.startsWith(f1902do) ? string.substring(21) : string;
    }

    /* renamed from: for, reason: not valid java name */
    public KFunction m2348for(je0 je0Var) {
        return je0Var;
    }

    /* renamed from: goto, reason: not valid java name */
    public KMutableProperty1 m2349goto(h11 h11Var) {
        return h11Var;
    }

    /* renamed from: if, reason: not valid java name */
    public KClass m2350if(Class cls, String str) {
        return new Cconst(cls);
    }

    /* renamed from: new, reason: not valid java name */
    public KClass m2351new(Class cls) {
        return new Cconst(cls);
    }

    @iz1(version = "1.4")
    /* renamed from: super, reason: not valid java name */
    public void m2352super(KTypeParameter kTypeParameter, List<KType> list) {
        ((Cthrow) kTypeParameter).m30715if(list);
    }

    /* renamed from: this, reason: not valid java name */
    public KMutableProperty2 m2353this(j11 j11Var) {
        return j11Var;
    }

    @iz1(version = "1.4")
    /* renamed from: throw, reason: not valid java name */
    public KType m2354throw(KClassifier kClassifier, List<qq0> list, boolean z) {
        return new Cwhile(kClassifier, list, z);
    }

    /* renamed from: try, reason: not valid java name */
    public KClass m2355try(Class cls, String str) {
        return new Cconst(cls);
    }

    @iz1(version = "1.4")
    /* renamed from: while, reason: not valid java name */
    public KTypeParameter m2356while(Object obj, String str, Cfor cfor, boolean z) {
        return new Cthrow(obj, str, cfor, z);
    }
}
