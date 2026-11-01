package android.support.v4;

/* loaded from: classes2.dex */
public class e10 {

    /* renamed from: break, reason: not valid java name */
    public static final e10 f1180break;

    /* renamed from: case, reason: not valid java name */
    public static final e10 f1181case;

    /* renamed from: catch, reason: not valid java name */
    public static final e10 f1182catch;

    /* renamed from: class, reason: not valid java name */
    public static final e10 f1183class;

    /* renamed from: const, reason: not valid java name */
    public static final e10 f1184const;

    /* renamed from: else, reason: not valid java name */
    public static final e10 f1185else;

    /* renamed from: final, reason: not valid java name */
    public static final e10 f1186final;

    /* renamed from: for, reason: not valid java name */
    public static final e10 f1187for;

    /* renamed from: goto, reason: not valid java name */
    public static final e10 f1188goto;

    /* renamed from: new, reason: not valid java name */
    public static final e10 f1189new;

    /* renamed from: super, reason: not valid java name */
    public static final e10[] f1190super;

    /* renamed from: this, reason: not valid java name */
    public static final e10 f1191this;

    /* renamed from: try, reason: not valid java name */
    public static final e10 f1192try;

    /* renamed from: do, reason: not valid java name */
    public final int f1193do;

    /* renamed from: if, reason: not valid java name */
    public final boolean f1194if;

    static {
        e10 e10Var = new e10(0, false);
        f1187for = e10Var;
        e10 e10Var2 = new e10(1, true);
        f1189new = e10Var2;
        e10 e10Var3 = new e10(2, false);
        f1192try = e10Var3;
        e10 e10Var4 = new e10(3, true);
        f1181case = e10Var4;
        e10 e10Var5 = new e10(4, false);
        f1185else = e10Var5;
        e10 e10Var6 = new e10(5, true);
        f1188goto = e10Var6;
        e10 e10Var7 = new e10(6, false);
        f1191this = e10Var7;
        e10 e10Var8 = new e10(7, true);
        f1180break = e10Var8;
        e10 e10Var9 = new e10(8, false);
        f1182catch = e10Var9;
        e10 e10Var10 = new e10(9, true);
        f1183class = e10Var10;
        e10 e10Var11 = new e10(10, false);
        f1184const = e10Var11;
        e10 e10Var12 = new e10(10, true);
        f1186final = e10Var12;
        f1190super = new e10[]{e10Var, e10Var2, e10Var3, e10Var4, e10Var5, e10Var6, e10Var7, e10Var8, e10Var9, e10Var10, e10Var11, e10Var12};
    }

    private e10(int i, boolean z) {
        this.f1193do = i;
        this.f1194if = z;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m1581do(e10 e10Var) {
        int i = this.f1193do;
        int i2 = e10Var.f1193do;
        return i < i2 || ((!this.f1194if || f1183class == this) && i == i2);
    }

    /* renamed from: for, reason: not valid java name */
    public e10 m1582for() {
        if (!this.f1194if) {
            return this;
        }
        e10 e10Var = f1190super[this.f1193do - 1];
        return !e10Var.f1194if ? e10Var : f1187for;
    }

    /* renamed from: if, reason: not valid java name */
    public e10 m1583if() {
        return !this.f1194if ? f1190super[this.f1193do + 1] : this;
    }
}
