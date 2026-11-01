package org.bouncycastle.crypto.engines;

import android.support.v4.bc1;
import android.support.v4.f91;
import android.support.v4.gr0;
import android.support.v4.t3;
import android.support.v4.tw;
import androidx.recyclerview.widget.ItemTouchHelper;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.StreamCipher;

/* renamed from: org.bouncycastle.crypto.engines.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak implements StreamCipher {

    /* renamed from: this, reason: not valid java name */
    private static final int f29597this = 4;

    /* renamed from: case, reason: not valid java name */
    private int f29598case;

    /* renamed from: do, reason: not valid java name */
    private byte[] f29599do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f29601for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f29603if;

    /* renamed from: new, reason: not valid java name */
    private int[] f29604new;

    /* renamed from: try, reason: not valid java name */
    private int[] f29605try;

    /* renamed from: else, reason: not valid java name */
    private int f29600else = 4;

    /* renamed from: goto, reason: not valid java name */
    private boolean f29602goto = false;

    /* renamed from: case, reason: not valid java name */
    private void m33404case() {
        int iM33409if = m33409if();
        this.f29598case = iM33409if;
        byte[] bArr = this.f29601for;
        bArr[0] = (byte) iM33409if;
        bArr[1] = (byte) (iM33409if >> 8);
        bArr[2] = (byte) (iM33409if >> 16);
        bArr[3] = (byte) (iM33409if >> 24);
        this.f29605try = m33408goto(this.f29605try, m33410new() ^ this.f29604new[0]);
        this.f29604new = m33408goto(this.f29604new, m33407for());
    }

    /* renamed from: do, reason: not valid java name */
    private byte m33405do() {
        if (this.f29600else > 3) {
            m33404case();
            this.f29600else = 0;
        }
        byte[] bArr = this.f29601for;
        int i = this.f29600else;
        this.f29600else = i + 1;
        return bArr[i];
    }

    /* renamed from: else, reason: not valid java name */
    private void m33406else(byte[] bArr, byte[] bArr2) {
        bArr2[12] = -1;
        bArr2[13] = -1;
        bArr2[14] = -1;
        bArr2[15] = -1;
        this.f29599do = bArr;
        this.f29603if = bArr2;
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f29605try;
            if (i >= iArr.length) {
                return;
            }
            byte[] bArr3 = this.f29599do;
            int i3 = i2 + 3;
            int i4 = i2 + 2;
            int i5 = i2 + 1;
            iArr[i] = (bArr3[i2] & 255) | (bArr3[i3] << t3.f6397package) | ((bArr3[i4] << 16) & ItemTouchHelper.ACTION_MODE_DRAG_MASK) | ((bArr3[i5] << 8) & 65280);
            int[] iArr2 = this.f29604new;
            byte[] bArr4 = this.f29603if;
            iArr2[i] = (bArr4[i2] & 255) | (bArr4[i3] << t3.f6397package) | ((bArr4[i4] << 16) & ItemTouchHelper.ACTION_MODE_DRAG_MASK) | ((bArr4[i5] << 8) & 65280);
            i2 += 4;
            i++;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private int m33407for() {
        int[] iArr = this.f29604new;
        int i = iArr[0];
        int i2 = (iArr[0] >>> 7) | (iArr[1] << 25);
        int i3 = (iArr[1] >>> 6) | (iArr[2] << 26);
        int i4 = (iArr[2] >>> 6) | (iArr[3] << 26);
        return iArr[3] ^ ((((i2 ^ i) ^ i3) ^ i4) ^ ((iArr[2] >>> 17) | (iArr[3] << 15)));
    }

    /* renamed from: goto, reason: not valid java name */
    private int[] m33408goto(int[] iArr, int i) {
        iArr[0] = iArr[1];
        iArr[1] = iArr[2];
        iArr[2] = iArr[3];
        iArr[3] = i;
        return iArr;
    }

    /* renamed from: if, reason: not valid java name */
    private int m33409if() {
        int[] iArr = this.f29605try;
        int i = (iArr[0] >>> 2) | (iArr[1] << 30);
        int i2 = (iArr[0] >>> 12) | (iArr[1] << 20);
        int i3 = (iArr[0] >>> 15) | (iArr[1] << 17);
        int i4 = (iArr[1] >>> 4) | (iArr[2] << 28);
        int i5 = (iArr[1] >>> 13) | (iArr[2] << 19);
        int i6 = iArr[2];
        int i7 = (iArr[2] >>> 9) | (iArr[3] << 23);
        int i8 = (iArr[2] >>> 25) | (iArr[3] << 7);
        int i9 = (iArr[3] << 1) | (iArr[2] >>> 31);
        int[] iArr2 = this.f29604new;
        int i10 = (iArr2[0] >>> 8) | (iArr2[1] << 24);
        int i11 = (iArr2[0] >>> 13) | (iArr2[1] << 19);
        int i12 = (iArr2[0] >>> 20) | (iArr2[1] << 12);
        int i13 = (iArr2[1] >>> 10) | (iArr2[2] << 22);
        int i14 = (iArr2[1] >>> 28) | (iArr2[2] << 4);
        int i15 = (iArr2[2] >>> 15) | (iArr2[3] << 17);
        return ((((((((((i9 & i2) & ((iArr2[2] >>> 31) | (iArr2[3] << 1))) ^ ((((i11 & i12) ^ (i2 & i10)) ^ (i9 & i13)) ^ (i14 & i15))) ^ ((iArr2[2] >>> 29) | (iArr2[3] << 3))) ^ i) ^ i3) ^ i4) ^ i5) ^ i6) ^ i7) ^ i8;
    }

    /* renamed from: new, reason: not valid java name */
    private int m33410new() {
        int[] iArr = this.f29605try;
        int i = iArr[0];
        int i2 = (iArr[0] >>> 3) | (iArr[1] << 29);
        int i3 = (iArr[0] >>> 11) | (iArr[1] << 21);
        int i4 = (iArr[0] >>> 13) | (iArr[1] << 19);
        int i5 = (iArr[0] >>> 17) | (iArr[1] << 15);
        int i6 = (iArr[0] >>> 18) | (iArr[1] << 14);
        int i7 = (iArr[0] >>> 26) | (iArr[1] << 6);
        int i8 = (iArr[0] >>> 27) | (iArr[1] << 5);
        int i9 = (iArr[1] >>> 8) | (iArr[2] << 24);
        int i10 = (iArr[1] >>> 16) | (iArr[2] << 16);
        int i11 = (iArr[1] >>> 24) | (iArr[2] << 8);
        int i12 = (iArr[1] >>> 27) | (iArr[2] << 5);
        int i13 = (iArr[1] >>> 29) | (iArr[2] << 3);
        int i14 = (iArr[2] >>> 1) | (iArr[3] << 31);
        int i15 = (iArr[2] >>> 3) | (iArr[3] << 29);
        int i16 = (iArr[2] >>> 4) | (iArr[3] << 28);
        int i17 = (iArr[2] >>> 20) | (iArr[3] << 12);
        return (((((((iArr[3] ^ (((i ^ i7) ^ i11) ^ ((iArr[2] >>> 27) | (iArr[3] << 5)))) ^ (i2 & i15)) ^ (i3 & i4)) ^ (i5 & i6)) ^ (i8 & i12)) ^ (i9 & i10)) ^ (i13 & i14)) ^ (i16 & i17);
    }

    /* renamed from: try, reason: not valid java name */
    private void m33411try() {
        for (int i = 0; i < 8; i++) {
            this.f29598case = m33409if();
            this.f29605try = m33408goto(this.f29605try, (m33410new() ^ this.f29604new[0]) ^ this.f29598case);
            this.f29604new = m33408goto(this.f29604new, m33407for() ^ this.f29598case);
        }
        this.f29602goto = true;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "Grain-128";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof bc1)) {
            throw new IllegalArgumentException("Grain-128 Init parameters must include an IV");
        }
        bc1 bc1Var = (bc1) cipherParameters;
        byte[] bArrM514do = bc1Var.m514do();
        if (bArrM514do == null || bArrM514do.length != 12) {
            throw new IllegalArgumentException("Grain-128  requires exactly 12 bytes of IV");
        }
        if (!(bc1Var.m515if() instanceof gr0)) {
            throw new IllegalArgumentException("Grain-128 Init parameters must include a key");
        }
        gr0 gr0Var = (gr0) bc1Var.m515if();
        this.f29603if = new byte[gr0Var.m2770do().length];
        this.f29599do = new byte[gr0Var.m2770do().length];
        this.f29604new = new int[4];
        this.f29605try = new int[4];
        this.f29601for = new byte[4];
        System.arraycopy(bArrM514do, 0, this.f29603if, 0, bArrM514do.length);
        System.arraycopy(gr0Var.m2770do(), 0, this.f29599do, 0, gr0Var.m2770do().length);
        reset();
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws tw {
        if (!this.f29602goto) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (i + i2 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i3 + i2 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        for (int i4 = 0; i4 < i2; i4++) {
            bArr2[i3 + i4] = (byte) (bArr[i + i4] ^ m33405do());
        }
        return i2;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        this.f29600else = 4;
        m33406else(this.f29599do, this.f29603if);
        m33411try();
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        if (this.f29602goto) {
            return (byte) (b ^ m33405do());
        }
        throw new IllegalStateException(getAlgorithmName() + " not initialised");
    }
}
