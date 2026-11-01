package org.bouncycastle.crypto.modes;

import android.support.v4.bc1;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Ctry;

/* renamed from: org.bouncycastle.crypto.modes.native, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnative extends Ctry {

    /* renamed from: case, reason: not valid java name */
    private final int f30118case;

    /* renamed from: else, reason: not valid java name */
    private final BlockCipher f30119else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f30120for;

    /* renamed from: if, reason: not valid java name */
    private int f30121if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f30122new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f30123try;

    public Cnative(BlockCipher blockCipher, int i) {
        super(blockCipher);
        this.f30119else = blockCipher;
        this.f30118case = i / 8;
        this.f30120for = new byte[blockCipher.getBlockSize()];
        this.f30122new = new byte[blockCipher.getBlockSize()];
        this.f30123try = new byte[blockCipher.getBlockSize()];
    }

    @Override // org.bouncycastle.crypto.Ctry
    /* renamed from: do */
    public byte mo33707do(byte b) throws IllegalStateException, tw {
        if (this.f30121if == 0) {
            this.f30119else.processBlock(this.f30122new, 0, this.f30123try, 0);
        }
        byte[] bArr = this.f30123try;
        int i = this.f30121if;
        int i2 = i + 1;
        this.f30121if = i2;
        byte b2 = (byte) (b ^ bArr[i]);
        int i3 = this.f30118case;
        if (i2 == i3) {
            this.f30121if = 0;
            byte[] bArr2 = this.f30122new;
            System.arraycopy(bArr2, i3, bArr2, 0, bArr2.length - i3);
            byte[] bArr3 = this.f30123try;
            byte[] bArr4 = this.f30122new;
            int length = bArr4.length;
            int i4 = this.f30118case;
            System.arraycopy(bArr3, 0, bArr4, length - i4, i4);
        }
        return b2;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.f30119else.getAlgorithmName() + "/OFB" + (this.f30118case * 8);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f30118case;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            byte[] bArrM514do = bc1Var.m514do();
            int length = bArrM514do.length;
            byte[] bArr = this.f30120for;
            if (length < bArr.length) {
                System.arraycopy(bArrM514do, 0, bArr, bArr.length - bArrM514do.length, bArrM514do.length);
                int i = 0;
                while (true) {
                    byte[] bArr2 = this.f30120for;
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
            blockCipher = this.f30119else;
            cipherParameters = bc1Var.m515if();
        } else {
            reset();
            if (cipherParameters == null) {
                return;
            } else {
                blockCipher = this.f30119else;
            }
        }
        blockCipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        processBytes(bArr, i, this.f30118case, bArr2, i2);
        return this.f30118case;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        byte[] bArr = this.f30120for;
        System.arraycopy(bArr, 0, this.f30122new, 0, bArr.length);
        this.f30121if = 0;
        this.f30119else.reset();
    }
}
