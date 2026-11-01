package android.support.v4;

/* loaded from: classes2.dex */
public final class yn0 extends kw0 {

    /* renamed from: for, reason: not valid java name */
    private final kw0 f8275for;

    public yn0(kw0 kw0Var) {
        super(kw0Var.m4524try(), kw0Var.m4521if());
        this.f8275for = kw0Var;
    }

    @Override // android.support.v4.kw0
    /* renamed from: break */
    public kw0 mo4515break() {
        return new yn0(this.f8275for.mo4515break());
    }

    @Override // android.support.v4.kw0
    /* renamed from: case */
    public kw0 mo4516case() {
        return this.f8275for;
    }

    @Override // android.support.v4.kw0
    /* renamed from: do */
    public kw0 mo4517do(int i, int i2, int i3, int i4) {
        return new yn0(this.f8275for.mo4517do(i, i2, i3, i4));
    }

    @Override // android.support.v4.kw0
    /* renamed from: else */
    public boolean mo4518else() {
        return this.f8275for.mo4518else();
    }

    @Override // android.support.v4.kw0
    /* renamed from: for */
    public byte[] mo4519for() {
        byte[] bArrMo4519for = this.f8275for.mo4519for();
        int iM4524try = m4524try() * m4521if();
        byte[] bArr = new byte[iM4524try];
        for (int i = 0; i < iM4524try; i++) {
            bArr[i] = (byte) (255 - (bArrMo4519for[i] & 255));
        }
        return bArr;
    }

    @Override // android.support.v4.kw0
    /* renamed from: goto */
    public boolean mo4520goto() {
        return this.f8275for.mo4520goto();
    }

    @Override // android.support.v4.kw0
    /* renamed from: new */
    public byte[] mo4522new(int i, byte[] bArr) {
        byte[] bArrMo4522new = this.f8275for.mo4522new(i, bArr);
        int iM4524try = m4524try();
        for (int i2 = 0; i2 < iM4524try; i2++) {
            bArrMo4522new[i2] = (byte) (255 - (bArrMo4522new[i2] & 255));
        }
        return bArrMo4522new;
    }

    @Override // android.support.v4.kw0
    /* renamed from: this */
    public kw0 mo4523this() {
        return new yn0(this.f8275for.mo4523this());
    }
}
