package org.bouncycastle.crypto.modes;

import android.support.v4.bc1;
import android.support.v4.q3;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Ctry;

/* renamed from: org.bouncycastle.crypto.modes.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto extends Ctry {

    /* renamed from: case, reason: not valid java name */
    private final int f30076case;

    /* renamed from: else, reason: not valid java name */
    private final BlockCipher f30077else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f30078for;

    /* renamed from: goto, reason: not valid java name */
    private int f30079goto;

    /* renamed from: if, reason: not valid java name */
    private final int f30080if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f30081new;

    /* renamed from: this, reason: not valid java name */
    private boolean f30082this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f30083try;

    public Cgoto(BlockCipher blockCipher) {
        this(blockCipher, blockCipher.getBlockSize() * 8);
    }

    public Cgoto(BlockCipher blockCipher, int i) {
        super(blockCipher);
        this.f30079goto = 0;
        if (i < 0 || i > blockCipher.getBlockSize() * 8) {
            throw new IllegalArgumentException("Parameter bitBlockSize must be in range 0 < bitBlockSize <= " + (blockCipher.getBlockSize() * 8));
        }
        this.f30077else = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.f30076case = blockSize;
        this.f30080if = i / 8;
        this.f30078for = new byte[blockSize];
    }

    /* renamed from: for, reason: not valid java name */
    private byte[] m33749for() throws IllegalStateException, tw {
        byte[] bArr = this.f30078for;
        byte[] bArr2 = new byte[bArr.length];
        this.f30077else.processBlock(bArr, 0, bArr2, 0);
        return Cconst.m33727if(bArr2, this.f30080if);
    }

    /* renamed from: new, reason: not valid java name */
    private void m33750new() {
        byte[] bArr = this.f30078for;
        int length = bArr.length - 1;
        bArr[length] = (byte) (bArr[length] + 1);
    }

    /* renamed from: try, reason: not valid java name */
    private void m33751try() {
        int i = this.f30076case;
        this.f30081new = new byte[i / 2];
        this.f30078for = new byte[i];
        this.f30083try = new byte[this.f30080if];
    }

    @Override // org.bouncycastle.crypto.Ctry
    /* renamed from: do */
    public byte mo33707do(byte b) {
        if (this.f30079goto == 0) {
            this.f30083try = m33749for();
        }
        byte[] bArr = this.f30083try;
        int i = this.f30079goto;
        byte b2 = (byte) (b ^ bArr[i]);
        int i2 = i + 1;
        this.f30079goto = i2;
        if (i2 == this.f30080if) {
            this.f30079goto = 0;
            m33750new();
        }
        return b2;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.f30077else.getAlgorithmName() + "/GCTR";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f30080if;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            m33751try();
            byte[] bArrM6371final = q3.m6371final(bc1Var.m514do());
            this.f30081new = bArrM6371final;
            if (bArrM6371final.length != this.f30076case / 2) {
                throw new IllegalArgumentException("Parameter IV length must be == blockSize/2");
            }
            System.arraycopy(bArrM6371final, 0, this.f30078for, 0, bArrM6371final.length);
            for (int length = this.f30081new.length; length < this.f30076case; length++) {
                this.f30078for[length] = 0;
            }
            if (bc1Var.m515if() != null) {
                blockCipher = this.f30077else;
                cipherParameters = bc1Var.m515if();
                blockCipher.init(true, cipherParameters);
            }
        } else {
            m33751try();
            if (cipherParameters != null) {
                blockCipher = this.f30077else;
                blockCipher.init(true, cipherParameters);
            }
        }
        this.f30082this = true;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        processBytes(bArr, i, this.f30080if, bArr2, i2);
        return this.f30080if;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        if (this.f30082this) {
            byte[] bArr = this.f30081new;
            System.arraycopy(bArr, 0, this.f30078for, 0, bArr.length);
            for (int length = this.f30081new.length; length < this.f30076case; length++) {
                this.f30078for[length] = 0;
            }
            this.f30079goto = 0;
            this.f30077else.reset();
        }
    }
}
