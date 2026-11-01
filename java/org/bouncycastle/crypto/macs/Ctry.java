package org.bouncycastle.crypto.macs;

import android.support.v4.bc1;
import android.support.v4.dc1;
import android.support.v4.gr0;
import android.support.v4.t3;
import android.support.v4.tw;
import androidx.recyclerview.widget.ItemTouchHelper;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;

/* renamed from: org.bouncycastle.crypto.macs.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry implements Mac {

    /* renamed from: do, reason: not valid java name */
    private int f29976do = 8;

    /* renamed from: if, reason: not valid java name */
    private int f29980if = 4;

    /* renamed from: case, reason: not valid java name */
    private boolean f29975case = true;

    /* renamed from: else, reason: not valid java name */
    private int[] f29977else = null;

    /* renamed from: goto, reason: not valid java name */
    private byte[] f29979goto = null;

    /* renamed from: this, reason: not valid java name */
    private byte[] f29982this = {9, 6, 3, 2, 8, 11, 1, 7, 10, 4, 14, 15, 12, 0, 13, 5, 3, 7, 14, 9, 8, 10, 15, 0, 5, 2, 6, 12, 11, 4, 13, 1, 14, 4, 6, 2, 11, 3, 13, 8, 12, 15, 5, 10, 0, 7, 1, 9, 14, 7, 10, 12, 13, 1, 3, 9, 0, 2, 11, 4, 15, 8, 5, 6, 11, 5, 1, 9, 8, 13, 15, 0, 14, 4, 2, 3, 12, 7, 10, 6, 3, 10, 13, 12, 1, 2, 0, 11, 7, 5, 9, 4, 8, 15, 14, 6, 1, 13, 2, 9, 7, 10, 6, 0, 8, 12, 4, 5, 15, 3, 11, 14, 11, 10, 15, 5, 0, 12, 14, 8, 6, 2, 3, 9, 1, 7, 13, 4};

    /* renamed from: try, reason: not valid java name */
    private byte[] f29983try = new byte[8];

    /* renamed from: new, reason: not valid java name */
    private byte[] f29981new = new byte[8];

    /* renamed from: for, reason: not valid java name */
    private int f29978for = 0;

    /* renamed from: case, reason: not valid java name */
    private void m33701case(int i, byte[] bArr, int i2) {
        bArr[i2 + 3] = (byte) (i >>> 24);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2] = (byte) i;
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m33702do(byte[] bArr, int i, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length - i];
        System.arraycopy(bArr, i, bArr3, 0, bArr2.length);
        for (int i2 = 0; i2 != bArr2.length; i2++) {
            bArr3[i2] = (byte) (bArr3[i2] ^ bArr2[i2]);
        }
        return bArr3;
    }

    /* renamed from: for, reason: not valid java name */
    private int[] m33703for(byte[] bArr) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Key length invalid. Key needs to be 32 byte - 256 bit!!!");
        }
        int[] iArr = new int[8];
        for (int i = 0; i != 8; i++) {
            iArr[i] = m33704if(bArr, i * 4);
        }
        return iArr;
    }

    /* renamed from: if, reason: not valid java name */
    private int m33704if(byte[] bArr, int i) {
        return ((bArr[i + 3] << t3.f6397package) & (-16777216)) + ((bArr[i + 2] << 16) & ItemTouchHelper.ACTION_MODE_DRAG_MASK) + ((bArr[i + 1] << 8) & 65280) + (bArr[i] & 255);
    }

    /* renamed from: new, reason: not valid java name */
    private void m33705new(int[] iArr, byte[] bArr, int i, byte[] bArr2, int i2) {
        int iM33704if = m33704if(bArr, i);
        int iM33704if2 = m33704if(bArr, i + 4);
        for (int i3 = 0; i3 < 2; i3++) {
            int i4 = 0;
            while (i4 < 8) {
                int iM33706try = iM33704if2 ^ m33706try(iM33704if, iArr[i4]);
                i4++;
                int i5 = iM33704if;
                iM33704if = iM33706try;
                iM33704if2 = i5;
            }
        }
        m33701case(iM33704if, bArr2, i2);
        m33701case(iM33704if2, bArr2, i2 + 4);
    }

    /* renamed from: try, reason: not valid java name */
    private int m33706try(int i, int i2) {
        int i3 = i2 + i;
        byte[] bArr = this.f29982this;
        int i4 = (bArr[((i3 >> 0) & 15) + 0] << 0) + (bArr[((i3 >> 4) & 15) + 16] << 4) + (bArr[((i3 >> 8) & 15) + 32] << 8) + (bArr[((i3 >> 12) & 15) + 48] << 12) + (bArr[((i3 >> 16) & 15) + 64] << 16) + (bArr[((i3 >> 20) & 15) + 80] << t3.f6409throws) + (bArr[((i3 >> 24) & 15) + 96] << t3.f6397package) + (bArr[((i3 >> 28) & 15) + 112] << t3.f6403strictfp);
        return (i4 << 11) | (i4 >>> 21);
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw {
        while (true) {
            int i2 = this.f29978for;
            if (i2 >= this.f29976do) {
                break;
            }
            this.f29981new[i2] = 0;
            this.f29978for = i2 + 1;
        }
        byte[] bArr2 = this.f29981new;
        byte[] bArrM33702do = new byte[bArr2.length];
        System.arraycopy(bArr2, 0, bArrM33702do, 0, this.f29983try.length);
        if (this.f29975case) {
            this.f29975case = false;
        } else {
            bArrM33702do = m33702do(this.f29981new, 0, this.f29983try);
        }
        m33705new(this.f29977else, bArrM33702do, 0, this.f29983try, 0);
        byte[] bArr3 = this.f29983try;
        int length = bArr3.length / 2;
        int i3 = this.f29980if;
        System.arraycopy(bArr3, length - i3, bArr, i, i3);
        reset();
        return this.f29980if;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "GOST28147Mac";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.f29980if;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        reset();
        this.f29981new = new byte[this.f29976do];
        this.f29979goto = null;
        if (cipherParameters instanceof dc1) {
            dc1 dc1Var = (dc1) cipherParameters;
            System.arraycopy(dc1Var.m1263if(), 0, this.f29982this, 0, dc1Var.m1263if().length);
            if (dc1Var.m1262do() != null) {
                this.f29977else = m33703for(((gr0) dc1Var.m1262do()).m2770do());
                return;
            }
            return;
        }
        if (cipherParameters instanceof gr0) {
            this.f29977else = m33703for(((gr0) cipherParameters).m2770do());
            return;
        }
        if (!(cipherParameters instanceof bc1)) {
            throw new IllegalArgumentException("invalid parameter passed to GOST28147 init - " + cipherParameters.getClass().getName());
        }
        bc1 bc1Var = (bc1) cipherParameters;
        this.f29977else = m33703for(((gr0) bc1Var.m515if()).m2770do());
        byte[] bArrM514do = bc1Var.m514do();
        byte[] bArr = this.f29983try;
        System.arraycopy(bArrM514do, 0, bArr, 0, bArr.length);
        this.f29979goto = bc1Var.m514do();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f29981new;
            if (i >= bArr.length) {
                this.f29978for = 0;
                this.f29975case = true;
                return;
            } else {
                bArr[i] = 0;
                i++;
            }
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException {
        int i = this.f29978for;
        byte[] bArr = this.f29981new;
        if (i == bArr.length) {
            byte[] bArrM33702do = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArrM33702do, 0, this.f29983try.length);
            if (this.f29975case) {
                this.f29975case = false;
                byte[] bArr2 = this.f29979goto;
                if (bArr2 != null) {
                    bArrM33702do = m33702do(this.f29981new, 0, bArr2);
                }
            } else {
                bArrM33702do = m33702do(this.f29981new, 0, this.f29983try);
            }
            m33705new(this.f29977else, bArrM33702do, 0, this.f29983try, 0);
            this.f29978for = 0;
        }
        byte[] bArr3 = this.f29981new;
        int i2 = this.f29978for;
        this.f29978for = i2 + 1;
        bArr3[i2] = b;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int i3 = this.f29976do;
        int i4 = this.f29978for;
        int i5 = i3 - i4;
        if (i2 > i5) {
            System.arraycopy(bArr, i, this.f29981new, i4, i5);
            byte[] bArr2 = this.f29981new;
            byte[] bArrM33702do = new byte[bArr2.length];
            System.arraycopy(bArr2, 0, bArrM33702do, 0, this.f29983try.length);
            if (this.f29975case) {
                this.f29975case = false;
                byte[] bArr3 = this.f29979goto;
                if (bArr3 != null) {
                    bArrM33702do = m33702do(this.f29981new, 0, bArr3);
                }
            } else {
                bArrM33702do = m33702do(this.f29981new, 0, this.f29983try);
            }
            m33705new(this.f29977else, bArrM33702do, 0, this.f29983try, 0);
            this.f29978for = 0;
            while (true) {
                i2 -= i5;
                i += i5;
                if (i2 <= this.f29976do) {
                    break;
                }
                m33705new(this.f29977else, m33702do(bArr, i, this.f29983try), 0, this.f29983try, 0);
                i5 = this.f29976do;
            }
        }
        System.arraycopy(bArr, i, this.f29981new, this.f29978for, i2);
        this.f29978for += i2;
    }
}
