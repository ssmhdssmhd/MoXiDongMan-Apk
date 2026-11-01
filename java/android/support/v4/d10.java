package android.support.v4;

/* loaded from: classes2.dex */
public final class d10 {

    /* renamed from: do, reason: not valid java name */
    private final int f909do;

    /* renamed from: if, reason: not valid java name */
    private final int f910if;

    public d10(int i, int i2) {
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException();
        }
        this.f909do = i;
        this.f910if = i2;
    }

    /* renamed from: do, reason: not valid java name */
    public int m1099do() {
        return this.f910if;
    }

    public boolean equals(Object obj) {
        if (obj instanceof d10) {
            d10 d10Var = (d10) obj;
            if (this.f909do == d10Var.f909do && this.f910if == d10Var.f910if) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.f909do * 32713) + this.f910if;
    }

    /* renamed from: if, reason: not valid java name */
    public int m1100if() {
        return this.f909do;
    }

    public String toString() {
        return this.f909do + "x" + this.f910if;
    }
}
