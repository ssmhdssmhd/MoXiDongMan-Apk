package org.bouncycastle.crypto.engines;

import android.support.v4.bc1;
import android.support.v4.f91;
import android.support.v4.gr0;
import android.support.v4.tw;
import com.uc.crashsdk.export.LogType;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.StreamCipher;

/* renamed from: org.bouncycastle.crypto.engines.const, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cconst implements StreamCipher {

    /* renamed from: case, reason: not valid java name */
    private boolean f29641case;

    /* renamed from: new, reason: not valid java name */
    private byte[] f29647new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f29648try;

    /* renamed from: do, reason: not valid java name */
    private int[] f29642do = new int[1024];

    /* renamed from: if, reason: not valid java name */
    private int[] f29646if = new int[1024];

    /* renamed from: for, reason: not valid java name */
    private int f29644for = 0;

    /* renamed from: else, reason: not valid java name */
    private byte[] f29643else = new byte[4];

    /* renamed from: goto, reason: not valid java name */
    private int f29645goto = 0;

    /* renamed from: do, reason: not valid java name */
    private byte m33454do() {
        if (this.f29645goto == 0) {
            int iM33457new = m33457new();
            byte[] bArr = this.f29643else;
            bArr[0] = (byte) (iM33457new & 255);
            int i = iM33457new >> 8;
            bArr[1] = (byte) (i & 255);
            int i2 = i >> 8;
            bArr[2] = (byte) (i2 & 255);
            bArr[3] = (byte) ((i2 >> 8) & 255);
        }
        byte[] bArr2 = this.f29643else;
        int i3 = this.f29645goto;
        byte b = bArr2[i3];
        this.f29645goto = 3 & (i3 + 1);
        return b;
    }

    /* renamed from: for, reason: not valid java name */
    private static int m33455for(int i, int i2) {
        return (i << (-i2)) | (i >>> i2);
    }

    /* renamed from: if, reason: not valid java name */
    private void m33456if() {
        byte[] bArr = this.f29647new;
        if (bArr.length != 32 && bArr.length != 16) {
            throw new IllegalArgumentException("The key must be 128/256 bits long");
        }
        if (this.f29648try.length < 16) {
            throw new IllegalArgumentException("The IV must be at least 128 bits long");
        }
        if (bArr.length != 32) {
            byte[] bArr2 = new byte[32];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            byte[] bArr3 = this.f29647new;
            System.arraycopy(bArr3, 0, bArr2, 16, bArr3.length);
            this.f29647new = bArr2;
        }
        byte[] bArr4 = this.f29648try;
        if (bArr4.length < 32) {
            byte[] bArr5 = new byte[32];
            System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length);
            byte[] bArr6 = this.f29648try;
            System.arraycopy(bArr6, 0, bArr5, bArr6.length, 32 - bArr6.length);
            this.f29648try = bArr5;
        }
        this.f29645goto = 0;
        this.f29644for = 0;
        int[] iArr = new int[2560];
        for (int i = 0; i < 32; i++) {
            int i2 = i >> 2;
            iArr[i2] = iArr[i2] | ((this.f29647new[i] & 255) << ((i & 3) * 8));
        }
        for (int i3 = 0; i3 < 32; i3++) {
            int i4 = (i3 >> 2) + 8;
            iArr[i4] = iArr[i4] | ((this.f29648try[i3] & 255) << ((i3 & 3) * 8));
        }
        for (int i5 = 16; i5 < 2560; i5++) {
            int i6 = iArr[i5 - 2];
            int i7 = iArr[i5 - 15];
            iArr[i5] = ((i6 >>> 10) ^ (m33455for(i6, 17) ^ m33455for(i6, 19))) + iArr[i5 - 7] + ((i7 >>> 3) ^ (m33455for(i7, 7) ^ m33455for(i7, 18))) + iArr[i5 - 16] + i5;
        }
        System.arraycopy(iArr, 512, this.f29642do, 0, 1024);
        System.arraycopy(iArr, 1536, this.f29646if, 0, 1024);
        for (int i8 = 0; i8 < 4096; i8++) {
            m33457new();
        }
        this.f29644for = 0;
    }

    /* renamed from: new, reason: not valid java name */
    private int m33457new() {
        int i;
        int i2;
        int i3 = this.f29644for;
        int i4 = i3 & 1023;
        if (i3 < 1024) {
            int[] iArr = this.f29642do;
            int i5 = iArr[(i4 - 3) & 1023];
            int i6 = iArr[(i4 - 1023) & 1023];
            int i7 = iArr[i4];
            int iM33455for = iArr[(i4 - 10) & 1023] + (m33455for(i6, 23) ^ m33455for(i5, 10));
            int[] iArr2 = this.f29646if;
            iArr[i4] = i7 + iM33455for + iArr2[(i5 ^ i6) & 1023];
            int[] iArr3 = this.f29642do;
            int i8 = iArr3[(i4 - 12) & 1023];
            i = iArr2[i8 & 255] + iArr2[((i8 >> 8) & 255) + 256] + iArr2[((i8 >> 16) & 255) + 512] + iArr2[((i8 >> 24) & 255) + LogType.UNEXP_OTHER];
            i2 = iArr3[i4];
        } else {
            int[] iArr4 = this.f29646if;
            int i9 = iArr4[(i4 - 3) & 1023];
            int i10 = iArr4[(i4 - 1023) & 1023];
            int i11 = iArr4[i4];
            int iM33455for2 = iArr4[(i4 - 10) & 1023] + (m33455for(i10, 23) ^ m33455for(i9, 10));
            int[] iArr5 = this.f29642do;
            iArr4[i4] = i11 + iM33455for2 + iArr5[(i9 ^ i10) & 1023];
            int[] iArr6 = this.f29646if;
            int i12 = iArr6[(i4 - 12) & 1023];
            i = iArr5[i12 & 255] + iArr5[((i12 >> 8) & 255) + 256] + iArr5[((i12 >> 16) & 255) + 512] + iArr5[((i12 >> 24) & 255) + LogType.UNEXP_OTHER];
            i2 = iArr6[i4];
        }
        int i13 = i2 ^ i;
        this.f29644for = (this.f29644for + 1) & 2047;
        return i13;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "HC-256";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters cipherParametersM515if;
        if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            this.f29648try = bc1Var.m514do();
            cipherParametersM515if = bc1Var.m515if();
        } else {
            this.f29648try = new byte[0];
            cipherParametersM515if = cipherParameters;
        }
        if (cipherParametersM515if instanceof gr0) {
            this.f29647new = ((gr0) cipherParametersM515if).m2770do();
            m33456if();
            this.f29641case = true;
        } else {
            throw new IllegalArgumentException("Invalid parameter passed to HC256 init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws tw {
        if (!this.f29641case) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (i + i2 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i3 + i2 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        for (int i4 = 0; i4 < i2; i4++) {
            bArr2[i3 + i4] = (byte) (bArr[i + i4] ^ m33454do());
        }
        return i2;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        m33456if();
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        return (byte) (b ^ m33454do());
    }
}
