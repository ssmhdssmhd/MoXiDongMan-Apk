package android.support.v4;

import java.security.MessageDigest;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class a6 extends MessageDigest {

    /* renamed from: do, reason: not valid java name */
    public Digest f46do;

    public a6(Digest digest) {
        super(digest.getAlgorithmName());
        this.f46do = digest;
    }

    @Override // java.security.MessageDigestSpi
    public byte[] engineDigest() {
        byte[] bArr = new byte[this.f46do.getDigestSize()];
        this.f46do.doFinal(bArr, 0);
        return bArr;
    }

    @Override // java.security.MessageDigestSpi
    public void engineReset() {
        this.f46do.reset();
    }

    @Override // java.security.MessageDigestSpi
    public void engineUpdate(byte b) {
        this.f46do.update(b);
    }

    @Override // java.security.MessageDigestSpi
    public void engineUpdate(byte[] bArr, int i, int i2) {
        this.f46do.update(bArr, i, i2);
    }
}
