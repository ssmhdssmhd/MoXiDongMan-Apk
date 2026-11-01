package org.bouncycastle.crypto.macs;

import android.support.v4.f91;
import android.support.v4.gr0;
import android.support.v4.q3;
import android.support.v4.tw;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.engines.Ccase;

/* renamed from: org.bouncycastle.crypto.macs.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements Mac {

    /* renamed from: this, reason: not valid java name */
    private static final int f29924this = 8;

    /* renamed from: case, reason: not valid java name */
    private byte[] f29925case;

    /* renamed from: do, reason: not valid java name */
    private byte[] f29926do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f29927else;

    /* renamed from: for, reason: not valid java name */
    private int f29928for;

    /* renamed from: goto, reason: not valid java name */
    private byte[] f29929goto;

    /* renamed from: if, reason: not valid java name */
    private int f29930if;

    /* renamed from: new, reason: not valid java name */
    private int f29931new;

    /* renamed from: try, reason: not valid java name */
    private Ccase f29932try;

    public Cfor(int i, int i2) {
        this.f29932try = new Ccase(i);
        int i3 = i / 8;
        this.f29931new = i3;
        this.f29928for = i2 / 8;
        this.f29925case = new byte[i3];
        this.f29929goto = new byte[i3];
        this.f29927else = new byte[i3];
        this.f29926do = new byte[i3];
    }

    /* renamed from: do, reason: not valid java name */
    private void m33690do(byte[] bArr, int i) throws IllegalStateException, tw {
        m33691if(this.f29925case, 0, bArr, i, this.f29927else);
        this.f29932try.processBlock(this.f29927else, 0, this.f29925case, 0);
    }

    /* renamed from: if, reason: not valid java name */
    private void m33691if(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3) {
        int length = bArr.length - i;
        int i3 = this.f29931new;
        if (length < i3 || bArr2.length - i2 < i3 || bArr3.length < i3) {
            throw new IllegalArgumentException("some of input buffers too short");
        }
        for (int i4 = 0; i4 < this.f29931new; i4++) {
            bArr3[i4] = (byte) (bArr[i4 + i] ^ bArr2[i4 + i2]);
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw {
        int i2 = this.f29930if;
        byte[] bArr2 = this.f29926do;
        if (i2 % bArr2.length != 0) {
            throw new tw("input must be a multiple of blocksize");
        }
        m33691if(this.f29925case, 0, bArr2, 0, this.f29927else);
        m33691if(this.f29927else, 0, this.f29929goto, 0, this.f29925case);
        Ccase ccase = this.f29932try;
        byte[] bArr3 = this.f29925case;
        ccase.processBlock(bArr3, 0, bArr3, 0);
        int i3 = this.f29928for;
        if (i3 + i > bArr.length) {
            throw new f91("output buffer too short");
        }
        System.arraycopy(this.f29925case, 0, bArr, i, i3);
        return this.f29928for;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "DSTU7624Mac";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.f29928for;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalStateException, tw, IllegalArgumentException {
        if (!(cipherParameters instanceof gr0)) {
            throw new IllegalArgumentException("Invalid parameter passed to DSTU7624Mac");
        }
        this.f29932try.init(true, cipherParameters);
        Ccase ccase = this.f29932try;
        byte[] bArr = this.f29929goto;
        ccase.processBlock(bArr, 0, bArr, 0);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() throws IllegalStateException, tw {
        q3.c(this.f29925case, (byte) 0);
        q3.c(this.f29927else, (byte) 0);
        q3.c(this.f29929goto, (byte) 0);
        q3.c(this.f29926do, (byte) 0);
        this.f29932try.reset();
        Ccase ccase = this.f29932try;
        byte[] bArr = this.f29929goto;
        ccase.processBlock(bArr, 0, bArr, 0);
        this.f29930if = 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException, tw {
        int i = this.f29930if;
        byte[] bArr = this.f29926do;
        if (i == bArr.length) {
            m33690do(bArr, 0);
            this.f29930if = 0;
        }
        byte[] bArr2 = this.f29926do;
        int i2 = this.f29930if;
        this.f29930if = i2 + 1;
        bArr2[i2] = b;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        if (i2 < 0) {
            throw new IllegalArgumentException("can't have a negative input length!");
        }
        int blockSize = this.f29932try.getBlockSize();
        int i3 = this.f29930if;
        int i4 = blockSize - i3;
        if (i2 > i4) {
            System.arraycopy(bArr, i, this.f29926do, i3, i4);
            m33690do(this.f29926do, 0);
            this.f29930if = 0;
            i2 -= i4;
            i += i4;
            while (i2 > blockSize) {
                m33690do(bArr, i);
                i2 -= blockSize;
                i += blockSize;
            }
        }
        System.arraycopy(bArr, i, this.f29926do, this.f29930if, i2);
        this.f29930if += i2;
    }
}
