package android.support.v4;

import io.reactivex.Cnew;
import io.reactivex.subjects.Cgoto;
import io.reactivex.subjects.Ctry;

/* loaded from: classes2.dex */
public class ep1 {

    /* renamed from: if, reason: not valid java name */
    private static volatile ep1 f1550if;

    /* renamed from: do, reason: not valid java name */
    private final Cgoto<Object> f1551do = Ctry.m29840else().m29814try();

    private ep1() {
    }

    /* renamed from: do, reason: not valid java name */
    public static ep1 m1972do() {
        if (f1550if == null) {
            synchronized (ep1.class) {
                if (f1550if == null) {
                    f1550if = new ep1();
                }
            }
        }
        return f1550if;
    }

    /* renamed from: for, reason: not valid java name */
    public void m1973for(Object obj) {
        this.f1551do.onNext(obj);
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m1974if() {
        return this.f1551do.mo29796for();
    }

    /* renamed from: new, reason: not valid java name */
    public void m1975new() {
        f1550if = null;
    }

    /* renamed from: try, reason: not valid java name */
    public <T> Cnew<T> m1976try(Class<T> cls) {
        return (Cnew<T>) this.f1551do.ofType(cls);
    }
}
