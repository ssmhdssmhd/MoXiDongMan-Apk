package org.bouncycastle.crypto.macs;

import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.paddings.BlockCipherPadding;

/* renamed from: org.bouncycastle.crypto.macs.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements Mac {

    /* renamed from: case, reason: not valid java name */
    private int f29913case;

    /* renamed from: do, reason: not valid java name */
    private byte[] f29914do;

    /* renamed from: for, reason: not valid java name */
    private int f29915for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f29916if;

    /* renamed from: new, reason: not valid java name */
    private Celse f29917new;

    /* renamed from: try, reason: not valid java name */
    private BlockCipherPadding f29918try;

    public Cdo(BlockCipher blockCipher) {
        this(blockCipher, 8, (blockCipher.getBlockSize() * 8) / 2, null);
    }

    public Cdo(BlockCipher blockCipher, int i, int i2) {
        this(blockCipher, i, i2, null);
    }

    public Cdo(BlockCipher blockCipher, int i, int i2, BlockCipherPadding blockCipherPadding) {
        this.f29918try = null;
        if (i2 % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        }
        this.f29914do = new byte[blockCipher.getBlockSize()];
        Celse celse = new Celse(blockCipher, i);
        this.f29917new = celse;
        this.f29918try = blockCipherPadding;
        this.f29913case = i2 / 8;
        this.f29916if = new byte[celse.m33687if()];
        this.f29915for = 0;
    }

    public Cdo(BlockCipher blockCipher, BlockCipherPadding blockCipherPadding) {
        this(blockCipher, 8, (blockCipher.getBlockSize() * 8) / 2, blockCipherPadding);
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw {
        int iM33687if = this.f29917new.m33687if();
        BlockCipherPadding blockCipherPadding = this.f29918try;
        if (blockCipherPadding == null) {
            while (true) {
                int i2 = this.f29915for;
                if (i2 >= iM33687if) {
                    break;
                }
                this.f29916if[i2] = 0;
                this.f29915for = i2 + 1;
            }
        } else {
            blockCipherPadding.addPadding(this.f29916if, this.f29915for);
        }
        this.f29917new.m33689try(this.f29916if, 0, this.f29914do, 0);
        this.f29917new.m33686for(this.f29914do);
        System.arraycopy(this.f29914do, 0, bArr, i, this.f29913case);
        reset();
        return this.f29913case;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.f29917new.m33685do();
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.f29913case;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        reset();
        this.f29917new.m33688new(cipherParameters);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f29916if;
            if (i >= bArr.length) {
                this.f29915for = 0;
                this.f29917new.m33684case();
                return;
            } else {
                bArr[i] = 0;
                i++;
            }
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException, tw {
        int i = this.f29915for;
        byte[] bArr = this.f29916if;
        if (i == bArr.length) {
            this.f29917new.m33689try(bArr, 0, this.f29914do, 0);
            this.f29915for = 0;
        }
        byte[] bArr2 = this.f29916if;
        int i2 = this.f29915for;
        this.f29915for = i2 + 1;
        bArr2[i2] = b;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int iM33687if = this.f29917new.m33687if();
        int i3 = this.f29915for;
        int i4 = iM33687if - i3;
        if (i2 > i4) {
            System.arraycopy(bArr, i, this.f29916if, i3, i4);
            this.f29917new.m33689try(this.f29916if, 0, this.f29914do, 0);
            this.f29915for = 0;
            i2 -= i4;
            i += i4;
            while (i2 > iM33687if) {
                this.f29917new.m33689try(bArr, i, this.f29914do, 0);
                i2 -= iM33687if;
                i += iM33687if;
            }
        }
        System.arraycopy(bArr, i, this.f29916if, this.f29915for, i2);
        this.f29915for += i2;
    }
}
