package android.support.v4;

import org.antlr.v4.runtime.atn.Ccatch;

/* loaded from: classes3.dex */
public class lx1 extends Ccatch {

    /* renamed from: final, reason: not valid java name */
    public final sn0 f3790final;

    public lx1(Cfinally cfinally, sn0 sn0Var) {
        super(cfinally);
        this.f3790final = sn0Var == null ? sn0.m7517super(0) : sn0Var;
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: do */
    public int mo310do() {
        return 7;
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: for */
    public sn0 mo2573for() {
        return this.f3790final;
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: new */
    public boolean mo312new(int i, int i2, int i3) {
        return this.f3790final.contains(i);
    }

    public String toString() {
        return this.f3790final.toString();
    }
}
