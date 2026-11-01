package android.support.v4;

import org.antlr.v4.runtime.atn.Ccatch;

/* loaded from: classes3.dex */
public final class g4 extends Ccatch {

    /* renamed from: final, reason: not valid java name */
    public final int f2050final;

    public g4(Cfinally cfinally, int i) {
        super(cfinally);
        this.f2050final = i;
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: do */
    public int mo310do() {
        return 5;
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: for, reason: not valid java name */
    public sn0 mo2573for() {
        return sn0.m7517super(this.f2050final);
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: new */
    public boolean mo312new(int i, int i2, int i3) {
        return this.f2050final == i;
    }

    public String toString() {
        return String.valueOf(this.f2050final);
    }
}
