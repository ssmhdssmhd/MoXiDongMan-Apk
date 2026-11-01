package org.bouncycastle.crypto.paddings;

import android.support.v4.cc1;
import android.support.v4.f91;
import android.support.v4.tn0;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Cif;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.paddings.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends Cif {

    /* renamed from: else, reason: not valid java name */
    public BlockCipherPadding f30199else;

    public Cnew(BlockCipher blockCipher) {
        this(blockCipher, new Cfor());
    }

    public Cnew(BlockCipher blockCipher, BlockCipherPadding blockCipherPadding) {
        this.f29894new = blockCipher;
        this.f30199else = blockCipherPadding;
        this.f29891do = new byte[blockCipher.getBlockSize()];
        this.f29893if = 0;
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: case */
    public void mo7550case(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        this.f29892for = z;
        mo7555this();
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            this.f30199else.init(cc1Var.m847if());
            blockCipher = this.f29894new;
            cipherParameters = cc1Var.m846do();
        } else {
            this.f30199else.init(null);
            blockCipher = this.f29894new;
        }
        blockCipher.init(z, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: do */
    public int mo7551do(byte[] bArr, int i) throws IllegalStateException, tw, tn0 {
        int iPadCount;
        int iProcessBlock;
        int blockSize = this.f29894new.getBlockSize();
        if (this.f29892for) {
            if (this.f29893if != blockSize) {
                iProcessBlock = 0;
            } else {
                if ((blockSize * 2) + i > bArr.length) {
                    mo7555this();
                    throw new f91("output buffer too short");
                }
                iProcessBlock = this.f29894new.processBlock(this.f29891do, 0, bArr, i);
                this.f29893if = 0;
            }
            this.f30199else.addPadding(this.f29891do, this.f29893if);
            iPadCount = iProcessBlock + this.f29894new.processBlock(this.f29891do, 0, bArr, i + iProcessBlock);
        } else {
            if (this.f29893if != blockSize) {
                mo7555this();
                throw new tw("last block incomplete in decryption");
            }
            BlockCipher blockCipher = this.f29894new;
            byte[] bArr2 = this.f29891do;
            int iProcessBlock2 = blockCipher.processBlock(bArr2, 0, bArr2, 0);
            this.f29893if = 0;
            try {
                iPadCount = iProcessBlock2 - this.f30199else.padCount(this.f29891do);
                System.arraycopy(this.f29891do, 0, bArr, i, iPadCount);
            } finally {
                mo7555this();
            }
        }
        return iPadCount;
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
        return length == 0 ? Math.max(0, i2 - bArr.length) : i2 - length;
    }
}
