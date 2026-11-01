package android.support.v4;

/* loaded from: classes2.dex */
public class yn1 {

    /* renamed from: do, reason: not valid java name */
    private final float f8276do;

    /* renamed from: if, reason: not valid java name */
    private final float f8277if;

    public yn1(float f, float f2) {
        this.f8276do = f;
        this.f8277if = f2;
    }

    /* renamed from: do, reason: not valid java name */
    private static float m9908do(yn1 yn1Var, yn1 yn1Var2, yn1 yn1Var3) {
        float f = yn1Var2.f8276do;
        float f2 = yn1Var2.f8277if;
        return ((yn1Var3.f8276do - f) * (yn1Var.f8277if - f2)) - ((yn1Var3.f8277if - f2) * (yn1Var.f8276do - f));
    }

    /* renamed from: if, reason: not valid java name */
    public static float m9909if(yn1 yn1Var, yn1 yn1Var2) {
        return xx0.m9608do(yn1Var.f8276do, yn1Var.f8277if, yn1Var2.f8276do, yn1Var2.f8277if);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m9910try(yn1[] yn1VarArr) {
        yn1 yn1Var;
        yn1 yn1Var2;
        yn1 yn1Var3;
        float fM9909if = m9909if(yn1VarArr[0], yn1VarArr[1]);
        float fM9909if2 = m9909if(yn1VarArr[1], yn1VarArr[2]);
        float fM9909if3 = m9909if(yn1VarArr[0], yn1VarArr[2]);
        if (fM9909if2 >= fM9909if && fM9909if2 >= fM9909if3) {
            yn1Var = yn1VarArr[0];
            yn1Var2 = yn1VarArr[1];
            yn1Var3 = yn1VarArr[2];
        } else if (fM9909if3 < fM9909if2 || fM9909if3 < fM9909if) {
            yn1Var = yn1VarArr[2];
            yn1Var2 = yn1VarArr[0];
            yn1Var3 = yn1VarArr[1];
        } else {
            yn1Var = yn1VarArr[1];
            yn1Var2 = yn1VarArr[0];
            yn1Var3 = yn1VarArr[2];
        }
        if (m9908do(yn1Var2, yn1Var, yn1Var3) < 0.0f) {
            yn1 yn1Var4 = yn1Var3;
            yn1Var3 = yn1Var2;
            yn1Var2 = yn1Var4;
        }
        yn1VarArr[0] = yn1Var2;
        yn1VarArr[1] = yn1Var;
        yn1VarArr[2] = yn1Var3;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof yn1) {
            yn1 yn1Var = (yn1) obj;
            if (this.f8276do == yn1Var.f8276do && this.f8277if == yn1Var.f8277if) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public final float m9911for() {
        return this.f8276do;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.f8276do) * 31) + Float.floatToIntBits(this.f8277if);
    }

    /* renamed from: new, reason: not valid java name */
    public final float m9912new() {
        return this.f8277if;
    }

    public final String toString() {
        return "(" + this.f8276do + ',' + this.f8277if + ')';
    }
}
