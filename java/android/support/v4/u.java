package android.support.v4;

import org.antlr.v4.runtime.atn.Ccatch;

/* loaded from: classes3.dex */
public final class u extends Ccatch {

    /* renamed from: final, reason: not valid java name */
    public final int f6714final;

    /* renamed from: super, reason: not valid java name */
    public final int f6715super;

    /* renamed from: throw, reason: not valid java name */
    public final boolean f6716throw;

    public u(Cfinally cfinally, int i) {
        this(cfinally, i, -1, false);
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: do */
    public int mo310do() {
        return 6;
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
        return "action_" + this.f6714final + ":" + this.f6715super;
    }

    public u(Cfinally cfinally, int i, int i2, boolean z) {
        super(cfinally);
        this.f6714final = i;
        this.f6715super = i2;
        this.f6716throw = z;
    }
}
