package org.bouncycastle.crypto.modes;

import android.support.v4.bc1;
import android.support.v4.q3;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.modes.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase implements BlockCipher {

    /* renamed from: case, reason: not valid java name */
    private boolean f29989case = false;

    /* renamed from: do, reason: not valid java name */
    private int f29990do;

    /* renamed from: else, reason: not valid java name */
    private boolean f29991else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f29992for;

    /* renamed from: if, reason: not valid java name */
    private int f29993if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f29994new;

    /* renamed from: try, reason: not valid java name */
    private BlockCipher f29995try;

    public Ccase(BlockCipher blockCipher) {
        this.f29993if = blockCipher.getBlockSize();
        this.f29995try = blockCipher;
    }

    /* renamed from: do, reason: not valid java name */
    private int m33708do(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        byte[] bArrM33727if = Cconst.m33727if(this.f29992for, this.f29993if);
        byte[] bArrM33726for = Cconst.m33726for(bArr, this.f29993if, i);
        byte[] bArr3 = new byte[bArrM33726for.length];
        this.f29995try.processBlock(bArrM33726for, 0, bArr3, 0);
        byte[] bArrM33728new = Cconst.m33728new(bArr3, bArrM33727if);
        System.arraycopy(bArrM33728new, 0, bArr2, i2, bArrM33728new.length);
        if (bArr2.length > i2 + bArrM33728new.length) {
            m33709for(bArrM33726for);
        }
        return bArrM33728new.length;
    }

    /* renamed from: for, reason: not valid java name */
    private void m33709for(byte[] bArr) {
        byte[] bArrM33725do = Cconst.m33725do(this.f29992for, this.f29990do - this.f29993if);
        System.arraycopy(bArrM33725do, 0, this.f29992for, 0, bArrM33725do.length);
        System.arraycopy(bArr, 0, this.f29992for, bArrM33725do.length, this.f29990do - bArrM33725do.length);
    }

    /* renamed from: if, reason: not valid java name */
    private int m33710if(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        byte[] bArrM33728new = Cconst.m33728new(Cconst.m33726for(bArr, this.f29993if, i), Cconst.m33727if(this.f29992for, this.f29993if));
        int length = bArrM33728new.length;
        byte[] bArr3 = new byte[length];
        this.f29995try.processBlock(bArrM33728new, 0, bArr3, 0);
        System.arraycopy(bArr3, 0, bArr2, i2, length);
        if (bArr2.length > i2 + bArrM33728new.length) {
            m33709for(bArr3);
        }
        return length;
    }

    /* renamed from: new, reason: not valid java name */
    private void m33711new() {
        int i = this.f29990do;
        this.f29992for = new byte[i];
        this.f29994new = new byte[i];
    }

    /* renamed from: try, reason: not valid java name */
    private void m33712try() {
        this.f29990do = this.f29993if;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.f29995try.getAlgorithmName() + "/CBC";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f29993if;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        this.f29991else = z;
        if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            byte[] bArrM514do = bc1Var.m514do();
            if (bArrM514do.length < this.f29993if) {
                throw new IllegalArgumentException("Parameter m must blockSize <= m");
            }
            this.f29990do = bArrM514do.length;
            m33711new();
            byte[] bArrM6371final = q3.m6371final(bArrM514do);
            this.f29994new = bArrM6371final;
            System.arraycopy(bArrM6371final, 0, this.f29992for, 0, bArrM6371final.length);
            if (bc1Var.m515if() != null) {
                blockCipher = this.f29995try;
                cipherParameters = bc1Var.m515if();
                blockCipher.init(z, cipherParameters);
            }
        } else {
            m33712try();
            m33711new();
            byte[] bArr = this.f29994new;
            System.arraycopy(bArr, 0, this.f29992for, 0, bArr.length);
            if (cipherParameters != null) {
                blockCipher = this.f29995try;
                blockCipher.init(z, cipherParameters);
            }
        }
        this.f29989case = true;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        return this.f29991else ? m33710if(bArr, i, bArr2, i2) : m33708do(bArr, i, bArr2, i2);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        if (this.f29989case) {
            byte[] bArr = this.f29994new;
            System.arraycopy(bArr, 0, this.f29992for, 0, bArr.length);
            this.f29995try.reset();
        }
    }
}
