package android.support.v4;

import org.bouncycastle.crypto.ExtendedDigest;

/* loaded from: classes3.dex */
public class z31 implements ExtendedDigest {

    /* renamed from: do, reason: not valid java name */
    private ExtendedDigest f8438do;

    public z31(ExtendedDigest extendedDigest) {
        if (extendedDigest == null) {
            throw new IllegalArgumentException("baseDigest must not be null");
        }
        this.f8438do = extendedDigest;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        return this.f8438do.doFinal(bArr, i);
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return this.f8438do.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.f8438do.getByteLength();
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.f8438do.getDigestSize();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.f8438do.reset();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        this.f8438do.update(b);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        this.f8438do.update(bArr, i, i2);
    }
}
