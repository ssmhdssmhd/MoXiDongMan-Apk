package org.bouncycastle.crypto.engines;

import android.support.v4.bc1;
import android.support.v4.cc1;
import android.support.v4.gr0;
import android.support.v4.ib1;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Wrapper;

/* renamed from: org.bouncycastle.crypto.engines.public, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cpublic implements Wrapper {

    /* renamed from: case, reason: not valid java name */
    private byte[] f29741case = null;

    /* renamed from: do, reason: not valid java name */
    private BlockCipher f29742do;

    /* renamed from: for, reason: not valid java name */
    private boolean f29743for;

    /* renamed from: if, reason: not valid java name */
    private gr0 f29744if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f29745new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f29746try;

    public Cpublic(BlockCipher blockCipher) {
        byte[] bArr = {-90, 89, 89, -90};
        this.f29745new = bArr;
        this.f29746try = bArr;
        this.f29742do = blockCipher;
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m33561do(byte[] bArr) {
        int length = bArr.length;
        int i = (8 - (length % 8)) % 8;
        byte[] bArr2 = new byte[length + i];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        if (i != 0) {
            System.arraycopy(new byte[i], 0, bArr2, length, i);
        }
        return bArr2;
    }

    /* renamed from: if, reason: not valid java name */
    private byte[] m33562if(byte[] bArr, int i, int i2) throws IllegalStateException, tw, IllegalArgumentException {
        int i3 = i2 - 8;
        byte[] bArr2 = new byte[i3];
        byte[] bArr3 = new byte[8];
        byte[] bArr4 = new byte[16];
        System.arraycopy(bArr, i, bArr3, 0, 8);
        System.arraycopy(bArr, i + 8, bArr2, 0, i3);
        this.f29742do.init(false, this.f29744if);
        int i4 = (i2 / 8) - 1;
        for (int i5 = 5; i5 >= 0; i5--) {
            for (int i6 = i4; i6 >= 1; i6--) {
                System.arraycopy(bArr3, 0, bArr4, 0, 8);
                int i7 = (i6 - 1) * 8;
                System.arraycopy(bArr2, i7, bArr4, 8, 8);
                int i8 = (i4 * i5) + i6;
                int i9 = 1;
                while (i8 != 0) {
                    int i10 = 8 - i9;
                    bArr4[i10] = (byte) (((byte) i8) ^ bArr4[i10]);
                    i8 >>>= 8;
                    i9++;
                }
                this.f29742do.processBlock(bArr4, 0, bArr4, 0);
                System.arraycopy(bArr4, 0, bArr3, 0, 8);
                System.arraycopy(bArr4, 8, bArr2, i7, 8);
            }
        }
        this.f29741case = bArr3;
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return this.f29742do.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f29743for = z;
        if (cipherParameters instanceof cc1) {
            cipherParameters = ((cc1) cipherParameters).m846do();
        }
        if (cipherParameters instanceof gr0) {
            this.f29744if = (gr0) cipherParameters;
            this.f29746try = this.f29745new;
        } else if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            this.f29746try = bc1Var.m514do();
            this.f29744if = (gr0) bc1Var.m515if();
            if (this.f29746try.length != 4) {
                throw new IllegalArgumentException("IV length not equal to 4");
            }
        }
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int i, int i2) throws IllegalStateException, tw, tn0, IllegalArgumentException {
        byte[] bArrM33562if;
        if (this.f29743for) {
            throw new IllegalStateException("not set for unwrapping");
        }
        int i3 = i2 / 8;
        if (i3 * 8 != i2) {
            throw new tn0("unwrap data must be a multiple of 8 bytes");
        }
        if (i3 == 1) {
            throw new tn0("unwrap data must be at least 16 bytes");
        }
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        byte[] bArr3 = new byte[i2];
        if (i3 == 2) {
            this.f29742do.init(false, this.f29744if);
            int blockSize = 0;
            while (blockSize < i2) {
                this.f29742do.processBlock(bArr2, blockSize, bArr3, blockSize);
                blockSize += this.f29742do.getBlockSize();
            }
            byte[] bArr4 = new byte[8];
            this.f29741case = bArr4;
            System.arraycopy(bArr3, 0, bArr4, 0, bArr4.length);
            byte[] bArr5 = this.f29741case;
            int length = i2 - bArr5.length;
            bArrM33562if = new byte[length];
            System.arraycopy(bArr3, bArr5.length, bArrM33562if, 0, length);
        } else {
            bArrM33562if = m33562if(bArr, i, i2);
        }
        byte[] bArr6 = new byte[4];
        byte[] bArr7 = new byte[4];
        System.arraycopy(this.f29741case, 0, bArr6, 0, 4);
        System.arraycopy(this.f29741case, 4, bArr7, 0, 4);
        int iM3354do = ib1.m3354do(bArr7, 0);
        boolean zM6360abstract = q3.m6360abstract(bArr6, this.f29746try);
        int length2 = bArrM33562if.length;
        if (iM3354do <= length2 - 8) {
            zM6360abstract = false;
        }
        if (iM3354do > length2) {
            zM6360abstract = false;
        }
        int length3 = length2 - iM3354do;
        if (length3 >= bArrM33562if.length) {
            length3 = bArrM33562if.length;
            zM6360abstract = false;
        }
        byte[] bArr8 = new byte[length3];
        System.arraycopy(bArrM33562if, bArrM33562if.length - length3, bArr8, 0, length3);
        if (!q3.m6360abstract(bArr8, new byte[length3])) {
            zM6360abstract = false;
        }
        if (!zM6360abstract) {
            throw new tn0("checksum failed");
        }
        byte[] bArr9 = new byte[iM3354do];
        System.arraycopy(bArrM33562if, 0, bArr9, 0, iM3354do);
        return bArr9;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i, int i2) throws IllegalStateException, tw, IllegalArgumentException {
        if (!this.f29743for) {
            throw new IllegalStateException("not set for wrapping");
        }
        byte[] bArr2 = new byte[8];
        byte[] bArrM3360goto = ib1.m3360goto(i2);
        byte[] bArr3 = this.f29746try;
        int blockSize = 0;
        System.arraycopy(bArr3, 0, bArr2, 0, bArr3.length);
        System.arraycopy(bArrM3360goto, 0, bArr2, this.f29746try.length, bArrM3360goto.length);
        byte[] bArr4 = new byte[i2];
        System.arraycopy(bArr, i, bArr4, 0, i2);
        byte[] bArrM33561do = m33561do(bArr4);
        if (bArrM33561do.length != 8) {
            Cnative cnative = new Cnative(this.f29742do);
            cnative.init(true, new bc1(this.f29744if, bArr2));
            return cnative.wrap(bArrM33561do, 0, bArrM33561do.length);
        }
        int length = bArrM33561do.length + 8;
        byte[] bArr5 = new byte[length];
        System.arraycopy(bArr2, 0, bArr5, 0, 8);
        System.arraycopy(bArrM33561do, 0, bArr5, 8, bArrM33561do.length);
        this.f29742do.init(true, this.f29744if);
        while (blockSize < length) {
            this.f29742do.processBlock(bArr5, blockSize, bArr5, blockSize);
            blockSize += this.f29742do.getBlockSize();
        }
        return bArr5;
    }
}
