package android.support.v4;

import org.antlr.v4.runtime.atn.Ccatch;

/* loaded from: classes3.dex */
public final class il1 extends Ccatch {

    /* renamed from: final, reason: not valid java name */
    public final int f2801final;

    /* renamed from: super, reason: not valid java name */
    public final int f2802super;

    public il1(Cfinally cfinally, int i, int i2) {
        super(cfinally);
        this.f2801final = i;
        this.f2802super = i2;
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: do */
    public int mo310do() {
        return 2;
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: for */
    public sn0 mo2573for() {
        return sn0.m7518throw(this.f2801final, this.f2802super);
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: new */
    public boolean mo312new(int i, int i2, int i3) {
        return i >= this.f2801final && i <= this.f2802super;
    }

    public String toString() {
        StringBuilder sbAppendCodePoint = new StringBuilder("'").appendCodePoint(this.f2801final);
        sbAppendCodePoint.append("'..'");
        StringBuilder sbAppendCodePoint2 = sbAppendCodePoint.appendCodePoint(this.f2802super);
        sbAppendCodePoint2.append("'");
        return sbAppendCodePoint2.toString();
    }
}
