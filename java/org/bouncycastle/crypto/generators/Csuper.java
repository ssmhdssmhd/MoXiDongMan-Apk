package org.bouncycastle.crypto.generators;

import android.support.v4.f91;
import android.support.v4.qw0;
import android.support.v4.tw;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.crypto.generators.super, reason: invalid class name */
/* loaded from: classes3.dex */
public class Csuper implements DerivationFunction {

    /* renamed from: do, reason: not valid java name */
    private Digest f29883do;

    /* renamed from: for, reason: not valid java name */
    private int f29884for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f29885if;

    public Csuper(Digest digest) {
        this.f29883do = digest;
        this.f29884for = digest.getDigestSize();
    }

    /* renamed from: do, reason: not valid java name */
    private void m33678do(int i, byte[] bArr) {
        bArr[0] = (byte) (i >>> 24);
        bArr[1] = (byte) (i >>> 16);
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) (i >>> 0);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws tw, IllegalArgumentException {
        int i3;
        if (bArr.length - i2 < i) {
            throw new f91("output buffer too small");
        }
        byte[] bArr2 = new byte[this.f29884for];
        byte[] bArr3 = new byte[4];
        this.f29883do.reset();
        if (i2 > this.f29884for) {
            i3 = 0;
            do {
                m33678do(i3, bArr3);
                Digest digest = this.f29883do;
                byte[] bArr4 = this.f29885if;
                digest.update(bArr4, 0, bArr4.length);
                this.f29883do.update(bArr3, 0, 4);
                this.f29883do.doFinal(bArr2, 0);
                int i4 = this.f29884for;
                System.arraycopy(bArr2, 0, bArr, (i3 * i4) + i, i4);
                i3++;
            } while (i3 < i2 / this.f29884for);
        } else {
            i3 = 0;
        }
        if (this.f29884for * i3 < i2) {
            m33678do(i3, bArr3);
            Digest digest2 = this.f29883do;
            byte[] bArr5 = this.f29885if;
            digest2.update(bArr5, 0, bArr5.length);
            this.f29883do.update(bArr3, 0, 4);
            this.f29883do.doFinal(bArr2, 0);
            int i5 = this.f29884for;
            System.arraycopy(bArr2, 0, bArr, i + (i3 * i5), i2 - (i3 * i5));
        }
        return i2;
    }

    public Digest getDigest() {
        return this.f29883do;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof qw0)) {
            throw new IllegalArgumentException("MGF parameters required for MGF1Generator");
        }
        this.f29885if = ((qw0) derivationParameters).m6671do();
    }
}
