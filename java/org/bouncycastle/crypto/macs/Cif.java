package org.bouncycastle.crypto.macs;

import android.support.v4.f91;
import android.support.v4.gr0;
import android.support.v4.ib1;
import android.support.v4.tw;
import android.support.v4.yv;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;

/* renamed from: org.bouncycastle.crypto.macs.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements Mac {

    /* renamed from: case, reason: not valid java name */
    private static final int f29956case = 8;

    /* renamed from: do, reason: not valid java name */
    private yv f29957do;

    /* renamed from: if, reason: not valid java name */
    private int f29959if;

    /* renamed from: try, reason: not valid java name */
    private long f29961try;

    /* renamed from: for, reason: not valid java name */
    private byte[] f29958for = null;

    /* renamed from: new, reason: not valid java name */
    private byte[] f29960new = null;

    public Cif(int i) {
        this.f29957do = new yv(i);
        this.f29959if = i / 8;
    }

    /* renamed from: do, reason: not valid java name */
    private void m33695do() {
        int byteLength = this.f29957do.getByteLength() - ((int) (this.f29961try % this.f29957do.getByteLength()));
        if (byteLength < 13) {
            byteLength += this.f29957do.getByteLength();
        }
        byte[] bArr = new byte[byteLength];
        bArr[0] = Byte.MIN_VALUE;
        ib1.m3356extends(this.f29961try * 8, bArr, byteLength - 12);
        this.f29957do.update(bArr, 0, byteLength);
    }

    /* renamed from: if, reason: not valid java name */
    private byte[] m33696if(byte[] bArr) {
        int length = (((bArr.length + this.f29957do.getByteLength()) - 1) / this.f29957do.getByteLength()) * this.f29957do.getByteLength();
        if (this.f29957do.getByteLength() - (bArr.length % this.f29957do.getByteLength()) < 13) {
            length += this.f29957do.getByteLength();
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        bArr2[bArr.length] = Byte.MIN_VALUE;
        ib1.m3347break(bArr.length * 8, bArr2, length - 12);
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw {
        if (this.f29958for == null) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (bArr.length - i < this.f29959if) {
            throw new f91("Output buffer too short");
        }
        m33695do();
        yv yvVar = this.f29957do;
        byte[] bArr2 = this.f29960new;
        yvVar.update(bArr2, 0, bArr2.length);
        this.f29961try = 0L;
        return this.f29957do.doFinal(bArr, i);
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "DSTU7564Mac";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.f29959if;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof gr0)) {
            throw new IllegalArgumentException("Bad parameter passed");
        }
        byte[] bArrM2770do = ((gr0) cipherParameters).m2770do();
        this.f29960new = new byte[bArrM2770do.length];
        this.f29958for = m33696if(bArrM2770do);
        int i = 0;
        while (true) {
            byte[] bArr = this.f29960new;
            if (i >= bArr.length) {
                yv yvVar = this.f29957do;
                byte[] bArr2 = this.f29958for;
                yvVar.update(bArr2, 0, bArr2.length);
                return;
            }
            bArr[i] = (byte) (bArrM2770do[i] ^ (-1));
            i++;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        this.f29961try = 0L;
        this.f29957do.reset();
        byte[] bArr = this.f29958for;
        if (bArr != null) {
            this.f29957do.update(bArr, 0, bArr.length);
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException {
        this.f29957do.update(b);
        this.f29961try++;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        if (bArr.length - i < i2) {
            throw new tw("Input buffer too short");
        }
        if (this.f29958for != null) {
            this.f29957do.update(bArr, i, i2);
            this.f29961try += i2;
        } else {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
    }
}
