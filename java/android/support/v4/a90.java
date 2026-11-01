package android.support.v4;

/* loaded from: classes2.dex */
public class a90 {

    /* renamed from: do, reason: not valid java name */
    private int f58do;

    /* renamed from: for, reason: not valid java name */
    private int f59for;

    /* renamed from: if, reason: not valid java name */
    private int f60if;

    public a90(int i, int i2, int i3) {
        this.f58do = i;
        this.f60if = i2;
        this.f59for = i3;
    }

    /* renamed from: case, reason: not valid java name */
    public void m80case(int i) {
        this.f59for = i;
    }

    /* renamed from: do, reason: not valid java name */
    public int m81do() {
        return this.f60if;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a90 a90Var = (a90) obj;
        return this.f58do == a90Var.f58do && this.f60if == a90Var.f60if && this.f59for == a90Var.f59for;
    }

    /* renamed from: for, reason: not valid java name */
    public int m82for() {
        return this.f59for;
    }

    public int hashCode() {
        return (((this.f58do * 31) + this.f60if) * 31) + this.f59for;
    }

    /* renamed from: if, reason: not valid java name */
    public int m83if() {
        return this.f58do;
    }

    /* renamed from: new, reason: not valid java name */
    public void m84new(int i) {
        this.f60if = i;
    }

    /* renamed from: try, reason: not valid java name */
    public void m85try(int i) {
        this.f58do = i;
    }
}
