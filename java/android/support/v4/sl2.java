package android.support.v4;

import freemarker.ext.beans.Ctry;
import freemarker.template.Cdo;

/* loaded from: classes.dex */
public class sl2 {

    /* renamed from: if, reason: not valid java name */
    private static final ThreadLocal f6203if = new ThreadLocal();

    /* renamed from: do, reason: not valid java name */
    private Ctry f6204do;

    /* renamed from: do, reason: not valid java name */
    public static void m7508do(sl2 sl2Var) {
        f6203if.set(sl2Var);
    }

    /* renamed from: if, reason: not valid java name */
    public static sl2 m7509if() {
        Object obj = f6203if.get();
        return obj != null ? (sl2) obj : new sl2();
    }

    /* renamed from: new, reason: not valid java name */
    public static sl2 m7510new() {
        ThreadLocal threadLocal = f6203if;
        Object obj = threadLocal.get();
        threadLocal.set(new sl2());
        return (sl2) obj;
    }

    /* renamed from: for, reason: not valid java name */
    public Ctry m7511for() {
        if (this.f6204do == null) {
            this.f6204do = new Ctry(Cdo.k3);
        }
        return this.f6204do;
    }
}
