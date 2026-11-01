package org.bouncycastle.crypto.engines;

import android.support.v4.bc1;
import android.support.v4.cc1;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import java.security.SecureRandom;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.modes.Cdo;

/* renamed from: org.bouncycastle.crypto.engines.import, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cimport implements Wrapper {

    /* renamed from: do, reason: not valid java name */
    private Cdo f29722do;

    /* renamed from: for, reason: not valid java name */
    private boolean f29723for;

    /* renamed from: if, reason: not valid java name */
    private bc1 f29724if;

    /* renamed from: new, reason: not valid java name */
    private SecureRandom f29725new;

    public Cimport(BlockCipher blockCipher) {
        this.f29722do = new Cdo(blockCipher);
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return this.f29722do.m33731for().getAlgorithmName() + "/RFC3211Wrap";
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f29723for = z;
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            this.f29725new = cc1Var.m847if();
            if (!(cc1Var.m846do() instanceof bc1)) {
                throw new IllegalArgumentException("RFC3211Wrap requires an IV");
            }
            this.f29724if = (bc1) cc1Var.m846do();
            return;
        }
        if (z) {
            this.f29725new = Cfor.m33599case();
        }
        if (!(cipherParameters instanceof bc1)) {
            throw new IllegalArgumentException("RFC3211Wrap requires an IV");
        }
        this.f29724if = (bc1) cipherParameters;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int i, int i2) throws IllegalStateException, tw, tn0, IllegalArgumentException {
        if (this.f29723for) {
            throw new IllegalStateException("not set for unwrapping");
        }
        int blockSize = this.f29722do.getBlockSize();
        if (i2 < blockSize * 2) {
            throw new tn0("input too short");
        }
        byte[] bArr2 = new byte[i2];
        byte[] bArr3 = new byte[blockSize];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        System.arraycopy(bArr, i, bArr3, 0, blockSize);
        this.f29722do.init(false, new bc1(this.f29724if.m515if(), bArr3));
        for (int i3 = blockSize; i3 < i2; i3 += blockSize) {
            this.f29722do.processBlock(bArr2, i3, bArr2, i3);
        }
        System.arraycopy(bArr2, i2 - blockSize, bArr3, 0, blockSize);
        this.f29722do.init(false, new bc1(this.f29724if.m515if(), bArr3));
        this.f29722do.processBlock(bArr2, 0, bArr2, 0);
        this.f29722do.init(false, this.f29724if);
        for (int i4 = 0; i4 < i2; i4 += blockSize) {
            this.f29722do.processBlock(bArr2, i4, bArr2, i4);
        }
        int i5 = i2 - 4;
        boolean z = (bArr2[0] & 255) > i5;
        if (!z) {
            i5 = bArr2[0] & 255;
        }
        byte[] bArr4 = new byte[i5];
        System.arraycopy(bArr2, 4, bArr4, 0, bArr4.length);
        int i6 = 0;
        int i7 = 0;
        while (i6 != 3) {
            int i8 = i6 + 1;
            i7 |= bArr2[i6 + 4] ^ ((byte) (bArr2[i8] ^ (-1)));
            i6 = i8;
        }
        q3.m6365const(bArr2);
        if (!z && !(i7 != 0)) {
            return bArr4;
        }
        throw new tn0("wrapped key corrupted");
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i, int i2) throws IllegalStateException, tw, IllegalArgumentException {
        if (!this.f29723for) {
            throw new IllegalStateException("not set for wrapping");
        }
        if (i2 > 255 || i2 < 0) {
            throw new IllegalArgumentException("input must be from 0 to 255 bytes");
        }
        this.f29722do.init(true, this.f29724if);
        int blockSize = this.f29722do.getBlockSize();
        int i3 = i2 + 4;
        int i4 = blockSize * 2;
        if (i3 >= i4) {
            i4 = i3 % blockSize == 0 ? i3 : ((i3 / blockSize) + 1) * blockSize;
        }
        byte[] bArr2 = new byte[i4];
        bArr2[0] = (byte) i2;
        System.arraycopy(bArr, i, bArr2, 4, i2);
        int length = bArr2.length - i3;
        byte[] bArr3 = new byte[length];
        this.f29725new.nextBytes(bArr3);
        System.arraycopy(bArr3, 0, bArr2, i3, length);
        bArr2[1] = (byte) (bArr2[4] ^ (-1));
        bArr2[2] = (byte) (bArr2[5] ^ (-1));
        bArr2[3] = (byte) (bArr2[6] ^ (-1));
        for (int i5 = 0; i5 < bArr2.length; i5 += blockSize) {
            this.f29722do.processBlock(bArr2, i5, bArr2, i5);
        }
        for (int i6 = 0; i6 < bArr2.length; i6 += blockSize) {
            this.f29722do.processBlock(bArr2, i6, bArr2, i6);
        }
        return bArr2;
    }
}
