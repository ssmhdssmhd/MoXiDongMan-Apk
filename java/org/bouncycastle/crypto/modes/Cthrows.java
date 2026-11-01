package org.bouncycastle.crypto.modes;

import android.support.v4.bc1;
import android.support.v4.ib1;
import android.support.v4.q3;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Ctry;
import org.bouncycastle.crypto.SkippingStreamCipher;

/* renamed from: org.bouncycastle.crypto.modes.throws, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthrows extends Ctry implements SkippingStreamCipher {

    /* renamed from: case, reason: not valid java name */
    private byte[] f30170case;

    /* renamed from: else, reason: not valid java name */
    private int f30171else;

    /* renamed from: for, reason: not valid java name */
    private final int f30172for;

    /* renamed from: if, reason: not valid java name */
    private final BlockCipher f30173if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f30174new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f30175try;

    public Cthrows(BlockCipher blockCipher) {
        super(blockCipher);
        this.f30173if = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.f30172for = blockSize;
        this.f30174new = new byte[blockSize];
        this.f30175try = new byte[blockSize];
        this.f30170case = new byte[blockSize];
        this.f30171else = 0;
    }

    /* renamed from: case, reason: not valid java name */
    private void m33791case(int i) {
        byte[] bArr = this.f30175try;
        byte b = bArr[bArr.length - 1];
        int length = bArr.length - 1;
        bArr[length] = (byte) (bArr[length] + i);
        if (b == 0 || bArr[bArr.length - 1] >= b) {
            return;
        }
        m33792else(1);
    }

    /* renamed from: else, reason: not valid java name */
    private void m33792else(int i) {
        byte b;
        int length = this.f30175try.length - i;
        do {
            length--;
            if (length < 0) {
                return;
            }
            byte[] bArr = this.f30175try;
            b = (byte) (bArr[length] + 1);
            bArr[length] = b;
        } while (b == 0);
    }

    /* renamed from: for, reason: not valid java name */
    private void m33793for(long j) {
        int i;
        int i2 = 5;
        if (j >= 0) {
            long j2 = (this.f30171else + j) / this.f30172for;
            long j3 = j2;
            if (j2 > 255) {
                while (i2 >= 1) {
                    long j4 = 1 << (i2 * 8);
                    while (j3 >= j4) {
                        m33792else(i2);
                        j3 -= j4;
                    }
                    i2--;
                }
            }
            m33791case((int) j3);
            i = (int) ((j + this.f30171else) - (this.f30172for * j2));
        } else {
            long j5 = ((-j) - this.f30171else) / this.f30172for;
            long j6 = j5;
            if (j5 > 255) {
                while (i2 >= 1) {
                    long j7 = 1 << (i2 * 8);
                    while (j6 > j7) {
                        m33795try(i2);
                        j6 -= j7;
                    }
                    i2--;
                }
            }
            for (long j8 = 0; j8 != j6; j8++) {
                m33795try(0);
            }
            int i3 = (int) (this.f30171else + j + (this.f30172for * j5));
            if (i3 >= 0) {
                this.f30171else = 0;
                return;
            } else {
                m33795try(0);
                i = this.f30172for + i3;
            }
        }
        this.f30171else = i;
    }

    /* renamed from: new, reason: not valid java name */
    private void m33794new() {
        if (this.f30174new.length >= this.f30172for) {
            return;
        }
        int i = 0;
        while (true) {
            byte[] bArr = this.f30174new;
            if (i == bArr.length) {
                return;
            }
            if (this.f30175try[i] != bArr[i]) {
                throw new IllegalStateException("Counter in CTR/SIC mode out of range.");
            }
            i++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m33795try(int i) {
        byte b;
        int length = this.f30175try.length - i;
        do {
            length--;
            if (length < 0) {
                return;
            }
            b = (byte) (r1[length] - 1);
            this.f30175try[length] = b;
        } while (b == -1);
    }

    @Override // org.bouncycastle.crypto.Ctry
    /* renamed from: do */
    public byte mo33707do(byte b) throws IllegalStateException, tw {
        int i = this.f30171else;
        if (i == 0) {
            this.f30173if.processBlock(this.f30175try, 0, this.f30170case, 0);
            byte[] bArr = this.f30170case;
            int i2 = this.f30171else;
            this.f30171else = i2 + 1;
            return (byte) (b ^ bArr[i2]);
        }
        byte[] bArr2 = this.f30170case;
        int i3 = i + 1;
        this.f30171else = i3;
        byte b2 = (byte) (b ^ bArr2[i]);
        if (i3 == this.f30175try.length) {
            this.f30171else = 0;
            m33792else(0);
            m33794new();
        }
        return b2;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.f30173if.getAlgorithmName() + "/SIC";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f30173if.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long getPosition() {
        byte[] bArr = this.f30175try;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        int i = length - 1;
        while (i >= 1) {
            byte[] bArr3 = this.f30174new;
            int i2 = i < bArr3.length ? (bArr2[i] & 255) - (bArr3[i] & 255) : bArr2[i] & 255;
            if (i2 < 0) {
                int i3 = i - 1;
                bArr2[i3] = (byte) (bArr2[i3] - 1);
                i2 += 256;
            }
            bArr2[i] = (byte) i2;
            i--;
        }
        return (ib1.m3359for(bArr2, length - 8) * this.f30172for) + this.f30171else;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof bc1)) {
            throw new IllegalArgumentException("CTR/SIC mode requires ParametersWithIV");
        }
        bc1 bc1Var = (bc1) cipherParameters;
        byte[] bArrM6371final = q3.m6371final(bc1Var.m514do());
        this.f30174new = bArrM6371final;
        int i = this.f30172for;
        if (i < bArrM6371final.length) {
            throw new IllegalArgumentException("CTR/SIC mode requires IV no greater than: " + this.f30172for + " bytes.");
        }
        int i2 = 8 > i / 2 ? i / 2 : 8;
        if (i - bArrM6371final.length <= i2) {
            if (bc1Var.m515if() != null) {
                this.f30173if.init(true, bc1Var.m515if());
            }
            reset();
        } else {
            throw new IllegalArgumentException("CTR/SIC mode requires IV of at least: " + (this.f30172for - i2) + " bytes.");
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        processBytes(bArr, i, this.f30172for, bArr2, i2);
        return this.f30172for;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        q3.c(this.f30175try, (byte) 0);
        byte[] bArr = this.f30174new;
        System.arraycopy(bArr, 0, this.f30175try, 0, bArr.length);
        this.f30173if.reset();
        this.f30171else = 0;
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long seekTo(long j) {
        reset();
        return skip(j);
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long skip(long j) throws IllegalStateException, tw {
        m33793for(j);
        m33794new();
        this.f30173if.processBlock(this.f30175try, 0, this.f30170case, 0);
        return j;
    }
}
