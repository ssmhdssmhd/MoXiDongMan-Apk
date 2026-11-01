package org.bouncycastle.jce.provider;

import android.support.v4.f91;
import android.support.v4.kq0;
import android.support.v4.tw;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.jce.provider.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements DerivationFunction {

    /* renamed from: do, reason: not valid java name */
    private Digest f31646do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f31647for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f31648if;

    public Cnew(Digest digest) {
        this.f31646do = digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws tw, IllegalArgumentException {
        if (bArr.length - i2 < i) {
            throw new f91("output buffer too small");
        }
        long j = i2 * 8;
        if (j > this.f31646do.getDigestSize() * 8 * 2147483648L) {
            throw new IllegalArgumentException("Output length too large");
        }
        int digestSize = (int) (j / this.f31646do.getDigestSize());
        int digestSize2 = this.f31646do.getDigestSize();
        byte[] bArr2 = new byte[digestSize2];
        for (int i3 = 1; i3 <= digestSize; i3++) {
            Digest digest = this.f31646do;
            byte[] bArr3 = this.f31648if;
            digest.update(bArr3, 0, bArr3.length);
            this.f31646do.update((byte) (i3 & 255));
            this.f31646do.update((byte) ((i3 >> 8) & 255));
            this.f31646do.update((byte) ((i3 >> 16) & 255));
            this.f31646do.update((byte) ((i3 >> 24) & 255));
            Digest digest2 = this.f31646do;
            byte[] bArr4 = this.f31647for;
            digest2.update(bArr4, 0, bArr4.length);
            this.f31646do.doFinal(bArr2, 0);
            int i4 = i2 - i;
            if (i4 > digestSize2) {
                System.arraycopy(bArr2, 0, bArr, i, digestSize2);
                i += digestSize2;
            } else {
                System.arraycopy(bArr2, 0, bArr, i, i4);
            }
        }
        this.f31646do.reset();
        return i2;
    }

    public Digest getDigest() {
        return this.f31646do;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof kq0)) {
            throw new IllegalArgumentException("KDF parameters required for generator");
        }
        kq0 kq0Var = (kq0) derivationParameters;
        this.f31648if = kq0Var.m4472if();
        this.f31647for = kq0Var.m4471do();
    }
}
