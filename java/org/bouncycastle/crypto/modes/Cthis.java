package org.bouncycastle.crypto.modes;

import android.support.v4.bc1;
import android.support.v4.q3;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Ctry;

/* renamed from: org.bouncycastle.crypto.modes.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis extends Ctry {

    /* renamed from: case, reason: not valid java name */
    private byte[] f30148case;

    /* renamed from: else, reason: not valid java name */
    private BlockCipher f30149else;

    /* renamed from: for, reason: not valid java name */
    private int f30150for;

    /* renamed from: goto, reason: not valid java name */
    private int f30151goto;

    /* renamed from: if, reason: not valid java name */
    private int f30152if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f30153new;

    /* renamed from: this, reason: not valid java name */
    private boolean f30154this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f30155try;

    public Cthis(BlockCipher blockCipher) {
        super(blockCipher);
        this.f30154this = false;
        int blockSize = blockCipher.getBlockSize();
        this.f30150for = blockSize;
        this.f30149else = blockCipher;
        this.f30148case = new byte[blockSize];
    }

    /* renamed from: case, reason: not valid java name */
    private void m33782case() {
        this.f30152if = this.f30150for * 2;
    }

    /* renamed from: for, reason: not valid java name */
    private void m33783for() {
        byte[] bArrM33725do = Cconst.m33725do(this.f30153new, this.f30152if - this.f30150for);
        System.arraycopy(bArrM33725do, 0, this.f30153new, 0, bArrM33725do.length);
        System.arraycopy(this.f30148case, 0, this.f30153new, bArrM33725do.length, this.f30152if - bArrM33725do.length);
    }

    /* renamed from: new, reason: not valid java name */
    private void m33784new() throws IllegalStateException, tw {
        this.f30149else.processBlock(Cconst.m33727if(this.f30153new, this.f30150for), 0, this.f30148case, 0);
    }

    /* renamed from: try, reason: not valid java name */
    private void m33785try() {
        int i = this.f30152if;
        this.f30153new = new byte[i];
        this.f30155try = new byte[i];
    }

    @Override // org.bouncycastle.crypto.Ctry
    /* renamed from: do */
    public byte mo33707do(byte b) throws IllegalStateException, tw {
        if (this.f30151goto == 0) {
            m33784new();
        }
        byte[] bArr = this.f30148case;
        int i = this.f30151goto;
        byte b2 = (byte) (b ^ bArr[i]);
        int i2 = i + 1;
        this.f30151goto = i2;
        if (i2 == getBlockSize()) {
            this.f30151goto = 0;
            m33783for();
        }
        return b2;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.f30149else.getAlgorithmName() + "/OFB";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f30150for;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            byte[] bArrM514do = bc1Var.m514do();
            if (bArrM514do.length < this.f30150for) {
                throw new IllegalArgumentException("Parameter m must blockSize <= m");
            }
            this.f30152if = bArrM514do.length;
            m33785try();
            byte[] bArrM6371final = q3.m6371final(bArrM514do);
            this.f30155try = bArrM6371final;
            System.arraycopy(bArrM6371final, 0, this.f30153new, 0, bArrM6371final.length);
            if (bc1Var.m515if() != null) {
                blockCipher = this.f30149else;
                cipherParameters = bc1Var.m515if();
                blockCipher.init(true, cipherParameters);
            }
        } else {
            m33782case();
            m33785try();
            byte[] bArr = this.f30155try;
            System.arraycopy(bArr, 0, this.f30153new, 0, bArr.length);
            if (cipherParameters != null) {
                blockCipher = this.f30149else;
                blockCipher.init(true, cipherParameters);
            }
        }
        this.f30154this = true;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        processBytes(bArr, i, this.f30150for, bArr2, i2);
        return this.f30150for;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        if (this.f30154this) {
            byte[] bArr = this.f30155try;
            System.arraycopy(bArr, 0, this.f30153new, 0, bArr.length);
            q3.m6365const(this.f30148case);
            this.f30151goto = 0;
            this.f30149else.reset();
        }
    }
}
