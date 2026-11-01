package org.bouncycastle.crypto.engines;

import android.support.v4.bc1;
import android.support.v4.f91;
import android.support.v4.gr0;
import android.support.v4.tw;
import com.uc.crashsdk.export.LogType;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.StreamCipher;

/* renamed from: org.bouncycastle.crypto.engines.class, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cclass implements StreamCipher {

    /* renamed from: case, reason: not valid java name */
    private boolean f29633case;

    /* renamed from: new, reason: not valid java name */
    private byte[] f29639new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f29640try;

    /* renamed from: do, reason: not valid java name */
    private int[] f29634do = new int[512];

    /* renamed from: if, reason: not valid java name */
    private int[] f29638if = new int[512];

    /* renamed from: for, reason: not valid java name */
    private int f29636for = 0;

    /* renamed from: else, reason: not valid java name */
    private byte[] f29635else = new byte[4];

    /* renamed from: goto, reason: not valid java name */
    private int f29637goto = 0;

    /* renamed from: break, reason: not valid java name */
    private static int m33440break(int i) {
        return i & 1023;
    }

    /* renamed from: case, reason: not valid java name */
    private byte m33441case() {
        if (this.f29637goto == 0) {
            int iM33447final = m33447final();
            byte[] bArr = this.f29635else;
            bArr[0] = (byte) (iM33447final & 255);
            int i = iM33447final >> 8;
            bArr[1] = (byte) (i & 255);
            int i2 = i >> 8;
            bArr[2] = (byte) (i2 & 255);
            bArr[3] = (byte) ((i2 >> 8) & 255);
        }
        byte[] bArr2 = this.f29635else;
        int i3 = this.f29637goto;
        byte b = bArr2[i3];
        this.f29637goto = 3 & (i3 + 1);
        return b;
    }

    /* renamed from: catch, reason: not valid java name */
    private static int m33442catch(int i) {
        return i & 511;
    }

    /* renamed from: class, reason: not valid java name */
    private static int m33443class(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    /* renamed from: const, reason: not valid java name */
    private static int m33444const(int i, int i2) {
        return (i << (-i2)) | (i >>> i2);
    }

    /* renamed from: do, reason: not valid java name */
    private static int m33445do(int i, int i2) {
        return m33442catch(i - i2);
    }

    /* renamed from: else, reason: not valid java name */
    private int m33446else(int i) {
        int[] iArr = this.f29638if;
        return iArr[i & 255] + iArr[((i >> 16) & 255) + 256];
    }

    /* renamed from: final, reason: not valid java name */
    private int m33447final() {
        int iM33449goto;
        int i;
        int iM33442catch = m33442catch(this.f29636for);
        if (this.f29636for < 512) {
            int[] iArr = this.f29634do;
            iArr[iM33442catch] = iArr[iM33442catch] + m33451new(iArr[m33445do(iM33442catch, 3)], this.f29634do[m33445do(iM33442catch, 10)], this.f29634do[m33445do(iM33442catch, 511)]);
            iM33449goto = m33446else(this.f29634do[m33445do(iM33442catch, 12)]);
            i = this.f29634do[iM33442catch];
        } else {
            int[] iArr2 = this.f29638if;
            iArr2[iM33442catch] = iArr2[iM33442catch] + m33453try(iArr2[m33445do(iM33442catch, 3)], this.f29638if[m33445do(iM33442catch, 10)], this.f29638if[m33445do(iM33442catch, 511)]);
            iM33449goto = m33449goto(this.f29638if[m33445do(iM33442catch, 12)]);
            i = this.f29638if[iM33442catch];
        }
        int i2 = i ^ iM33449goto;
        this.f29636for = m33440break(this.f29636for + 1);
        return i2;
    }

    /* renamed from: for, reason: not valid java name */
    private static int m33448for(int i) {
        return (i >>> 10) ^ (m33444const(i, 17) ^ m33444const(i, 19));
    }

    /* renamed from: goto, reason: not valid java name */
    private int m33449goto(int i) {
        int[] iArr = this.f29634do;
        return iArr[i & 255] + iArr[((i >> 16) & 255) + 256];
    }

    /* renamed from: if, reason: not valid java name */
    private static int m33450if(int i) {
        return (i >>> 3) ^ (m33444const(i, 7) ^ m33444const(i, 18));
    }

    /* renamed from: new, reason: not valid java name */
    private int m33451new(int i, int i2, int i3) {
        return (m33444const(i, 10) ^ m33444const(i3, 23)) + m33444const(i2, 8);
    }

    /* renamed from: this, reason: not valid java name */
    private void m33452this() {
        if (this.f29639new.length != 16) {
            throw new IllegalArgumentException("The key must be 128 bits long");
        }
        this.f29637goto = 0;
        this.f29636for = 0;
        int[] iArr = new int[LogType.UNEXP_ANR];
        for (int i = 0; i < 16; i++) {
            int i2 = i >> 2;
            iArr[i2] = ((this.f29639new[i] & 255) << ((i & 3) * 8)) | iArr[i2];
        }
        System.arraycopy(iArr, 0, iArr, 4, 4);
        int i3 = 0;
        while (true) {
            byte[] bArr = this.f29640try;
            if (i3 >= bArr.length || i3 >= 16) {
                break;
            }
            int i4 = (i3 >> 2) + 8;
            iArr[i4] = ((bArr[i3] & 255) << ((i3 & 3) * 8)) | iArr[i4];
            i3++;
        }
        System.arraycopy(iArr, 8, iArr, 12, 4);
        for (int i5 = 16; i5 < 1280; i5++) {
            iArr[i5] = m33448for(iArr[i5 - 2]) + iArr[i5 - 7] + m33450if(iArr[i5 - 15]) + iArr[i5 - 16] + i5;
        }
        System.arraycopy(iArr, 256, this.f29634do, 0, 512);
        System.arraycopy(iArr, LogType.UNEXP_OTHER, this.f29638if, 0, 512);
        for (int i6 = 0; i6 < 512; i6++) {
            this.f29634do[i6] = m33447final();
        }
        for (int i7 = 0; i7 < 512; i7++) {
            this.f29638if[i7] = m33447final();
        }
        this.f29636for = 0;
    }

    /* renamed from: try, reason: not valid java name */
    private int m33453try(int i, int i2, int i3) {
        return (m33443class(i, 10) ^ m33443class(i3, 23)) + m33443class(i2, 8);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "HC-128";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters cipherParametersM515if;
        if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            this.f29640try = bc1Var.m514do();
            cipherParametersM515if = bc1Var.m515if();
        } else {
            this.f29640try = new byte[0];
            cipherParametersM515if = cipherParameters;
        }
        if (cipherParametersM515if instanceof gr0) {
            this.f29639new = ((gr0) cipherParametersM515if).m2770do();
            m33452this();
            this.f29633case = true;
        } else {
            throw new IllegalArgumentException("Invalid parameter passed to HC128 init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws tw {
        if (!this.f29633case) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (i + i2 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i3 + i2 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        for (int i4 = 0; i4 < i2; i4++) {
            bArr2[i3 + i4] = (byte) (bArr[i + i4] ^ m33441case());
        }
        return i2;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        m33452this();
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        return (byte) (b ^ m33441case());
    }
}
