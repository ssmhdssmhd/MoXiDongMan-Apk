package android.support.v4;

/* loaded from: classes3.dex */
public class y82<A, B, C> {

    /* renamed from: do, reason: not valid java name */
    public final A f8150do;

    /* renamed from: for, reason: not valid java name */
    public final C f8151for;

    /* renamed from: if, reason: not valid java name */
    public final B f8152if;

    public y82(A a, B b, C c) {
        this.f8150do = a;
        this.f8152if = b;
        this.f8151for = c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof y82)) {
            return false;
        }
        y82 y82Var = (y82) obj;
        r51 r51Var = r51.f5664do;
        return r51Var.equals(this.f8150do, y82Var.f8150do) && r51Var.equals(this.f8152if, y82Var.f8152if) && r51Var.equals(this.f8151for, y82Var.f8151for);
    }

    public int hashCode() {
        return y01.m9664do(y01.m9663case(y01.m9663case(y01.m9663case(y01.m9665for(), this.f8150do), this.f8152if), this.f8151for), 3);
    }

    public String toString() {
        return String.format("(%s, %s, %s)", this.f8150do, this.f8152if, this.f8151for);
    }
}
