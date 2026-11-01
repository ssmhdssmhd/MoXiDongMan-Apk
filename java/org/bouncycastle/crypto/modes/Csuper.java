package org.bouncycastle.crypto.modes;

import android.support.v4.bc1;
import android.support.v4.f91;
import android.support.v4.q3;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Ctry;

/* renamed from: org.bouncycastle.crypto.modes.super, reason: invalid class name */
/* loaded from: classes3.dex */
public class Csuper extends Ctry {

    /* renamed from: case, reason: not valid java name */
    private boolean f30142case;

    /* renamed from: else, reason: not valid java name */
    private BlockCipher f30143else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f30144for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f30145if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f30146new;

    /* renamed from: try, reason: not valid java name */
    private int f30147try;

    public Csuper(BlockCipher blockCipher) {
        super(blockCipher);
        this.f30143else = blockCipher;
        this.f30145if = new byte[blockCipher.getBlockSize()];
        this.f30144for = new byte[blockCipher.getBlockSize()];
        this.f30146new = new byte[blockCipher.getBlockSize()];
    }

    /* renamed from: for, reason: not valid java name */
    private void m33780for() {
    }

    /* renamed from: new, reason: not valid java name */
    private void m33781new(int i) {
        while (true) {
            byte[] bArr = this.f30144for;
            if (i >= bArr.length) {
                return;
            }
            int i2 = i + 1;
            byte b = (byte) (bArr[i] + 1);
            bArr[i] = b;
            if (b != 0) {
                return;
            } else {
                i = i2;
            }
        }
    }

    @Override // org.bouncycastle.crypto.Ctry
    /* renamed from: do */
    public byte mo33707do(byte b) throws IllegalStateException, tw {
        int i = this.f30147try;
        if (i == 0) {
            m33781new(0);
            m33780for();
            this.f30143else.processBlock(this.f30144for, 0, this.f30146new, 0);
            byte[] bArr = this.f30146new;
            int i2 = this.f30147try;
            this.f30147try = i2 + 1;
            return (byte) (b ^ bArr[i2]);
        }
        byte[] bArr2 = this.f30146new;
        int i3 = i + 1;
        this.f30147try = i3;
        byte b2 = (byte) (b ^ bArr2[i]);
        if (i3 == this.f30144for.length) {
            this.f30147try = 0;
        }
        return b2;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.f30143else.getAlgorithmName() + "/KCTR";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f30143else.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalStateException, tw, IllegalArgumentException {
        this.f30142case = true;
        if (!(cipherParameters instanceof bc1)) {
            throw new IllegalArgumentException("invalid parameter passed");
        }
        bc1 bc1Var = (bc1) cipherParameters;
        byte[] bArrM514do = bc1Var.m514do();
        byte[] bArr = this.f30145if;
        int length = bArr.length - bArrM514do.length;
        q3.c(bArr, (byte) 0);
        System.arraycopy(bArrM514do, 0, this.f30145if, length, bArrM514do.length);
        CipherParameters cipherParametersM515if = bc1Var.m515if();
        if (cipherParametersM515if != null) {
            this.f30143else.init(true, cipherParametersM515if);
        }
        reset();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        if (bArr.length - i < getBlockSize()) {
            throw new tw("input buffer too short");
        }
        if (bArr2.length - i2 < getBlockSize()) {
            throw new f91("output buffer too short");
        }
        processBytes(bArr, i, getBlockSize(), bArr2, i2);
        return getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() throws IllegalStateException, tw {
        if (this.f30142case) {
            this.f30143else.processBlock(this.f30145if, 0, this.f30144for, 0);
        }
        this.f30143else.reset();
        this.f30147try = 0;
    }
}
