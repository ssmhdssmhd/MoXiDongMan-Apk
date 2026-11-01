package kotlin.internal;

import android.support.v4.ga0;
import android.support.v4.m41;
import android.support.v4.mx0;
import android.support.v4.tp0;
import android.support.v4.z41;
import java.lang.reflect.Method;
import java.util.List;
import java.util.regex.MatchResult;
import kotlin.Cwhile;
import kotlin.collections.Ccatch;
import kotlin.collections.Cgoto;
import kotlin.collections.Cthrow;
import kotlin.jvm.internal.Csuper;
import kotlin.random.Ctry;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001:\u0001\u0006B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016¨\u0006\u0013"}, d2 = {"Lkotlin/internal/do;", "", "", "cause", "exception", "Landroid/support/v4/ub2;", "do", "", "new", "Ljava/util/regex/MatchResult;", "matchResult", "", "name", "Landroid/support/v4/mx0;", "for", "Lkotlin/random/try;", "if", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.internal.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\n"}, d2 = {"kotlin/internal/do$do", "", "Ljava/lang/reflect/Method;", "do", "Ljava/lang/reflect/Method;", "addSuppressed", "if", "getSuppressed", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.internal.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0366do {

        /* renamed from: do, reason: not valid java name */
        @tp0
        @z41
        public static final Method f27823do;

        /* renamed from: for, reason: not valid java name */
        @m41
        public static final C0366do f27824for = new C0366do();

        /* renamed from: if, reason: not valid java name */
        @tp0
        @z41
        public static final Method f27825if;

        /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
        static {
            Method method;
            Method it;
            Method[] throwableMethods = Throwable.class.getMethods();
            Csuper.m30696super(throwableMethods, "throwableMethods");
            int length = throwableMethods.length;
            int i = 0;
            int i2 = 0;
            while (true) {
                method = null;
                if (i2 >= length) {
                    it = null;
                    break;
                }
                it = throwableMethods[i2];
                Csuper.m30696super(it, "it");
                if (Csuper.m30676else(it.getName(), "addSuppressed")) {
                    Class<?>[] parameterTypes = it.getParameterTypes();
                    Csuper.m30696super(parameterTypes, "it.parameterTypes");
                    boolean z = Csuper.m30676else((Class) Cgoto.ls(parameterTypes), Throwable.class);
                    if (z) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            f27823do = it;
            int length2 = throwableMethods.length;
            while (true) {
                if (i >= length2) {
                    break;
                }
                Method it2 = throwableMethods[i];
                Csuper.m30696super(it2, "it");
                if (Csuper.m30676else(it2.getName(), "getSuppressed")) {
                    method = it2;
                    break;
                }
                i++;
            }
            f27825if = method;
        }

        private C0366do() {
        }
    }

    /* renamed from: do */
    public void mo3074do(@m41 Throwable cause, @m41 Throwable exception) {
        Csuper.m30700throw(cause, "cause");
        Csuper.m30700throw(exception, "exception");
        Method method = C0366do.f27823do;
        if (method != null) {
            method.invoke(cause, exception);
        }
    }

    @z41
    /* renamed from: for */
    public mx0 mo3523for(@m41 MatchResult matchResult, @m41 String name) {
        Csuper.m30700throw(matchResult, "matchResult");
        Csuper.m30700throw(name, "name");
        throw new UnsupportedOperationException("Retrieving groups by name is not supported on this platform.");
    }

    @m41
    /* renamed from: if */
    public Ctry mo3524if() {
        return new ga0();
    }

    @m41
    /* renamed from: new */
    public List<Throwable> mo3075new(@m41 Throwable exception) {
        Object objInvoke;
        List<Throwable> listM29987public;
        Csuper.m30700throw(exception, "exception");
        Method method = C0366do.f27825if;
        return (method == null || (objInvoke = method.invoke(exception, new Object[0])) == null || (listM29987public = Ccatch.m29987public((Throwable[]) objInvoke)) == null) ? Cthrow.m30175continue() : listM29987public;
    }
}
