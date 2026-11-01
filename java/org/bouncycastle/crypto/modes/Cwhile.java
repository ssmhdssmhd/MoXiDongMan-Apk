package org.bouncycastle.crypto.modes;

import android.support.v4.f91;
import android.support.v4.tn0;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Cif;

/* renamed from: org.bouncycastle.crypto.modes.while, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cwhile extends Cif {

    /* renamed from: break, reason: not valid java name */
    public static final int f30191break = 2;

    /* renamed from: catch, reason: not valid java name */
    public static final int f30192catch = 3;

    /* renamed from: this, reason: not valid java name */
    public static final int f30193this = 1;

    /* renamed from: else, reason: not valid java name */
    private final int f30194else;

    /* renamed from: goto, reason: not valid java name */
    private final int f30195goto;

    public Cwhile(int i, BlockCipher blockCipher) {
        this.f30194else = i;
        this.f29894new = new Cdo(blockCipher);
        int blockSize = blockCipher.getBlockSize();
        this.f30195goto = blockSize;
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
        int i2 = this.f29893if;
        int i3 = i2 - blockSize;
        byte[] bArr2 = new byte[blockSize];
        if (this.f29892for) {
            if (i2 < blockSize) {
                throw new tw("need at least one block of input for NISTCTS");
            }
            if (i2 > blockSize) {
                byte[] bArr3 = new byte[blockSize];
                int i4 = this.f30194else;
                if (i4 == 2 || i4 == 3) {
                    this.f29894new.processBlock(this.f29891do, 0, bArr2, 0);
                    System.arraycopy(this.f29891do, blockSize, bArr3, 0, i3);
                    this.f29894new.processBlock(bArr3, 0, bArr3, 0);
                    if (this.f30194else == 2 && i3 == blockSize) {
                        System.arraycopy(bArr2, 0, bArr, i, blockSize);
                        System.arraycopy(bArr3, 0, bArr, i + blockSize, i3);
                    } else {
                        System.arraycopy(bArr3, 0, bArr, i, blockSize);
                        System.arraycopy(bArr2, 0, bArr, i + blockSize, i3);
                    }
                } else {
                    System.arraycopy(this.f29891do, 0, bArr2, 0, blockSize);
                    this.f29894new.processBlock(bArr2, 0, bArr2, 0);
                    System.arraycopy(bArr2, 0, bArr, i, i3);
                    System.arraycopy(this.f29891do, this.f29893if - i3, bArr3, 0, i3);
                    this.f29894new.processBlock(bArr3, 0, bArr3, 0);
                    System.arraycopy(bArr3, 0, bArr, i + i3, blockSize);
                }
            } else {
                this.f29894new.processBlock(this.f29891do, 0, bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, i, blockSize);
            }
        } else {
            if (i2 < blockSize) {
                throw new tw("need at least one block of input for CTS");
            }
            byte[] bArr4 = new byte[blockSize];
            if (i2 > blockSize) {
                int i5 = this.f30194else;
                if (i5 == 3 || (i5 == 2 && (this.f29891do.length - i2) % blockSize != 0)) {
                    BlockCipher blockCipher = this.f29894new;
                    if (blockCipher instanceof Cdo) {
                        ((Cdo) blockCipher).m33731for().processBlock(this.f29891do, 0, bArr2, 0);
                    } else {
                        blockCipher.processBlock(this.f29891do, 0, bArr2, 0);
                    }
                    for (int i6 = blockSize; i6 != this.f29893if; i6++) {
                        int i7 = i6 - blockSize;
                        bArr4[i7] = (byte) (bArr2[i7] ^ this.f29891do[i6]);
                    }
                    System.arraycopy(this.f29891do, blockSize, bArr2, 0, i3);
                    this.f29894new.processBlock(bArr2, 0, bArr, i);
                } else {
                    ((Cdo) this.f29894new).m33731for().processBlock(this.f29891do, this.f29893if - blockSize, bArr4, 0);
                    System.arraycopy(this.f29891do, 0, bArr2, 0, blockSize);
                    if (i3 != blockSize) {
                        System.arraycopy(bArr4, i3, bArr2, i3, blockSize - i3);
                    }
                    this.f29894new.processBlock(bArr2, 0, bArr2, 0);
                    System.arraycopy(bArr2, 0, bArr, i, blockSize);
                    for (int i8 = 0; i8 != i3; i8++) {
                        bArr4[i8] = (byte) (bArr4[i8] ^ this.f29891do[i8]);
                    }
                }
                System.arraycopy(bArr4, 0, bArr, i + blockSize, i3);
            } else {
                this.f29894new.processBlock(this.f29891do, 0, bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, i, blockSize);
            }
        }
        int i9 = this.f29893if;
        mo7555this();
        return i9;
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
            int i4 = this.f30195goto;
            System.arraycopy(bArr3, i4, bArr3, 0, i4);
            this.f29893if = this.f30195goto;
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
