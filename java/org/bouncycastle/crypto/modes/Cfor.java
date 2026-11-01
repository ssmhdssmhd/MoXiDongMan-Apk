package org.bouncycastle.crypto.modes;

import android.support.v4.bc1;
import android.support.v4.q3;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Ctry;

/* renamed from: org.bouncycastle.crypto.modes.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends Ctry {

    /* renamed from: case, reason: not valid java name */
    private int f30068case;

    /* renamed from: else, reason: not valid java name */
    private BlockCipher f30069else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f30070for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f30071goto;

    /* renamed from: if, reason: not valid java name */
    private byte[] f30072if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f30073new;

    /* renamed from: this, reason: not valid java name */
    private int f30074this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f30075try;

    public Cfor(BlockCipher blockCipher, int i) {
        super(blockCipher);
        this.f30069else = null;
        this.f30069else = blockCipher;
        this.f30068case = i / 8;
        this.f30072if = new byte[blockCipher.getBlockSize()];
        this.f30070for = new byte[blockCipher.getBlockSize()];
        this.f30073new = new byte[blockCipher.getBlockSize()];
        this.f30075try = new byte[this.f30068case];
    }

    /* renamed from: case, reason: not valid java name */
    private byte m33744case(byte b) throws IllegalStateException, tw {
        if (this.f30074this == 0) {
            this.f30069else.processBlock(this.f30070for, 0, this.f30073new, 0);
        }
        byte[] bArr = this.f30073new;
        int i = this.f30074this;
        byte b2 = (byte) (b ^ bArr[i]);
        byte[] bArr2 = this.f30075try;
        int i2 = i + 1;
        this.f30074this = i2;
        bArr2[i] = b2;
        int i3 = this.f30068case;
        if (i2 == i3) {
            this.f30074this = 0;
            byte[] bArr3 = this.f30070for;
            System.arraycopy(bArr3, i3, bArr3, 0, bArr3.length - i3);
            byte[] bArr4 = this.f30075try;
            byte[] bArr5 = this.f30070for;
            int length = bArr5.length;
            int i4 = this.f30068case;
            System.arraycopy(bArr4, 0, bArr5, length - i4, i4);
        }
        return b2;
    }

    /* renamed from: new, reason: not valid java name */
    private byte m33745new(byte b) throws IllegalStateException, tw {
        if (this.f30074this == 0) {
            this.f30069else.processBlock(this.f30070for, 0, this.f30073new, 0);
        }
        byte[] bArr = this.f30075try;
        int i = this.f30074this;
        bArr[i] = b;
        byte[] bArr2 = this.f30073new;
        int i2 = i + 1;
        this.f30074this = i2;
        byte b2 = (byte) (b ^ bArr2[i]);
        int i3 = this.f30068case;
        if (i2 == i3) {
            this.f30074this = 0;
            byte[] bArr3 = this.f30070for;
            System.arraycopy(bArr3, i3, bArr3, 0, bArr3.length - i3);
            byte[] bArr4 = this.f30075try;
            byte[] bArr5 = this.f30070for;
            int length = bArr5.length;
            int i4 = this.f30068case;
            System.arraycopy(bArr4, 0, bArr5, length - i4, i4);
        }
        return b2;
    }

    @Override // org.bouncycastle.crypto.Ctry
    /* renamed from: do */
    public byte mo33707do(byte b) throws IllegalStateException, tw {
        return this.f30071goto ? m33744case(b) : m33745new(b);
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m33746else() {
        return q3.m6371final(this.f30070for);
    }

    /* renamed from: for, reason: not valid java name */
    public int m33747for(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        processBytes(bArr, i, this.f30068case, bArr2, i2);
        return this.f30068case;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.f30069else.getAlgorithmName() + "/CFB" + (this.f30068case * 8);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f30068case;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        this.f30071goto = z;
        if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            byte[] bArrM514do = bc1Var.m514do();
            int length = bArrM514do.length;
            byte[] bArr = this.f30072if;
            if (length < bArr.length) {
                System.arraycopy(bArrM514do, 0, bArr, bArr.length - bArrM514do.length, bArrM514do.length);
                int i = 0;
                while (true) {
                    byte[] bArr2 = this.f30072if;
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
            if (bc1Var.m515if() == null) {
                return;
            }
            blockCipher = this.f30069else;
            cipherParameters = bc1Var.m515if();
        } else {
            reset();
            if (cipherParameters == null) {
                return;
            } else {
                blockCipher = this.f30069else;
            }
        }
        blockCipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        processBytes(bArr, i, this.f30068case, bArr2, i2);
        return this.f30068case;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        byte[] bArr = this.f30072if;
        System.arraycopy(bArr, 0, this.f30070for, 0, bArr.length);
        q3.c(this.f30075try, (byte) 0);
        this.f30074this = 0;
        this.f30069else.reset();
    }

    /* renamed from: try, reason: not valid java name */
    public int m33748try(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        processBytes(bArr, i, this.f30068case, bArr2, i2);
        return this.f30068case;
    }
}
