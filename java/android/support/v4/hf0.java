package android.support.v4;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class hf0 {

    /* renamed from: do, reason: not valid java name */
    private Digest f2394do;

    public hf0(Digest digest) {
        this.f2394do = digest;
    }

    /* renamed from: do, reason: not valid java name */
    private void m3007do(byte[] bArr, byte[] bArr2) {
        byte b = 0;
        for (int i = 0; i < bArr.length; i++) {
            int i2 = (bArr[i] & 255) + (bArr2[i] & 255) + b;
            bArr[i] = (byte) i2;
            b = (byte) (i2 >> 8);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m3008if(byte[] bArr) {
        byte b = 1;
        for (int i = 0; i < bArr.length; i++) {
            int i2 = (bArr[i] & 255) + b;
            bArr[i] = (byte) i2;
            b = (byte) (i2 >> 8);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m3009for(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        this.f2394do.update(bArr, 0, bArr.length);
        byte[] bArr3 = new byte[this.f2394do.getDigestSize()];
        this.f2394do.doFinal(bArr3, 0);
        m3007do(bArr, bArr3);
        m3008if(bArr);
        return bArr3;
    }
}
