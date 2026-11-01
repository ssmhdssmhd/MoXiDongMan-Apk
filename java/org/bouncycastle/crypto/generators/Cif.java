package org.bouncycastle.crypto.generators;

import android.support.v4.f91;
import android.support.v4.ib1;
import android.support.v4.il0;
import android.support.v4.kq0;
import android.support.v4.tw;
import androidx.core.view.InputDeviceCompat;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.DigestDerivationFunction;

/* renamed from: org.bouncycastle.crypto.generators.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements DigestDerivationFunction {

    /* renamed from: do, reason: not valid java name */
    private int f29878do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f29879for;

    /* renamed from: if, reason: not valid java name */
    private Digest f29880if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f29881new;

    public Cif(int i, Digest digest) {
        this.f29878do = i;
        this.f29880if = digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws tw, IllegalArgumentException {
        int i3 = i2;
        int i4 = i;
        if (bArr.length - i3 < i4) {
            throw new f91("output buffer too small");
        }
        long j = i3;
        int digestSize = this.f29880if.getDigestSize();
        if (j > 8589934591L) {
            throw new IllegalArgumentException("Output length too large");
        }
        long j2 = digestSize;
        int i5 = (int) (((j + j2) - 1) / j2);
        byte[] bArr2 = new byte[this.f29880if.getDigestSize()];
        byte[] bArr3 = new byte[4];
        ib1.m3348case(this.f29878do, bArr3, 0);
        int i6 = this.f29878do & InputDeviceCompat.SOURCE_ANY;
        for (int i7 = 0; i7 < i5; i7++) {
            Digest digest = this.f29880if;
            byte[] bArr4 = this.f29879for;
            digest.update(bArr4, 0, bArr4.length);
            this.f29880if.update(bArr3, 0, 4);
            byte[] bArr5 = this.f29881new;
            if (bArr5 != null) {
                this.f29880if.update(bArr5, 0, bArr5.length);
            }
            this.f29880if.doFinal(bArr2, 0);
            if (i3 > digestSize) {
                System.arraycopy(bArr2, 0, bArr, i4, digestSize);
                i4 += digestSize;
                i3 -= digestSize;
            } else {
                System.arraycopy(bArr2, 0, bArr, i4, i3);
            }
            byte b = (byte) (bArr3[3] + 1);
            bArr3[3] = b;
            if (b == 0) {
                i6 += 256;
                ib1.m3348case(i6, bArr3, 0);
            }
        }
        this.f29880if.reset();
        return (int) j;
    }

    @Override // org.bouncycastle.crypto.DigestDerivationFunction
    public Digest getDigest() {
        return this.f29880if;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (derivationParameters instanceof kq0) {
            kq0 kq0Var = (kq0) derivationParameters;
            this.f29879for = kq0Var.m4472if();
            this.f29881new = kq0Var.m4471do();
        } else {
            if (!(derivationParameters instanceof il0)) {
                throw new IllegalArgumentException("KDF parameters required for generator");
            }
            this.f29879for = ((il0) derivationParameters).m3507do();
            this.f29881new = null;
        }
    }
}
