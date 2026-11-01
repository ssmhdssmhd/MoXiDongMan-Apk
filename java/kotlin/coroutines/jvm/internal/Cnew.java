package kotlin.coroutines.jvm.internal;

import android.support.v4.e7;
import android.support.v4.m41;
import android.support.v4.tp0;
import android.support.v4.z41;
import java.lang.reflect.Method;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\bÂ\u0002\u0018\u00002\u00020\u0001:\u0001\u0005B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u0002R\u0016\u0010\t\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\bR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lkotlin/coroutines/jvm/internal/new;", "", "Landroid/support/v4/e7;", "continuation", "Lkotlin/coroutines/jvm/internal/new$do;", "do", "", "if", "Lkotlin/coroutines/jvm/internal/new$do;", "notOnJava9", "cache", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.coroutines.jvm.internal.new, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cnew {

    /* renamed from: if, reason: not valid java name */
    private static Cdo f27801if;

    /* renamed from: for, reason: not valid java name */
    @m41
    public static final Cnew f27800for = new Cnew();

    /* renamed from: do, reason: not valid java name */
    private static final Cdo f27799do = new Cdo(null, null, null);

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0002\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\f"}, d2 = {"kotlin/coroutines/jvm/internal/new$do", "", "Ljava/lang/reflect/Method;", "do", "Ljava/lang/reflect/Method;", "getModuleMethod", "if", "getDescriptorMethod", "for", "nameMethod", "<init>", "(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.coroutines.jvm.internal.new$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        @tp0
        @z41
        public final Method f27802do;

        /* renamed from: for, reason: not valid java name */
        @tp0
        @z41
        public final Method f27803for;

        /* renamed from: if, reason: not valid java name */
        @tp0
        @z41
        public final Method f27804if;

        public Cdo(@z41 Method method, @z41 Method method2, @z41 Method method3) {
            this.f27802do = method;
            this.f27804if = method2;
            this.f27803for = method3;
        }
    }

    private Cnew() {
    }

    /* renamed from: do, reason: not valid java name */
    private final Cdo m30416do(e7 e7Var) {
        try {
            Cdo cdo = new Cdo(Class.class.getDeclaredMethod("getModule", new Class[0]), e7Var.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), e7Var.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
            f27801if = cdo;
            return cdo;
        } catch (Exception unused) {
            Cdo cdo2 = f27799do;
            f27801if = cdo2;
            return cdo2;
        }
    }

    @z41
    /* renamed from: if, reason: not valid java name */
    public final String m30417if(@m41 e7 continuation) {
        Method method;
        Object objInvoke;
        Method method2;
        Object objInvoke2;
        Csuper.m30700throw(continuation, "continuation");
        Cdo cdoM30416do = f27801if;
        if (cdoM30416do == null) {
            cdoM30416do = m30416do(continuation);
        }
        if (cdoM30416do == f27799do || (method = cdoM30416do.f27802do) == null || (objInvoke = method.invoke(continuation.getClass(), new Object[0])) == null || (method2 = cdoM30416do.f27804if) == null || (objInvoke2 = method2.invoke(objInvoke, new Object[0])) == null) {
            return null;
        }
        Method method3 = cdoM30416do.f27803for;
        Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, new Object[0]) : null;
        return (String) (objInvoke3 instanceof String ? objInvoke3 : null);
    }
}
