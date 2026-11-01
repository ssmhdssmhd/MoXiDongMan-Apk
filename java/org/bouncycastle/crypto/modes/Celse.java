package org.bouncycastle.crypto.modes;

import android.support.v4.bc1;
import android.support.v4.q3;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Ctry;

/* renamed from: org.bouncycastle.crypto.modes.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends Ctry {

    /* renamed from: break, reason: not valid java name */
    private byte[] f30038break;

    /* renamed from: case, reason: not valid java name */
    private byte[] f30039case;

    /* renamed from: catch, reason: not valid java name */
    private byte[] f30040catch;

    /* renamed from: class, reason: not valid java name */
    private int f30041class;

    /* renamed from: else, reason: not valid java name */
    private BlockCipher f30042else;

    /* renamed from: for, reason: not valid java name */
    private int f30043for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f30044goto;

    /* renamed from: if, reason: not valid java name */
    private final int f30045if;

    /* renamed from: new, reason: not valid java name */
    private int f30046new;

    /* renamed from: this, reason: not valid java name */
    private boolean f30047this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f30048try;

    public Celse(BlockCipher blockCipher) {
        this(blockCipher, blockCipher.getBlockSize() * 8);
    }

    public Celse(BlockCipher blockCipher, int i) {
        super(blockCipher);
        this.f30047this = false;
        if (i < 0 || i > blockCipher.getBlockSize() * 8) {
            throw new IllegalArgumentException("Parameter bitBlockSize must be in range 0 < bitBlockSize <= " + (blockCipher.getBlockSize() * 8));
        }
        this.f30046new = blockCipher.getBlockSize();
        this.f30042else = blockCipher;
        this.f30045if = i / 8;
        this.f30040catch = new byte[getBlockSize()];
    }

    /* renamed from: case, reason: not valid java name */
    private void m33732case() {
        this.f30043for = this.f30046new * 2;
    }

    /* renamed from: try, reason: not valid java name */
    private void m33733try() {
        int i = this.f30043for;
        this.f30048try = new byte[i];
        this.f30039case = new byte[i];
    }

    @Override // org.bouncycastle.crypto.Ctry
    /* renamed from: do */
    public byte mo33707do(byte b) {
        if (this.f30041class == 0) {
            this.f30038break = m33734for();
        }
        byte[] bArr = this.f30038break;
        int i = this.f30041class;
        byte b2 = (byte) (bArr[i] ^ b);
        byte[] bArr2 = this.f30040catch;
        int i2 = i + 1;
        this.f30041class = i2;
        if (this.f30044goto) {
            b = b2;
        }
        bArr2[i] = b;
        if (i2 == getBlockSize()) {
            this.f30041class = 0;
            m33735new(this.f30040catch);
        }
        return b2;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m33734for() throws IllegalStateException, tw {
        byte[] bArrM33727if = Cconst.m33727if(this.f30048try, this.f30046new);
        byte[] bArr = new byte[bArrM33727if.length];
        this.f30042else.processBlock(bArrM33727if, 0, bArr, 0);
        return Cconst.m33727if(bArr, this.f30045if);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.f30042else.getAlgorithmName() + "/CFB" + (this.f30046new * 8);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f30045if;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        this.f30044goto = z;
        if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            byte[] bArrM514do = bc1Var.m514do();
            if (bArrM514do.length < this.f30046new) {
                throw new IllegalArgumentException("Parameter m must blockSize <= m");
            }
            this.f30043for = bArrM514do.length;
            m33733try();
            byte[] bArrM6371final = q3.m6371final(bArrM514do);
            this.f30039case = bArrM6371final;
            System.arraycopy(bArrM6371final, 0, this.f30048try, 0, bArrM6371final.length);
            if (bc1Var.m515if() != null) {
                blockCipher = this.f30042else;
                cipherParameters = bc1Var.m515if();
                blockCipher.init(true, cipherParameters);
            }
        } else {
            m33732case();
            m33733try();
            byte[] bArr = this.f30039case;
            System.arraycopy(bArr, 0, this.f30048try, 0, bArr.length);
            if (cipherParameters != null) {
                blockCipher = this.f30042else;
                blockCipher.init(true, cipherParameters);
            }
        }
        this.f30047this = true;
    }

    /* renamed from: new, reason: not valid java name */
    public void m33735new(byte[] bArr) {
        byte[] bArrM33725do = Cconst.m33725do(this.f30048try, this.f30043for - this.f30045if);
        System.arraycopy(bArrM33725do, 0, this.f30048try, 0, bArrM33725do.length);
        System.arraycopy(bArr, 0, this.f30048try, bArrM33725do.length, this.f30043for - bArrM33725do.length);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        processBytes(bArr, i, getBlockSize(), bArr2, i2);
        return getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        this.f30041class = 0;
        q3.m6365const(this.f30040catch);
        q3.m6365const(this.f30038break);
        if (this.f30047this) {
            byte[] bArr = this.f30039case;
            System.arraycopy(bArr, 0, this.f30048try, 0, bArr.length);
            this.f30042else.reset();
        }
    }
}
