package android.support.v4;

import org.antlr.v4.runtime.atn.Ccatch;

/* loaded from: classes3.dex */
public final class ap1 extends Ccatch {

    /* renamed from: final, reason: not valid java name */
    public final int f224final;

    /* renamed from: super, reason: not valid java name */
    public final int f225super;

    /* renamed from: throw, reason: not valid java name */
    public Cfinally f226throw;

    @Deprecated
    public ap1(xo1 xo1Var, int i, Cfinally cfinally) {
        this(xo1Var, i, 0, cfinally);
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: do, reason: not valid java name */
    public int mo310do() {
        return 3;
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: if, reason: not valid java name */
    public boolean mo311if() {
        return true;
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: new, reason: not valid java name */
    public boolean mo312new(int i, int i2, int i3) {
        return false;
    }

    public ap1(xo1 xo1Var, int i, int i2, Cfinally cfinally) {
        super(xo1Var);
        this.f224final = i;
        this.f225super = i2;
        this.f226throw = cfinally;
    }
}
