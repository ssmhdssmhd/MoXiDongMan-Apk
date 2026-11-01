package org.bouncycastle.crypto.macs;

import android.support.v4.bc1;
import android.support.v4.f91;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.macs.else, reason: invalid class name */
/* loaded from: classes3.dex */
class Celse {

    /* renamed from: do, reason: not valid java name */
    private byte[] f29919do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f29920for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f29921if;

    /* renamed from: new, reason: not valid java name */
    private int f29922new;

    /* renamed from: try, reason: not valid java name */
    private BlockCipher f29923try;

    public Celse(BlockCipher blockCipher, int i) {
        this.f29923try = null;
        this.f29923try = blockCipher;
        this.f29922new = i / 8;
        this.f29919do = new byte[blockCipher.getBlockSize()];
        this.f29921if = new byte[blockCipher.getBlockSize()];
        this.f29920for = new byte[blockCipher.getBlockSize()];
    }

    /* renamed from: case, reason: not valid java name */
    public void m33684case() {
        byte[] bArr = this.f29919do;
        System.arraycopy(bArr, 0, this.f29921if, 0, bArr.length);
        this.f29923try.reset();
    }

    /* renamed from: do, reason: not valid java name */
    public String m33685do() {
        return this.f29923try.getAlgorithmName() + "/CFB" + (this.f29922new * 8);
    }

    /* renamed from: for, reason: not valid java name */
    public void m33686for(byte[] bArr) throws IllegalStateException, tw {
        this.f29923try.processBlock(this.f29921if, 0, bArr, 0);
    }

    /* renamed from: if, reason: not valid java name */
    public int m33687if() {
        return this.f29922new;
    }

    /* renamed from: new, reason: not valid java name */
    public void m33688new(CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            byte[] bArrM514do = bc1Var.m514do();
            int length = bArrM514do.length;
            byte[] bArr = this.f29919do;
            if (length < bArr.length) {
                System.arraycopy(bArrM514do, 0, bArr, bArr.length - bArrM514do.length, bArrM514do.length);
            } else {
                System.arraycopy(bArrM514do, 0, bArr, 0, bArr.length);
            }
            m33684case();
            blockCipher = this.f29923try;
            cipherParameters = bc1Var.m515if();
        } else {
            m33684case();
            blockCipher = this.f29923try;
        }
        blockCipher.init(true, cipherParameters);
    }

    /* renamed from: try, reason: not valid java name */
    public int m33689try(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        int i3 = this.f29922new;
        if (i + i3 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i3 + i2 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        this.f29923try.processBlock(this.f29921if, 0, this.f29920for, 0);
        int i4 = 0;
        while (true) {
            int i5 = this.f29922new;
            if (i4 >= i5) {
                byte[] bArr3 = this.f29921if;
                System.arraycopy(bArr3, i5, bArr3, 0, bArr3.length - i5);
                byte[] bArr4 = this.f29921if;
                int length = bArr4.length;
                int i6 = this.f29922new;
                System.arraycopy(bArr2, i2, bArr4, length - i6, i6);
                return this.f29922new;
            }
            bArr2[i2 + i4] = (byte) (this.f29920for[i4] ^ bArr[i + i4]);
            i4++;
        }
    }
}
