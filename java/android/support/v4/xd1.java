package android.support.v4;

/* loaded from: classes2.dex */
public final class xd1 extends kw0 {

    /* renamed from: goto, reason: not valid java name */
    private static final int f7874goto = 2;

    /* renamed from: case, reason: not valid java name */
    private final int f7875case;

    /* renamed from: else, reason: not valid java name */
    private final int f7876else;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f7877for;

    /* renamed from: new, reason: not valid java name */
    private final int f7878new;

    /* renamed from: try, reason: not valid java name */
    private final int f7879try;

    public xd1(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        super(i5, i6);
        if (i3 + i5 > i || i4 + i6 > i2) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.f7877for = bArr;
        this.f7878new = i;
        this.f7879try = i2;
        this.f7875case = i3;
        this.f7876else = i4;
        if (z) {
            m9458final(i5, i6);
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m9458final(int i, int i2) {
        byte[] bArr = this.f7877for;
        int i3 = (this.f7876else * this.f7878new) + this.f7875case;
        int i4 = 0;
        while (i4 < i2) {
            int i5 = (i / 2) + i3;
            int i6 = (i3 + i) - 1;
            int i7 = i3;
            while (i7 < i5) {
                byte b = bArr[i7];
                bArr[i7] = bArr[i6];
                bArr[i6] = b;
                i7++;
                i6--;
            }
            i4++;
            i3 += this.f7878new;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public int m9459catch() {
        return m4521if() / 2;
    }

    /* renamed from: class, reason: not valid java name */
    public int m9460class() {
        return m4524try() / 2;
    }

    /* renamed from: const, reason: not valid java name */
    public int[] m9461const() {
        int iM4524try = m4524try() / 2;
        int iM4521if = m4521if() / 2;
        int[] iArr = new int[iM4524try * iM4521if];
        byte[] bArr = this.f7877for;
        int i = (this.f7876else * this.f7878new) + this.f7875case;
        for (int i2 = 0; i2 < iM4521if; i2++) {
            int i3 = i2 * iM4524try;
            for (int i4 = 0; i4 < iM4524try; i4++) {
                iArr[i3 + i4] = ((bArr[(i4 << 1) + i] & 255) * 65793) | (-16777216);
            }
            i += this.f7878new << 1;
        }
        return iArr;
    }

    @Override // android.support.v4.kw0
    /* renamed from: do */
    public kw0 mo4517do(int i, int i2, int i3, int i4) {
        return new xd1(this.f7877for, this.f7878new, this.f7879try, this.f7875case + i, this.f7876else + i2, i3, i4, false);
    }

    @Override // android.support.v4.kw0
    /* renamed from: else */
    public boolean mo4518else() {
        return true;
    }

    @Override // android.support.v4.kw0
    /* renamed from: for */
    public byte[] mo4519for() {
        int iM4524try = m4524try();
        int iM4521if = m4521if();
        int i = this.f7878new;
        if (iM4524try == i && iM4521if == this.f7879try) {
            return this.f7877for;
        }
        int i2 = iM4524try * iM4521if;
        byte[] bArr = new byte[i2];
        int i3 = (this.f7876else * i) + this.f7875case;
        if (iM4524try == i) {
            System.arraycopy(this.f7877for, i3, bArr, 0, i2);
            return bArr;
        }
        for (int i4 = 0; i4 < iM4521if; i4++) {
            System.arraycopy(this.f7877for, i3, bArr, i4 * iM4524try, iM4524try);
            i3 += this.f7878new;
        }
        return bArr;
    }

    @Override // android.support.v4.kw0
    /* renamed from: new */
    public byte[] mo4522new(int i, byte[] bArr) {
        if (i < 0 || i >= m4521if()) {
            throw new IllegalArgumentException("Requested row is outside the image: ".concat(String.valueOf(i)));
        }
        int iM4524try = m4524try();
        if (bArr == null || bArr.length < iM4524try) {
            bArr = new byte[iM4524try];
        }
        System.arraycopy(this.f7877for, ((i + this.f7876else) * this.f7878new) + this.f7875case, bArr, 0, iM4524try);
        return bArr;
    }
}
