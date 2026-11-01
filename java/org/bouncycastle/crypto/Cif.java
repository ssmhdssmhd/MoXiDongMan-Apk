package org.bouncycastle.crypto;

import android.support.v4.f91;
import android.support.v4.tn0;
import android.support.v4.tw;

/* renamed from: org.bouncycastle.crypto.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    /* renamed from: case, reason: not valid java name */
    public boolean f29890case;

    /* renamed from: do, reason: not valid java name */
    public byte[] f29891do;

    /* renamed from: for, reason: not valid java name */
    public boolean f29892for;

    /* renamed from: if, reason: not valid java name */
    public int f29893if;

    /* renamed from: new, reason: not valid java name */
    public BlockCipher f29894new;

    /* renamed from: try, reason: not valid java name */
    public boolean f29895try;

    public Cif() {
    }

    public Cif(BlockCipher blockCipher) {
        this.f29894new = blockCipher;
        this.f29891do = new byte[blockCipher.getBlockSize()];
        boolean z = false;
        this.f29893if = 0;
        String algorithmName = blockCipher.getAlgorithmName();
        int iIndexOf = algorithmName.indexOf(47) + 1;
        boolean z2 = iIndexOf > 0 && algorithmName.startsWith("PGP", iIndexOf);
        this.f29890case = z2;
        if (z2 || (blockCipher instanceof StreamCipher)) {
            this.f29895try = true;
            return;
        }
        if (iIndexOf > 0 && algorithmName.startsWith("OpenPGP", iIndexOf)) {
            z = true;
        }
        this.f29895try = z;
    }

    /* renamed from: case */
    public void mo7550case(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.f29892for = z;
        mo7555this();
        this.f29894new.init(z, cipherParameters);
    }

    /* renamed from: do */
    public int mo7551do(byte[] bArr, int i) throws IllegalStateException, tw, tn0 {
        try {
            int i2 = this.f29893if;
            if (i + i2 > bArr.length) {
                throw new f91("output buffer too short for doFinal()");
            }
            int i3 = 0;
            if (i2 != 0) {
                if (!this.f29895try) {
                    throw new tw("data not block size aligned");
                }
                BlockCipher blockCipher = this.f29894new;
                byte[] bArr2 = this.f29891do;
                blockCipher.processBlock(bArr2, 0, bArr2, 0);
                int i4 = this.f29893if;
                this.f29893if = 0;
                System.arraycopy(this.f29891do, 0, bArr, i, i4);
                i3 = i4;
            }
            return i3;
        } finally {
            mo7555this();
        }
    }

    /* renamed from: else */
    public int mo7552else(byte b, byte[] bArr, int i) throws IllegalStateException, tw {
        byte[] bArr2 = this.f29891do;
        int i2 = this.f29893if;
        int i3 = i2 + 1;
        this.f29893if = i3;
        bArr2[i2] = b;
        if (i3 != bArr2.length) {
            return 0;
        }
        int iProcessBlock = this.f29894new.processBlock(bArr2, 0, bArr, i);
        this.f29893if = 0;
        return iProcessBlock;
    }

    /* renamed from: for */
    public int mo7553for(int i) {
        return i + this.f29893if;
    }

    /* renamed from: goto */
    public int mo7554goto(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalStateException, tw {
        int iProcessBlock;
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int iM33681if = m33681if();
        int iMo7556try = mo7556try(i2);
        if (iMo7556try > 0 && iMo7556try + i3 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        byte[] bArr3 = this.f29891do;
        int length = bArr3.length;
        int i4 = this.f29893if;
        int i5 = length - i4;
        if (i2 > i5) {
            System.arraycopy(bArr, i, bArr3, i4, i5);
            iProcessBlock = this.f29894new.processBlock(this.f29891do, 0, bArr2, i3) + 0;
            this.f29893if = 0;
            i2 -= i5;
            i += i5;
            while (i2 > this.f29891do.length) {
                iProcessBlock += this.f29894new.processBlock(bArr, i, bArr2, i3 + iProcessBlock);
                i2 -= iM33681if;
                i += iM33681if;
            }
        } else {
            iProcessBlock = 0;
        }
        System.arraycopy(bArr, i, this.f29891do, this.f29893if, i2);
        int i6 = this.f29893if + i2;
        this.f29893if = i6;
        byte[] bArr4 = this.f29891do;
        if (i6 != bArr4.length) {
            return iProcessBlock;
        }
        int iProcessBlock2 = iProcessBlock + this.f29894new.processBlock(bArr4, 0, bArr2, i3 + iProcessBlock);
        this.f29893if = 0;
        return iProcessBlock2;
    }

    /* renamed from: if, reason: not valid java name */
    public int m33681if() {
        return this.f29894new.getBlockSize();
    }

    /* renamed from: new, reason: not valid java name */
    public BlockCipher m33682new() {
        return this.f29894new;
    }

    /* renamed from: this */
    public void mo7555this() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f29891do;
            if (i >= bArr.length) {
                this.f29893if = 0;
                this.f29894new.reset();
                return;
            } else {
                bArr[i] = 0;
                i++;
            }
        }
    }

    /* renamed from: try */
    public int mo7556try(int i) {
        int length;
        int i2 = i + this.f29893if;
        if (this.f29890case && this.f29892for) {
            length = (i2 % this.f29891do.length) - (this.f29894new.getBlockSize() + 2);
            return i2 - length;
        }
        int length2 = this.f29891do.length;
        length = i2 % length2;
        return i2 - length;
    }
}
