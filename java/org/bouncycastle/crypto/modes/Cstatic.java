package org.bouncycastle.crypto.modes;

import android.support.v4.bc1;
import android.support.v4.f91;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.modes.static, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cstatic implements BlockCipher {

    /* renamed from: case, reason: not valid java name */
    private int f30133case;

    /* renamed from: do, reason: not valid java name */
    private byte[] f30134do;

    /* renamed from: else, reason: not valid java name */
    private int f30135else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f30136for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f30137goto;

    /* renamed from: if, reason: not valid java name */
    private byte[] f30138if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f30139new;

    /* renamed from: this, reason: not valid java name */
    private boolean f30140this;

    /* renamed from: try, reason: not valid java name */
    private BlockCipher f30141try;

    public Cstatic(BlockCipher blockCipher, boolean z) {
        this.f30141try = blockCipher;
        this.f30140this = z;
        int blockSize = blockCipher.getBlockSize();
        this.f30135else = blockSize;
        this.f30134do = new byte[blockSize];
        this.f30138if = new byte[blockSize];
        this.f30136for = new byte[blockSize];
        this.f30139new = new byte[blockSize];
    }

    /* renamed from: do, reason: not valid java name */
    private int m33774do(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        int i3 = this.f30135else;
        if (i + i3 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i3 + i2 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        int i4 = 0;
        this.f30141try.processBlock(this.f30138if, 0, this.f30136for, 0);
        for (int i5 = 0; i5 < this.f30135else; i5++) {
            bArr2[i2 + i5] = m33778try(bArr[i + i5], i5);
        }
        while (true) {
            int i6 = this.f30135else;
            if (i4 >= i6) {
                return i6;
            }
            this.f30138if[i4] = bArr[i + i4];
            i4++;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private int m33775for(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        int i3 = this.f30135else;
        if (i + i3 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i3 + i2 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        int i4 = 0;
        this.f30141try.processBlock(this.f30138if, 0, this.f30136for, 0);
        for (int i5 = 0; i5 < this.f30135else; i5++) {
            bArr2[i2 + i5] = m33778try(bArr[i + i5], i5);
        }
        while (true) {
            int i6 = this.f30135else;
            if (i4 >= i6) {
                return i6;
            }
            this.f30138if[i4] = bArr2[i2 + i4];
            i4++;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private int m33776if(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        int i3;
        int i4 = this.f30135else;
        if (i + i4 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + i4 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        int i5 = this.f30133case;
        if (i5 == 0) {
            for (int i6 = 0; i6 < this.f30135else; i6++) {
                this.f30138if[i6] = bArr[i + i6];
            }
            this.f30141try.processBlock(this.f30138if, 0, this.f30136for, 0);
            this.f30133case += this.f30135else;
            return 0;
        }
        if (i5 != i4) {
            if (i5 >= i4 + 2) {
                System.arraycopy(bArr, i, this.f30139new, 0, i4);
                bArr2[i2 + 0] = m33778try(this.f30139new[0], this.f30135else - 2);
                bArr2[i2 + 1] = m33778try(this.f30139new[1], this.f30135else - 1);
                System.arraycopy(this.f30139new, 0, this.f30138if, this.f30135else - 2, 2);
                this.f30141try.processBlock(this.f30138if, 0, this.f30136for, 0);
                int i7 = 0;
                while (true) {
                    i3 = this.f30135else;
                    if (i7 >= i3 - 2) {
                        break;
                    }
                    bArr2[i2 + i7 + 2] = m33778try(this.f30139new[i7 + 2], i7);
                    i7++;
                }
                System.arraycopy(this.f30139new, 2, this.f30138if, 0, i3 - 2);
            }
            return this.f30135else;
        }
        System.arraycopy(bArr, i, this.f30139new, 0, i4);
        byte[] bArr3 = this.f30138if;
        System.arraycopy(bArr3, 2, bArr3, 0, this.f30135else - 2);
        byte[] bArr4 = this.f30138if;
        int i8 = this.f30135else;
        byte[] bArr5 = this.f30139new;
        bArr4[i8 - 2] = bArr5[0];
        bArr4[i8 - 1] = bArr5[1];
        this.f30141try.processBlock(bArr4, 0, this.f30136for, 0);
        int i9 = 0;
        while (true) {
            int i10 = this.f30135else;
            if (i9 >= i10 - 2) {
                System.arraycopy(this.f30139new, 2, this.f30138if, 0, i10 - 2);
                this.f30133case += 2;
                return this.f30135else - 2;
            }
            bArr2[i2 + i9] = m33778try(this.f30139new[i9 + 2], i9);
            i9++;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private int m33777new(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        int i3;
        int i4;
        int i5 = this.f30135else;
        if (i + i5 > bArr.length) {
            throw new tw("input buffer too short");
        }
        int i6 = this.f30133case;
        if (i6 != 0) {
            if (i6 >= i5 + 2) {
                if (i5 + i2 > bArr2.length) {
                    throw new f91("output buffer too short");
                }
                this.f30141try.processBlock(this.f30138if, 0, this.f30136for, 0);
                int i7 = 0;
                while (true) {
                    i3 = this.f30135else;
                    if (i7 >= i3) {
                        break;
                    }
                    bArr2[i2 + i7] = m33778try(bArr[i + i7], i7);
                    i7++;
                }
                System.arraycopy(bArr2, i2, this.f30138if, 0, i3);
            }
            return this.f30135else;
        }
        if ((i5 * 2) + i2 + 2 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        this.f30141try.processBlock(this.f30138if, 0, this.f30136for, 0);
        int i8 = 0;
        while (true) {
            i4 = this.f30135else;
            if (i8 >= i4) {
                break;
            }
            bArr2[i2 + i8] = m33778try(this.f30134do[i8], i8);
            i8++;
        }
        System.arraycopy(bArr2, i2, this.f30138if, 0, i4);
        this.f30141try.processBlock(this.f30138if, 0, this.f30136for, 0);
        int i9 = this.f30135else;
        bArr2[i2 + i9] = m33778try(this.f30134do[i9 - 2], 0);
        int i10 = this.f30135else;
        bArr2[i2 + i10 + 1] = m33778try(this.f30134do[i10 - 1], 1);
        System.arraycopy(bArr2, i2 + 2, this.f30138if, 0, this.f30135else);
        this.f30141try.processBlock(this.f30138if, 0, this.f30136for, 0);
        int i11 = 0;
        while (true) {
            int i12 = this.f30135else;
            if (i11 >= i12) {
                System.arraycopy(bArr2, i2 + i12 + 2, this.f30138if, 0, i12);
                int i13 = this.f30133case;
                int i14 = this.f30135else;
                this.f30133case = i13 + (i14 * 2) + 2;
                return (i14 * 2) + 2;
            }
            bArr2[i12 + i2 + 2 + i11] = m33778try(bArr[i + i11], i11);
            i11++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private byte m33778try(byte b, int i) {
        return (byte) (b ^ this.f30136for[i]);
    }

    /* renamed from: case, reason: not valid java name */
    public BlockCipher m33779case() {
        return this.f30141try;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        StringBuilder sb;
        String str;
        if (this.f30140this) {
            sb = new StringBuilder();
            sb.append(this.f30141try.getAlgorithmName());
            str = "/PGPCFBwithIV";
        } else {
            sb = new StringBuilder();
            sb.append(this.f30141try.getAlgorithmName());
            str = "/PGPCFB";
        }
        sb.append(str);
        return sb.toString();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f30141try.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        this.f30137goto = z;
        if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            byte[] bArrM514do = bc1Var.m514do();
            int length = bArrM514do.length;
            byte[] bArr = this.f30134do;
            if (length < bArr.length) {
                System.arraycopy(bArrM514do, 0, bArr, bArr.length - bArrM514do.length, bArrM514do.length);
                int i = 0;
                while (true) {
                    byte[] bArr2 = this.f30134do;
                    if (i >= bArr2.length - bArrM514do.length) {
                        break;
                    }
                    bArr2[i] = 0;
                    i++;
                }
            } else {
                System.arraycopy(bArrM514do, 0, bArr, 0, bArr.length);
            }
            reset();
            blockCipher = this.f30141try;
            cipherParameters = bc1Var.m515if();
        } else {
            reset();
            blockCipher = this.f30141try;
        }
        blockCipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        return this.f30140this ? this.f30137goto ? m33777new(bArr, i, bArr2, i2) : m33776if(bArr, i, bArr2, i2) : this.f30137goto ? m33775for(bArr, i, bArr2, i2) : m33774do(bArr, i, bArr2, i2);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        this.f30133case = 0;
        int i = 0;
        while (true) {
            byte[] bArr = this.f30138if;
            if (i == bArr.length) {
                this.f30141try.reset();
                return;
            }
            if (this.f30140this) {
                bArr[i] = 0;
            } else {
                bArr[i] = this.f30134do[i];
            }
            i++;
        }
    }
}
