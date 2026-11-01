package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class ia1 extends l91 {

    /* renamed from: new, reason: not valid java name */
    private Digest f2653new;

    public ia1(Digest digest) {
        this.f2653new = digest;
    }

    /* renamed from: catch, reason: not valid java name */
    private byte[] m3325catch() {
        int digestSize = this.f2653new.getDigestSize();
        byte[] bArr = new byte[digestSize];
        Digest digest = this.f2653new;
        byte[] bArr2 = this.f3577do;
        digest.update(bArr2, 0, bArr2.length);
        Digest digest2 = this.f2653new;
        byte[] bArr3 = this.f3579if;
        digest2.update(bArr3, 0, bArr3.length);
        this.f2653new.doFinal(bArr, 0);
        for (int i = 1; i < this.f3578for; i++) {
            this.f2653new.update(bArr, 0, digestSize);
            this.f2653new.doFinal(bArr, 0);
        }
        return bArr;
    }

    @Override // android.support.v4.l91
    /* renamed from: case */
    public CipherParameters mo2234case(int i, int i2) {
        int i3 = i / 8;
        int i4 = i2 / 8;
        int i5 = i3 + i4;
        if (i5 <= this.f2653new.getDigestSize()) {
            byte[] bArrM3325catch = m3325catch();
            return new bc1(new gr0(bArrM3325catch, 0, i3), bArrM3325catch, i3, i4);
        }
        throw new IllegalArgumentException("Can't generate a derived key " + i5 + " bytes long.");
    }

    @Override // android.support.v4.l91
    /* renamed from: new */
    public CipherParameters mo2235new(int i) {
        return mo2236try(i);
    }

    @Override // android.support.v4.l91
    /* renamed from: try */
    public CipherParameters mo2236try(int i) {
        int i2 = i / 8;
        if (i2 <= this.f2653new.getDigestSize()) {
            return new gr0(m3325catch(), 0, i2);
        }
        throw new IllegalArgumentException("Can't generate a derived key " + i2 + " bytes long.");
    }
}
