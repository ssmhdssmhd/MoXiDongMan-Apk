package org.bouncycastle.crypto.modes;

import android.support.v4.f91;
import android.support.v4.tn0;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Cif;

/* renamed from: org.bouncycastle.crypto.modes.switch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cswitch extends Cif {
    public Cswitch(BlockCipher blockCipher) {
        this.f29894new = blockCipher;
        this.f29891do = new byte[blockCipher.getBlockSize()];
        this.f29893if = 0;
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: do */
    public int mo7551do(byte[] bArr, int i) throws IllegalStateException, tw, tn0 {
        int iProcessBlock;
        int iProcessBlock2;
        int blockSize = this.f29894new.getBlockSize();
        if (this.f29892for) {
            if (this.f29893if != blockSize) {
                iProcessBlock2 = 0;
            } else {
                if ((blockSize * 2) + i > bArr.length) {
                    throw new f91("output buffer too short");
                }
                iProcessBlock2 = this.f29894new.processBlock(this.f29891do, 0, bArr, i);
                this.f29893if = 0;
            }
            byte b = (byte) (blockSize - this.f29893if);
            while (true) {
                int i2 = this.f29893if;
                if (i2 >= blockSize) {
                    break;
                }
                this.f29891do[i2] = b;
                this.f29893if = i2 + 1;
            }
            iProcessBlock = iProcessBlock2 + this.f29894new.processBlock(this.f29891do, 0, bArr, i + iProcessBlock2);
        } else {
            if (this.f29893if != blockSize) {
                throw new tw("last block incomplete in decryption");
            }
            BlockCipher blockCipher = this.f29894new;
            byte[] bArr2 = this.f29891do;
            int iProcessBlock3 = blockCipher.processBlock(bArr2, 0, bArr2, 0);
            this.f29893if = 0;
            byte[] bArr3 = this.f29891do;
            int i3 = bArr3[blockSize - 1] & 255;
            if (i3 > blockSize) {
                throw new tn0("pad block corrupted");
            }
            iProcessBlock = iProcessBlock3 - i3;
            System.arraycopy(bArr3, 0, bArr, i, iProcessBlock);
        }
        mo7555this();
        return iProcessBlock;
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: else */
    public int mo7552else(byte b, byte[] bArr, int i) throws IllegalStateException, tw {
        int i2 = this.f29893if;
        byte[] bArr2 = this.f29891do;
        int i3 = 0;
        if (i2 == bArr2.length) {
            int iProcessBlock = this.f29894new.processBlock(bArr2, 0, bArr, i);
            this.f29893if = 0;
            i3 = iProcessBlock;
        }
        byte[] bArr3 = this.f29891do;
        int i4 = this.f29893if;
        this.f29893if = i4 + 1;
        bArr3[i4] = b;
        return i3;
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: for */
    public int mo7553for(int i) {
        int i2 = i + this.f29893if;
        byte[] bArr = this.f29891do;
        int length = i2 % bArr.length;
        if (length != 0) {
            i2 -= length;
        } else if (!this.f29892for) {
            return i2;
        }
        return i2 + bArr.length;
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
        int iProcessBlock = 0;
        if (i2 > i5) {
            System.arraycopy(bArr, i, bArr3, i4, i5);
            int iProcessBlock2 = this.f29894new.processBlock(this.f29891do, 0, bArr2, i3) + 0;
            this.f29893if = 0;
            i2 -= i5;
            i += i5;
            iProcessBlock = iProcessBlock2;
            while (i2 > this.f29891do.length) {
                iProcessBlock += this.f29894new.processBlock(bArr, i, bArr2, i3 + iProcessBlock);
                i2 -= iM33681if;
                i += iM33681if;
            }
        }
        System.arraycopy(bArr, i, this.f29891do, this.f29893if, i2);
        this.f29893if += i2;
        return iProcessBlock;
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
