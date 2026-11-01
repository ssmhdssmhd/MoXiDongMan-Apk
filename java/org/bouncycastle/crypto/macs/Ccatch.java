package org.bouncycastle.crypto.macs;

import android.support.v4.bc1;
import android.support.v4.gr0;
import android.support.v4.t3;
import android.support.v4.tw;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;

/* renamed from: org.bouncycastle.crypto.macs.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch implements Mac {

    /* renamed from: break, reason: not valid java name */
    private byte f29902break;

    /* renamed from: case, reason: not valid java name */
    private byte[] f29903case;

    /* renamed from: catch, reason: not valid java name */
    private byte f29904catch;

    /* renamed from: do, reason: not valid java name */
    private byte f29905do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f29906else;

    /* renamed from: goto, reason: not valid java name */
    private byte f29908goto;

    /* renamed from: this, reason: not valid java name */
    private byte f29911this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f29912try;

    /* renamed from: if, reason: not valid java name */
    private byte f29909if = 0;

    /* renamed from: for, reason: not valid java name */
    private byte[] f29907for = null;

    /* renamed from: new, reason: not valid java name */
    private byte f29910new = 0;

    /* renamed from: do, reason: not valid java name */
    private void m33683do(byte[] bArr, byte[] bArr2) {
        this.f29910new = (byte) 0;
        this.f29907for = new byte[256];
        for (int i = 0; i < 256; i++) {
            this.f29907for[i] = (byte) i;
        }
        for (int i2 = 0; i2 < 768; i2++) {
            byte[] bArr3 = this.f29907for;
            int i3 = i2 & 255;
            byte b = bArr3[(this.f29910new + bArr3[i3] + bArr[i2 % bArr.length]) & 255];
            this.f29910new = b;
            byte b2 = bArr3[i3];
            bArr3[i3] = bArr3[b & 255];
            bArr3[b & 255] = b2;
        }
        for (int i4 = 0; i4 < 768; i4++) {
            byte[] bArr4 = this.f29907for;
            int i5 = i4 & 255;
            byte b3 = bArr4[(this.f29910new + bArr4[i5] + bArr2[i4 % bArr2.length]) & 255];
            this.f29910new = b3;
            byte b4 = bArr4[i5];
            bArr4[i5] = bArr4[b3 & 255];
            bArr4[b3 & 255] = b4;
        }
        this.f29909if = (byte) 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw {
        for (int i2 = 1; i2 < 25; i2++) {
            byte[] bArr2 = this.f29907for;
            byte b = this.f29910new;
            byte b2 = this.f29909if;
            byte b3 = bArr2[(b + bArr2[b2 & 255]) & 255];
            this.f29910new = b3;
            byte b4 = this.f29904catch;
            byte b5 = this.f29902break;
            byte b6 = bArr2[(b4 + b5 + i2) & 255];
            this.f29904catch = b6;
            byte b7 = this.f29911this;
            byte b8 = bArr2[(b5 + b7 + i2) & 255];
            this.f29902break = b8;
            byte b9 = this.f29908goto;
            byte b10 = bArr2[(b7 + b9 + i2) & 255];
            this.f29911this = b10;
            byte b11 = bArr2[(b9 + b3 + i2) & 255];
            this.f29908goto = b11;
            byte[] bArr3 = this.f29912try;
            byte b12 = this.f29905do;
            bArr3[b12 & t3.f6399protected] = (byte) (b11 ^ bArr3[b12 & t3.f6399protected]);
            bArr3[(b12 + 1) & 31] = (byte) (b10 ^ bArr3[(b12 + 1) & 31]);
            bArr3[(b12 + 2) & 31] = (byte) (b8 ^ bArr3[(b12 + 2) & 31]);
            bArr3[(b12 + 3) & 31] = (byte) (b6 ^ bArr3[(b12 + 3) & 31]);
            this.f29905do = (byte) ((b12 + 4) & 31);
            byte b13 = bArr2[b2 & 255];
            bArr2[b2 & 255] = bArr2[b3 & 255];
            bArr2[b3 & 255] = b13;
            this.f29909if = (byte) ((b2 + 1) & 255);
        }
        for (int i3 = 0; i3 < 768; i3++) {
            byte[] bArr4 = this.f29907for;
            int i4 = i3 & 255;
            byte b14 = bArr4[(this.f29910new + bArr4[i4] + this.f29912try[i3 & 31]) & 255];
            this.f29910new = b14;
            byte b15 = bArr4[i4];
            bArr4[i4] = bArr4[b14 & 255];
            bArr4[b14 & 255] = b15;
        }
        byte[] bArr5 = new byte[20];
        for (int i5 = 0; i5 < 20; i5++) {
            byte[] bArr6 = this.f29907for;
            int i6 = i5 & 255;
            byte b16 = bArr6[(this.f29910new + bArr6[i6]) & 255];
            this.f29910new = b16;
            bArr5[i5] = bArr6[(bArr6[bArr6[b16 & 255] & 255] + 1) & 255];
            byte b17 = bArr6[i6];
            bArr6[i6] = bArr6[b16 & 255];
            bArr6[b16 & 255] = b17;
        }
        System.arraycopy(bArr5, 0, bArr, i, 20);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "VMPC-MAC";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof bc1)) {
            throw new IllegalArgumentException("VMPC-MAC Init parameters must include an IV");
        }
        bc1 bc1Var = (bc1) cipherParameters;
        gr0 gr0Var = (gr0) bc1Var.m515if();
        if (!(bc1Var.m515if() instanceof gr0)) {
            throw new IllegalArgumentException("VMPC-MAC Init parameters must include a key");
        }
        byte[] bArrM514do = bc1Var.m514do();
        this.f29903case = bArrM514do;
        if (bArrM514do == null || bArrM514do.length < 1 || bArrM514do.length > 768) {
            throw new IllegalArgumentException("VMPC-MAC requires 1 to 768 bytes of IV");
        }
        this.f29906else = gr0Var.m2770do();
        reset();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        m33683do(this.f29906else, this.f29903case);
        this.f29909if = (byte) 0;
        this.f29904catch = (byte) 0;
        this.f29902break = (byte) 0;
        this.f29911this = (byte) 0;
        this.f29908goto = (byte) 0;
        this.f29905do = (byte) 0;
        this.f29912try = new byte[32];
        for (int i = 0; i < 32; i++) {
            this.f29912try[i] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException {
        byte[] bArr = this.f29907for;
        byte b2 = this.f29910new;
        byte b3 = this.f29909if;
        byte b4 = bArr[(b2 + bArr[b3 & 255]) & 255];
        this.f29910new = b4;
        byte b5 = (byte) (b ^ bArr[(bArr[bArr[b4 & 255] & 255] + 1) & 255]);
        byte b6 = this.f29904catch;
        byte b7 = this.f29902break;
        byte b8 = bArr[(b6 + b7) & 255];
        this.f29904catch = b8;
        byte b9 = this.f29911this;
        byte b10 = bArr[(b7 + b9) & 255];
        this.f29902break = b10;
        byte b11 = this.f29908goto;
        byte b12 = bArr[(b9 + b11) & 255];
        this.f29911this = b12;
        byte b13 = bArr[(b11 + b4 + b5) & 255];
        this.f29908goto = b13;
        byte[] bArr2 = this.f29912try;
        byte b14 = this.f29905do;
        bArr2[b14 & t3.f6399protected] = (byte) (b13 ^ bArr2[b14 & t3.f6399protected]);
        bArr2[(b14 + 1) & 31] = (byte) (b12 ^ bArr2[(b14 + 1) & 31]);
        bArr2[(b14 + 2) & 31] = (byte) (b10 ^ bArr2[(b14 + 2) & 31]);
        bArr2[(b14 + 3) & 31] = (byte) (b8 ^ bArr2[(b14 + 3) & 31]);
        this.f29905do = (byte) ((b14 + 4) & 31);
        byte b15 = bArr[b3 & 255];
        bArr[b3 & 255] = bArr[b4 & 255];
        bArr[b4 & 255] = b15;
        this.f29909if = (byte) ((b3 + 1) & 255);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        if (i + i2 > bArr.length) {
            throw new tw("input buffer too short");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            update(bArr[i + i3]);
        }
    }
}
