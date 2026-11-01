package org.bouncycastle.crypto.modes;

import android.support.v4.f91;
import android.support.v4.tn0;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Cif;

/* renamed from: org.bouncycastle.crypto.modes.public, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cpublic extends Cif {

    /* renamed from: else, reason: not valid java name */
    private int f30125else;

    public Cpublic(BlockCipher blockCipher) {
        if ((blockCipher instanceof Cnative) || (blockCipher instanceof Cfor)) {
            throw new IllegalArgumentException("CTSBlockCipher can only accept ECB, or CBC ciphers");
        }
        this.f29894new = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.f30125else = blockSize;
        this.f29891do = new byte[blockSize * 2];
        this.f29893if = 0;
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: do */
    public int mo7551do(byte[] bArr, int i) throws IllegalStateException, tw, tn0 {
        if (this.f29893if + i > bArr.length) {
            throw new f91("output buffer to small in doFinal");
        }
        int blockSize = this.f29894new.getBlockSize();
        int i2 = this.f29893if - blockSize;
        byte[] bArr2 = new byte[blockSize];
        if (this.f29892for) {
            this.f29894new.processBlock(this.f29891do, 0, bArr2, 0);
            int i3 = this.f29893if;
            if (i3 < blockSize) {
                throw new tw("need at least one block of input for CTS");
            }
            while (true) {
                byte[] bArr3 = this.f29891do;
                if (i3 == bArr3.length) {
                    break;
                }
                bArr3[i3] = bArr2[i3 - blockSize];
                i3++;
            }
            for (int i4 = blockSize; i4 != this.f29893if; i4++) {
                byte[] bArr4 = this.f29891do;
                bArr4[i4] = (byte) (bArr4[i4] ^ bArr2[i4 - blockSize]);
            }
            BlockCipher blockCipher = this.f29894new;
            if (blockCipher instanceof Cdo) {
                ((Cdo) blockCipher).m33731for().processBlock(this.f29891do, blockSize, bArr, i);
            } else {
                blockCipher.processBlock(this.f29891do, blockSize, bArr, i);
            }
            System.arraycopy(bArr2, 0, bArr, i + blockSize, i2);
        } else {
            byte[] bArr5 = new byte[blockSize];
            BlockCipher blockCipher2 = this.f29894new;
            if (blockCipher2 instanceof Cdo) {
                ((Cdo) blockCipher2).m33731for().processBlock(this.f29891do, 0, bArr2, 0);
            } else {
                blockCipher2.processBlock(this.f29891do, 0, bArr2, 0);
            }
            for (int i5 = blockSize; i5 != this.f29893if; i5++) {
                int i6 = i5 - blockSize;
                bArr5[i6] = (byte) (bArr2[i6] ^ this.f29891do[i5]);
            }
            System.arraycopy(this.f29891do, blockSize, bArr2, 0, i2);
            this.f29894new.processBlock(bArr2, 0, bArr, i);
            System.arraycopy(bArr5, 0, bArr, i + blockSize, i2);
        }
        int i7 = this.f29893if;
        mo7555this();
        return i7;
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: else */
    public int mo7552else(byte b, byte[] bArr, int i) throws IllegalStateException, tw {
        int i2 = this.f29893if;
        byte[] bArr2 = this.f29891do;
        int i3 = 0;
        if (i2 == bArr2.length) {
            int iProcessBlock = this.f29894new.processBlock(bArr2, 0, bArr, i);
            byte[] bArr3 = this.f29891do;
            int i4 = this.f30125else;
            System.arraycopy(bArr3, i4, bArr3, 0, i4);
            this.f29893if = this.f30125else;
            i3 = iProcessBlock;
        }
        byte[] bArr4 = this.f29891do;
        int i5 = this.f29893if;
        this.f29893if = i5 + 1;
        bArr4[i5] = b;
        return i3;
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: for */
    public int mo7553for(int i) {
        return i + this.f29893if;
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: goto */
    public int mo7554goto(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalStateException, tw {
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int iM33681if = m33681if();
        int iMo7556try = mo7556try(i2);
        if (iMo7556try > 0 && iMo7556try + i3 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        byte[] bArr3 = this.f29891do;
        int length = bArr3.length;
        int i4 = this.f29893if;
        int i5 = length - i4;
        int i6 = 0;
        if (i2 > i5) {
            System.arraycopy(bArr, i, bArr3, i4, i5);
            int iProcessBlock = this.f29894new.processBlock(this.f29891do, 0, bArr2, i3) + 0;
            byte[] bArr4 = this.f29891do;
            System.arraycopy(bArr4, iM33681if, bArr4, 0, iM33681if);
            this.f29893if = iM33681if;
            i2 -= i5;
            i += i5;
            while (i2 > iM33681if) {
                System.arraycopy(bArr, i, this.f29891do, this.f29893if, iM33681if);
                iProcessBlock += this.f29894new.processBlock(this.f29891do, 0, bArr2, i3 + iProcessBlock);
                byte[] bArr5 = this.f29891do;
                System.arraycopy(bArr5, iM33681if, bArr5, 0, iM33681if);
                i2 -= iM33681if;
                i += iM33681if;
            }
            i6 = iProcessBlock;
        }
        System.arraycopy(bArr, i, this.f29891do, this.f29893if, i2);
        this.f29893if += i2;
        return i6;
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: try */
    public int mo7556try(int i) {
        int i2 = i + this.f29893if;
        byte[] bArr = this.f29891do;
        int length = i2 % bArr.length;
        return length == 0 ? i2 - bArr.length : i2 - length;
    }
}
