package android.support.v4;

/* loaded from: classes3.dex */
public abstract class la0 {

    /* renamed from: do, reason: not valid java name */
    public final int f3583do;

    /* renamed from: if, reason: not valid java name */
    public la0 f3584if;

    public la0(int i) {
        this(i, null);
    }

    public la0(int i, la0 la0Var) {
        if (i != 262144 && i != 327680) {
            throw new IllegalArgumentException();
        }
        this.f3583do = i;
        this.f3584if = la0Var;
    }

    /* renamed from: do, reason: not valid java name */
    public d2 mo4626do(String str, boolean z) {
        la0 la0Var = this.f3584if;
        if (la0Var != null) {
            return la0Var.mo4626do(str, z);
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public void mo4627for() {
        la0 la0Var = this.f3584if;
        if (la0Var != null) {
            la0Var.mo4627for();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void mo4628if(o4 o4Var) {
        la0 la0Var = this.f3584if;
        if (la0Var != null) {
            la0Var.mo4628if(o4Var);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public d2 mo4629new(int i, p92 p92Var, String str, boolean z) {
        if (this.f3583do < 327680) {
            throw new RuntimeException();
        }
        la0 la0Var = this.f3584if;
        if (la0Var != null) {
            return la0Var.mo4629new(i, p92Var, str, z);
        }
        return null;
    }
}
