package android.support.v4;

import org.antlr.v4.runtime.atn.Ccatch;

/* loaded from: classes3.dex */
public final class f80 extends Ccatch {

    /* renamed from: final, reason: not valid java name */
    private final int f1712final;

    public f80(Cfinally cfinally) {
        this(cfinally, -1);
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: do */
    public int mo310do() {
        return 1;
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: if */
    public boolean mo311if() {
        return true;
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: new */
    public boolean mo312new(int i, int i2, int i3) {
        return false;
    }

    public String toString() {
        return "epsilon";
    }

    /* renamed from: try, reason: not valid java name */
    public int m2194try() {
        return this.f1712final;
    }

    public f80(Cfinally cfinally, int i) {
        super(cfinally);
        this.f1712final = i;
    }
}
