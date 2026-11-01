package android.support.v4;

/* loaded from: classes3.dex */
public class rn0 {

    /* renamed from: for, reason: not valid java name */
    public static final int f5883for = 1000;

    /* renamed from: do, reason: not valid java name */
    public int f5888do;

    /* renamed from: if, reason: not valid java name */
    public int f5889if;

    /* renamed from: new, reason: not valid java name */
    public static final rn0 f5885new = new rn0(-1, -2);

    /* renamed from: try, reason: not valid java name */
    public static rn0[] f5887try = new rn0[1001];

    /* renamed from: case, reason: not valid java name */
    public static int f5881case = 0;

    /* renamed from: else, reason: not valid java name */
    public static int f5882else = 0;

    /* renamed from: goto, reason: not valid java name */
    public static int f5884goto = 0;

    /* renamed from: this, reason: not valid java name */
    public static int f5886this = 0;

    public rn0(int i, int i2) {
        this.f5888do = i;
        this.f5889if = i2;
    }

    /* renamed from: case, reason: not valid java name */
    public static rn0 m7059case(int i, int i2) {
        if (i != i2 || i < 0 || i > 1000) {
            return new rn0(i, i2);
        }
        rn0[] rn0VarArr = f5887try;
        if (rn0VarArr[i] == null) {
            rn0VarArr[i] = new rn0(i, i);
        }
        return f5887try[i];
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m7060break(rn0 rn0Var) {
        int i = this.f5888do;
        return i > rn0Var.f5888do && i <= rn0Var.f5889if;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m7061catch(rn0 rn0Var) {
        int i = this.f5888do;
        int i2 = rn0Var.f5888do;
        return i < i2 && this.f5889if < i2;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m7062class(rn0 rn0Var) {
        int i = this.f5888do;
        int i2 = rn0Var.f5888do;
        return i <= i2 && this.f5889if >= i2;
    }

    /* renamed from: const, reason: not valid java name */
    public rn0 m7063const(rn0 rn0Var) {
        return m7059case(Math.min(this.f5888do, rn0Var.f5888do), Math.max(this.f5889if, rn0Var.f5889if));
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m7064do(rn0 rn0Var) {
        return this.f5888do == rn0Var.f5889if + 1 || this.f5889if == rn0Var.f5888do - 1;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m7065else(rn0 rn0Var) {
        return rn0Var.f5888do >= this.f5888do && rn0Var.f5889if <= this.f5889if;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof rn0)) {
            return false;
        }
        rn0 rn0Var = (rn0) obj;
        return this.f5888do == rn0Var.f5888do && this.f5889if == rn0Var.f5889if;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m7066for(rn0 rn0Var) {
        return m7061catch(rn0Var) || m7070this(rn0Var);
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m7067goto(rn0 rn0Var) {
        return this.f5888do > rn0Var.f5888do;
    }

    public int hashCode() {
        return ((713 + this.f5888do) * 31) + this.f5889if;
    }

    /* renamed from: if, reason: not valid java name */
    public rn0 m7068if(rn0 rn0Var) {
        if (rn0Var.m7062class(this)) {
            return m7059case(Math.max(this.f5888do, rn0Var.f5889if + 1), this.f5889if);
        }
        if (rn0Var.m7060break(this)) {
            return m7059case(this.f5888do, rn0Var.f5888do - 1);
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public rn0 m7069new(rn0 rn0Var) {
        return m7059case(Math.max(this.f5888do, rn0Var.f5888do), Math.min(this.f5889if, rn0Var.f5889if));
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m7070this(rn0 rn0Var) {
        return this.f5888do > rn0Var.f5889if;
    }

    public String toString() {
        return this.f5888do + ".." + this.f5889if;
    }

    /* renamed from: try, reason: not valid java name */
    public int m7071try() {
        int i = this.f5889if;
        int i2 = this.f5888do;
        if (i < i2) {
            return 0;
        }
        return (i - i2) + 1;
    }
}
