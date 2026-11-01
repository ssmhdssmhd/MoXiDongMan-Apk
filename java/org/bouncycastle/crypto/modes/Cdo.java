package org.bouncycastle.crypto.modes;

import android.support.v4.bc1;
import android.support.v4.q3;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.modes.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements BlockCipher {

    /* renamed from: case, reason: not valid java name */
    private boolean f30032case;

    /* renamed from: do, reason: not valid java name */
    private byte[] f30033do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f30034for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f30035if;

    /* renamed from: new, reason: not valid java name */
    private int f30036new;

    /* renamed from: try, reason: not valid java name */
    private BlockCipher f30037try;

    public Cdo(BlockCipher blockCipher) {
        this.f30037try = null;
        this.f30037try = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.f30036new = blockSize;
        this.f30033do = new byte[blockSize];
        this.f30035if = new byte[blockSize];
        this.f30034for = new byte[blockSize];
    }

    /* renamed from: do, reason: not valid java name */
    private int m33729do(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        int i3 = this.f30036new;
        if (i + i3 > bArr.length) {
            throw new tw("input buffer too short");
        }
        System.arraycopy(bArr, i, this.f30034for, 0, i3);
        int iProcessBlock = this.f30037try.processBlock(bArr, i, bArr2, i2);
        for (int i4 = 0; i4 < this.f30036new; i4++) {
            int i5 = i2 + i4;
            bArr2[i5] = (byte) (bArr2[i5] ^ this.f30035if[i4]);
        }
        byte[] bArr3 = this.f30035if;
        this.f30035if = this.f30034for;
        this.f30034for = bArr3;
        return iProcessBlock;
    }

    /* renamed from: if, reason: not valid java name */
    private int m33730if(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        if (this.f30036new + i > bArr.length) {
            throw new tw("input buffer too short");
        }
        for (int i3 = 0; i3 < this.f30036new; i3++) {
            byte[] bArr3 = this.f30035if;
            bArr3[i3] = (byte) (bArr3[i3] ^ bArr[i + i3]);
        }
        int iProcessBlock = this.f30037try.processBlock(this.f30035if, 0, bArr2, i2);
        byte[] bArr4 = this.f30035if;
        System.arraycopy(bArr2, i2, bArr4, 0, bArr4.length);
        return iProcessBlock;
    }

    /* renamed from: for, reason: not valid java name */
    public BlockCipher m33731for() {
        return this.f30037try;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.f30037try.getAlgorithmName() + "/CBC";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f30037try.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        boolean z2 = this.f30032case;
        this.f30032case = z;
        if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            byte[] bArrM514do = bc1Var.m514do();
            if (bArrM514do.length != this.f30036new) {
                throw new IllegalArgumentException("initialisation vector must be the same length as block size");
            }
            System.arraycopy(bArrM514do, 0, this.f30033do, 0, bArrM514do.length);
            reset();
            if (bc1Var.m515if() == null) {
                if (z2 != z) {
                    throw new IllegalArgumentException("cannot change encrypting state without providing key.");
                }
                return;
            } else {
                blockCipher = this.f30037try;
                cipherParameters = bc1Var.m515if();
            }
        } else {
            reset();
            if (cipherParameters == null) {
                if (z2 != z) {
                    throw new IllegalArgumentException("cannot change encrypting state without providing key.");
                }
                return;
            }
            blockCipher = this.f30037try;
        }
        blockCipher.init(z, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        return this.f30032case ? m33730if(bArr, i, bArr2, i2) : m33729do(bArr, i, bArr2, i2);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        byte[] bArr = this.f30033do;
        System.arraycopy(bArr, 0, this.f30035if, 0, bArr.length);
        q3.c(this.f30034for, (byte) 0);
        this.f30037try.reset();
    }
}
