package org.bouncycastle.crypto;

import android.support.v4.tn0;
import android.support.v4.tw;

/* renamed from: org.bouncycastle.crypto.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    public byte[] f29415do;

    /* renamed from: for, reason: not valid java name */
    private final AsymmetricBlockCipher f29416for;

    /* renamed from: if, reason: not valid java name */
    public int f29417if;

    public Cdo(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.f29416for = asymmetricBlockCipher;
    }

    /* renamed from: case, reason: not valid java name */
    public void m33347case(boolean z, CipherParameters cipherParameters) {
        m33354this();
        this.f29416for.init(z, cipherParameters);
        this.f29415do = new byte[this.f29416for.getInputBlockSize() + (z ? 1 : 0)];
        this.f29417if = 0;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m33348do() throws tn0 {
        byte[] bArrProcessBlock = this.f29416for.processBlock(this.f29415do, 0, this.f29417if);
        m33354this();
        return bArrProcessBlock;
    }

    /* renamed from: else, reason: not valid java name */
    public void m33349else(byte b) {
        int i = this.f29417if;
        byte[] bArr = this.f29415do;
        if (i >= bArr.length) {
            throw new tw("attempt to process message too long for cipher");
        }
        this.f29417if = i + 1;
        bArr[i] = b;
    }

    /* renamed from: for, reason: not valid java name */
    public int m33350for() {
        return this.f29416for.getInputBlockSize();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m33351goto(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return;
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int i3 = this.f29417if;
        int i4 = i3 + i2;
        byte[] bArr2 = this.f29415do;
        if (i4 > bArr2.length) {
            throw new tw("attempt to process message too long for cipher");
        }
        System.arraycopy(bArr, i, bArr2, i3, i2);
        this.f29417if += i2;
    }

    /* renamed from: if, reason: not valid java name */
    public int m33352if() {
        return this.f29417if;
    }

    /* renamed from: new, reason: not valid java name */
    public int m33353new() {
        return this.f29416for.getOutputBlockSize();
    }

    /* renamed from: this, reason: not valid java name */
    public void m33354this() {
        if (this.f29415do != null) {
            int i = 0;
            while (true) {
                byte[] bArr = this.f29415do;
                if (i >= bArr.length) {
                    break;
                }
                bArr[i] = 0;
                i++;
            }
        }
        this.f29417if = 0;
    }

    /* renamed from: try, reason: not valid java name */
    public AsymmetricBlockCipher m33355try() {
        return this.f29416for;
    }
}
