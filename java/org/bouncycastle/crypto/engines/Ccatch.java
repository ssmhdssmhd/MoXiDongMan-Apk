package org.bouncycastle.crypto.engines;

import android.support.v4.bc1;
import android.support.v4.f91;
import android.support.v4.gr0;
import android.support.v4.tw;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.StreamCipher;

/* renamed from: org.bouncycastle.crypto.engines.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch implements StreamCipher {

    /* renamed from: this, reason: not valid java name */
    private static final int f29624this = 5;

    /* renamed from: case, reason: not valid java name */
    private int f29625case;

    /* renamed from: do, reason: not valid java name */
    private byte[] f29626do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f29628for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f29630if;

    /* renamed from: new, reason: not valid java name */
    private int[] f29631new;

    /* renamed from: try, reason: not valid java name */
    private int[] f29632try;

    /* renamed from: else, reason: not valid java name */
    private int f29627else = 2;

    /* renamed from: goto, reason: not valid java name */
    private boolean f29629goto = false;

    /* renamed from: case, reason: not valid java name */
    private void m33432case() {
        int iM33437if = m33437if();
        this.f29625case = iM33437if;
        byte[] bArr = this.f29628for;
        bArr[0] = (byte) iM33437if;
        bArr[1] = (byte) (iM33437if >> 8);
        this.f29632try = m33436goto(this.f29632try, m33438new() ^ this.f29631new[0]);
        this.f29631new = m33436goto(this.f29631new, m33435for());
    }

    /* renamed from: do, reason: not valid java name */
    private byte m33433do() {
        if (this.f29627else > 1) {
            m33432case();
            this.f29627else = 0;
        }
        byte[] bArr = this.f29628for;
        int i = this.f29627else;
        this.f29627else = i + 1;
        return bArr[i];
    }

    /* renamed from: else, reason: not valid java name */
    private void m33434else(byte[] bArr, byte[] bArr2) {
        bArr2[8] = -1;
        bArr2[9] = -1;
        this.f29626do = bArr;
        this.f29630if = bArr2;
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f29632try;
            if (i >= iArr.length) {
                return;
            }
            byte[] bArr3 = this.f29626do;
            int i3 = i2 + 1;
            iArr[i] = ((bArr3[i2] & 255) | (bArr3[i3] << 8)) & 65535;
            int[] iArr2 = this.f29631new;
            byte[] bArr4 = this.f29630if;
            iArr2[i] = ((bArr4[i2] & 255) | (bArr4[i3] << 8)) & 65535;
            i2 += 2;
            i++;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private int m33435for() {
        int[] iArr = this.f29631new;
        int i = iArr[0];
        int i2 = (iArr[0] >>> 13) | (iArr[1] << 3);
        int i3 = (iArr[1] >>> 7) | (iArr[2] << 9);
        int i4 = (iArr[2] >>> 6) | (iArr[3] << 10);
        int i5 = (iArr[3] >>> 3) | (iArr[4] << 13);
        return (((iArr[4] << 2) | (iArr[3] >>> 14)) ^ ((((i2 ^ i) ^ i3) ^ i4) ^ i5)) & 65535;
    }

    /* renamed from: goto, reason: not valid java name */
    private int[] m33436goto(int[] iArr, int i) {
        iArr[0] = iArr[1];
        iArr[1] = iArr[2];
        iArr[2] = iArr[3];
        iArr[3] = iArr[4];
        iArr[4] = i;
        return iArr;
    }

    /* renamed from: if, reason: not valid java name */
    private int m33437if() {
        int[] iArr = this.f29632try;
        int i = (iArr[0] >>> 1) | (iArr[1] << 15);
        int i2 = (iArr[0] >>> 2) | (iArr[1] << 14);
        int i3 = (iArr[0] >>> 4) | (iArr[1] << 12);
        int i4 = (iArr[0] >>> 10) | (iArr[1] << 6);
        int i5 = (iArr[1] >>> 15) | (iArr[2] << 1);
        int i6 = (iArr[2] >>> 11) | (iArr[3] << 5);
        int i7 = (iArr[3] >>> 8) | (iArr[4] << 8);
        int i8 = (iArr[4] << 1) | (iArr[3] >>> 15);
        int[] iArr2 = this.f29631new;
        int i9 = (iArr2[0] >>> 3) | (iArr2[1] << 13);
        int i10 = (iArr2[1] >>> 9) | (iArr2[2] << 7);
        int i11 = (iArr2[3] << 2) | (iArr2[2] >>> 14);
        int i12 = iArr2[4];
        int i13 = i11 & i12;
        int i14 = ((((i10 ^ i8) ^ (i9 & i12)) ^ i13) ^ (i12 & i8)) ^ ((i9 & i10) & i11);
        int i15 = i9 & i11;
        return (((((((((i8 & i13) ^ (((i15 & i8) ^ ((i12 & i15) ^ i14)) ^ ((i10 & i11) & i8))) ^ i) ^ i2) ^ i3) ^ i4) ^ i5) ^ i6) ^ i7) & 65535;
    }

    /* renamed from: new, reason: not valid java name */
    private int m33438new() {
        int[] iArr = this.f29632try;
        int i = iArr[0];
        int i2 = (iArr[0] >>> 9) | (iArr[1] << 7);
        int i3 = (iArr[0] >>> 14) | (iArr[1] << 2);
        int i4 = (iArr[0] >>> 15) | (iArr[1] << 1);
        int i5 = (iArr[1] >>> 5) | (iArr[2] << 11);
        int i6 = (iArr[1] >>> 12) | (iArr[2] << 4);
        int i7 = (iArr[2] >>> 1) | (iArr[3] << 15);
        int i8 = (iArr[2] >>> 5) | (iArr[3] << 11);
        int i9 = (iArr[2] >>> 13) | (iArr[3] << 3);
        int i10 = (iArr[3] >>> 4) | (iArr[4] << 12);
        int i11 = (iArr[3] >>> 12) | (iArr[4] << 4);
        int i12 = (iArr[3] >>> 14) | (iArr[4] << 2);
        int i13 = (iArr[4] << 1) | (iArr[3] >>> 15);
        int i14 = i13 & i11;
        int i15 = (((i ^ (((((((((i12 ^ i11) ^ i10) ^ i9) ^ i8) ^ i7) ^ i6) ^ i5) ^ i3) ^ i2)) ^ i14) ^ (i8 & i7)) ^ (i4 & i2);
        int i16 = i11 & i10;
        int i17 = i7 & i6 & i5;
        return (((((((((i13 & i9) & i6) & i2) ^ ((i15 ^ (i16 & i9)) ^ i17)) ^ ((i16 & i8) & i7)) ^ ((i14 & i5) & i4)) ^ (((i14 & i10) & i9) & i8)) ^ ((i4 & i17) & i2)) ^ (((((i10 & i9) & i8) & i7) & i6) & i5)) & 65535;
    }

    /* renamed from: try, reason: not valid java name */
    private void m33439try() {
        for (int i = 0; i < 10; i++) {
            this.f29625case = m33437if();
            this.f29632try = m33436goto(this.f29632try, (m33438new() ^ this.f29631new[0]) ^ this.f29625case);
            this.f29631new = m33436goto(this.f29631new, m33435for() ^ this.f29625case);
        }
        this.f29629goto = true;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "Grain v1";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof bc1)) {
            throw new IllegalArgumentException("Grain v1 Init parameters must include an IV");
        }
        bc1 bc1Var = (bc1) cipherParameters;
        byte[] bArrM514do = bc1Var.m514do();
        if (bArrM514do == null || bArrM514do.length != 8) {
            throw new IllegalArgumentException("Grain v1 requires exactly 8 bytes of IV");
        }
        if (!(bc1Var.m515if() instanceof gr0)) {
            throw new IllegalArgumentException("Grain v1 Init parameters must include a key");
        }
        gr0 gr0Var = (gr0) bc1Var.m515if();
        this.f29630if = new byte[gr0Var.m2770do().length];
        this.f29626do = new byte[gr0Var.m2770do().length];
        this.f29631new = new int[5];
        this.f29632try = new int[5];
        this.f29628for = new byte[2];
        System.arraycopy(bArrM514do, 0, this.f29630if, 0, bArrM514do.length);
        System.arraycopy(gr0Var.m2770do(), 0, this.f29626do, 0, gr0Var.m2770do().length);
        reset();
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws tw {
        if (!this.f29629goto) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (i + i2 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i3 + i2 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        for (int i4 = 0; i4 < i2; i4++) {
            bArr2[i3 + i4] = (byte) (bArr[i + i4] ^ m33433do());
        }
        return i2;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        this.f29627else = 2;
        m33434else(this.f29626do, this.f29630if);
        m33439try();
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        if (this.f29629goto) {
            return (byte) (b ^ m33433do());
        }
        throw new IllegalStateException(getAlgorithmName() + " not initialised");
    }
}
