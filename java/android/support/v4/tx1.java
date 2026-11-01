package android.support.v4;

import org.bouncycastle.crypto.ExtendedDigest;

/* loaded from: classes3.dex */
public class tx1 implements ExtendedDigest {

    /* renamed from: do, reason: not valid java name */
    private ExtendedDigest f6701do;

    /* renamed from: if, reason: not valid java name */
    private int f6702if;

    public tx1(ExtendedDigest extendedDigest, int i) {
        if (extendedDigest == null) {
            throw new IllegalArgumentException("baseDigest must not be null");
        }
        if (i > extendedDigest.getDigestSize()) {
            throw new IllegalArgumentException("baseDigest output not large enough to support length");
        }
        this.f6701do = extendedDigest;
        this.f6702if = i;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        byte[] bArr2 = new byte[this.f6701do.getDigestSize()];
        this.f6701do.doFinal(bArr2, 0);
        System.arraycopy(bArr2, 0, bArr, i, this.f6702if);
        return this.f6702if;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return this.f6701do.getAlgorithmName() + "(" + (this.f6702if * 8) + ")";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.f6701do.getByteLength();
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.f6702if;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.f6701do.reset();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        this.f6701do.update(b);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        this.f6701do.update(bArr, i, i2);
    }
}
