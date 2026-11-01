package android.support.v4;

import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class c50 {

    /* renamed from: do, reason: not valid java name */
    private final Cnew f604do;

    /* renamed from: if, reason: not valid java name */
    private final Cnew f605if;

    public c50(Cnew cnew, Cnew cnew2) {
        this.f604do = cnew;
        this.f605if = cnew2;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m749do(c50 c50Var) {
        return c50Var.m751if().m35481try(m751if()) && c50Var.m750for().m35481try(m750for());
    }

    public boolean equals(Object obj) {
        if (obj instanceof c50) {
            return m749do((c50) obj);
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public Cnew m750for() {
        return this.f605if;
    }

    public int hashCode() {
        return this.f604do.hashCode() + (this.f605if.hashCode() * 37);
    }

    /* renamed from: if, reason: not valid java name */
    public Cnew m751if() {
        return this.f604do;
    }
}
