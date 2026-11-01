package org.bouncycastle.pqc.math.linearalgebra;

/* renamed from: org.bouncycastle.pqc.math.linearalgebra.new, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cnew implements GFElement {

    /* renamed from: do, reason: not valid java name */
    public Ctry f32635do;

    /* renamed from: if, reason: not valid java name */
    public int f32636if;

    /* renamed from: break */
    public abstract void mo36136break();

    /* renamed from: case */
    public abstract void mo36137case();

    /* renamed from: catch */
    public abstract void mo36138catch();

    /* renamed from: class */
    public abstract boolean mo36139class(int i);

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public abstract Object clone();

    /* renamed from: const */
    public abstract boolean mo36140const();

    /* renamed from: do */
    public abstract void mo36141do();

    /* renamed from: else */
    public abstract Cnew mo36142else() throws RuntimeException;

    /* renamed from: final */
    public abstract int mo36143final();

    /* renamed from: for, reason: not valid java name */
    public final Cnew m36284for(Ctry ctry) {
        return this.f32635do.m36305for(this, ctry);
    }

    /* renamed from: goto */
    public abstract Cnew mo36144goto();

    /* renamed from: if */
    public abstract void mo36145if();

    /* renamed from: new, reason: not valid java name */
    public final Ctry m36285new() {
        return this.f32635do;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public final GFElement subtract(GFElement gFElement) {
        return add(gFElement);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public final void subtractFromThis(GFElement gFElement) throws RuntimeException {
        addToThis(gFElement);
    }

    /* renamed from: this */
    public abstract Cnew mo36148this();

    /* renamed from: try */
    public abstract Cnew mo36149try();
}
