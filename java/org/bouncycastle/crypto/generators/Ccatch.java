package org.bouncycastle.crypto.generators;

import android.support.v4.gr0;
import android.support.v4.oi0;
import android.support.v4.pi0;
import android.support.v4.tw;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.crypto.generators.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch implements DerivationFunction {

    /* renamed from: do, reason: not valid java name */
    private pi0 f29810do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f29811for;

    /* renamed from: if, reason: not valid java name */
    private int f29812if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f29813new;

    /* renamed from: try, reason: not valid java name */
    private int f29814try;

    public Ccatch(Digest digest) {
        this.f29810do = new pi0(digest);
        this.f29812if = digest.getDigestSize();
    }

    /* renamed from: do, reason: not valid java name */
    private void m33618do() throws tw {
        int i = this.f29814try;
        int i2 = this.f29812if;
        int i3 = (i / i2) + 1;
        if (i3 >= 256) {
            throw new tw("HKDF cannot generate more than 255 blocks of HashLen size");
        }
        if (i != 0) {
            this.f29810do.update(this.f29813new, 0, i2);
        }
        pi0 pi0Var = this.f29810do;
        byte[] bArr = this.f29811for;
        pi0Var.update(bArr, 0, bArr.length);
        this.f29810do.update((byte) i3);
        this.f29810do.doFinal(this.f29813new, 0);
    }

    /* renamed from: if, reason: not valid java name */
    private gr0 m33619if(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            this.f29810do.init(new gr0(new byte[this.f29812if]));
        } else {
            this.f29810do.init(new gr0(bArr));
        }
        this.f29810do.update(bArr2, 0, bArr2.length);
        byte[] bArr3 = new byte[this.f29812if];
        this.f29810do.doFinal(bArr3, 0);
        return new gr0(bArr3);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws tw, IllegalArgumentException {
        int i3 = this.f29814try;
        int i4 = i3 + i2;
        int i5 = this.f29812if;
        if (i4 > i5 * 255) {
            throw new tw("HKDF may only be used for 255 * HashLen bytes of output");
        }
        if (i3 % i5 == 0) {
            m33618do();
        }
        int i6 = this.f29814try;
        int i7 = this.f29812if;
        int i8 = i6 % i7;
        int iMin = Math.min(i7 - (i6 % i7), i2);
        System.arraycopy(this.f29813new, i8, bArr, i, iMin);
        this.f29814try += iMin;
        int i9 = i2 - iMin;
        while (true) {
            i += iMin;
            if (i9 <= 0) {
                return i2;
            }
            m33618do();
            iMin = Math.min(this.f29812if, i9);
            System.arraycopy(this.f29813new, 0, bArr, i, iMin);
            this.f29814try += iMin;
            i9 -= iMin;
        }
    }

    public Digest getDigest() {
        return this.f29810do.m6079if();
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        pi0 pi0Var;
        gr0 gr0VarM33619if;
        if (!(derivationParameters instanceof oi0)) {
            throw new IllegalArgumentException("HKDF parameters required for HKDFBytesGenerator");
        }
        oi0 oi0Var = (oi0) derivationParameters;
        if (oi0Var.m5662try()) {
            pi0Var = this.f29810do;
            gr0VarM33619if = new gr0(oi0Var.m5660if());
        } else {
            pi0Var = this.f29810do;
            gr0VarM33619if = m33619if(oi0Var.m5661new(), oi0Var.m5660if());
        }
        pi0Var.init(gr0VarM33619if);
        this.f29811for = oi0Var.m5659for();
        this.f29814try = 0;
        this.f29813new = new byte[this.f29812if];
    }
}
