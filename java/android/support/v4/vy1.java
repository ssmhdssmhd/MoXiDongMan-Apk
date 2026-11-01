package android.support.v4;

/* loaded from: classes3.dex */
public class vy1 {

    /* renamed from: do, reason: not valid java name */
    private String f7360do;

    /* renamed from: if, reason: not valid java name */
    private double f7361if;

    public vy1(String str, double d) {
        this.f7360do = str;
        this.f7361if = d;
    }

    /* renamed from: do, reason: not valid java name */
    public String m9002do() {
        return this.f7360do;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        vy1 vy1Var = (vy1) obj;
        return this.f7360do.equals(vy1Var.f7360do) && this.f7361if == vy1Var.f7361if;
    }

    public int hashCode() {
        return ((253 + this.f7360do.hashCode()) * 23) + ((int) (this.f7361if * 1000000.0d));
    }

    /* renamed from: if, reason: not valid java name */
    public double m9003if() {
        return this.f7361if;
    }
}
