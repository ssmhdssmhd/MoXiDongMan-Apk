package org.bouncycastle.crypto.encodings;

import android.support.v4.cc1;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import android.support.v4.u00;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.crypto.encodings.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements AsymmetricBlockCipher {

    /* renamed from: do, reason: not valid java name */
    private byte[] f29484do;

    /* renamed from: for, reason: not valid java name */
    private AsymmetricBlockCipher f29485for;

    /* renamed from: if, reason: not valid java name */
    private Digest f29486if;

    /* renamed from: new, reason: not valid java name */
    private SecureRandom f29487new;

    /* renamed from: try, reason: not valid java name */
    private boolean f29488try;

    public Cif(AsymmetricBlockCipher asymmetricBlockCipher) {
        this(asymmetricBlockCipher, u00.m8176if(), null);
    }

    public Cif(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest) {
        this(asymmetricBlockCipher, digest, null);
    }

    public Cif(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, byte[] bArr) {
        this.f29485for = asymmetricBlockCipher;
        this.f29486if = digest2;
        this.f29484do = new byte[digest.getDigestSize()];
        digest.reset();
        if (bArr != null) {
            digest.update(bArr, 0, bArr.length);
        }
        digest.doFinal(this.f29484do, 0);
    }

    public Cif(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, byte[] bArr) {
        this(asymmetricBlockCipher, digest, digest, bArr);
    }

    /* renamed from: do, reason: not valid java name */
    private void m33385do(int i, byte[] bArr) {
        bArr[0] = (byte) (i >>> 24);
        bArr[1] = (byte) (i >>> 16);
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) (i >>> 0);
    }

    /* renamed from: try, reason: not valid java name */
    private byte[] m33386try(byte[] bArr, int i, int i2, int i3) {
        byte[] bArr2 = new byte[i3];
        int digestSize = this.f29486if.getDigestSize();
        byte[] bArr3 = new byte[digestSize];
        byte[] bArr4 = new byte[4];
        this.f29486if.reset();
        int i4 = 0;
        while (i4 < i3 / digestSize) {
            m33385do(i4, bArr4);
            this.f29486if.update(bArr, i, i2);
            this.f29486if.update(bArr4, 0, 4);
            this.f29486if.doFinal(bArr3, 0);
            System.arraycopy(bArr3, 0, bArr2, i4 * digestSize, digestSize);
            i4++;
        }
        int i5 = digestSize * i4;
        if (i5 < i3) {
            m33385do(i4, bArr4);
            this.f29486if.update(bArr, i, i2);
            this.f29486if.update(bArr4, 0, 4);
            this.f29486if.doFinal(bArr3, 0);
            System.arraycopy(bArr3, 0, bArr2, i5, i3 - i5);
        }
        return bArr2;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m33387for(byte[] bArr, int i, int i2) throws tn0 {
        if (i2 > getInputBlockSize()) {
            throw new tw("input data too long");
        }
        int inputBlockSize = getInputBlockSize() + 1 + (this.f29484do.length * 2);
        byte[] bArr2 = new byte[inputBlockSize];
        int i3 = inputBlockSize - i2;
        System.arraycopy(bArr, i, bArr2, i3, i2);
        bArr2[i3 - 1] = 1;
        byte[] bArr3 = this.f29484do;
        System.arraycopy(bArr3, 0, bArr2, bArr3.length, bArr3.length);
        int length = this.f29484do.length;
        byte[] bArr4 = new byte[length];
        this.f29487new.nextBytes(bArr4);
        byte[] bArrM33386try = m33386try(bArr4, 0, length, inputBlockSize - this.f29484do.length);
        for (int length2 = this.f29484do.length; length2 != inputBlockSize; length2++) {
            bArr2[length2] = (byte) (bArr2[length2] ^ bArrM33386try[length2 - this.f29484do.length]);
        }
        System.arraycopy(bArr4, 0, bArr2, 0, this.f29484do.length);
        byte[] bArr5 = this.f29484do;
        byte[] bArrM33386try2 = m33386try(bArr2, bArr5.length, inputBlockSize - bArr5.length, bArr5.length);
        for (int i4 = 0; i4 != this.f29484do.length; i4++) {
            bArr2[i4] = (byte) (bArr2[i4] ^ bArrM33386try2[i4]);
        }
        return this.f29485for.processBlock(bArr2, 0, inputBlockSize);
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        int inputBlockSize = this.f29485for.getInputBlockSize();
        return this.f29488try ? (inputBlockSize - 1) - (this.f29484do.length * 2) : inputBlockSize;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        int outputBlockSize = this.f29485for.getOutputBlockSize();
        return this.f29488try ? outputBlockSize : (outputBlockSize - 1) - (this.f29484do.length * 2);
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m33388if(byte[] bArr, int i, int i2) throws tn0 {
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArrProcessBlock = this.f29485for.processBlock(bArr, i, i2);
        int outputBlockSize = this.f29485for.getOutputBlockSize();
        byte[] bArr4 = new byte[outputBlockSize];
        boolean z = outputBlockSize < (this.f29484do.length * 2) + 1;
        if (bArrProcessBlock.length <= outputBlockSize) {
            System.arraycopy(bArrProcessBlock, 0, bArr4, outputBlockSize - bArrProcessBlock.length, bArrProcessBlock.length);
        } else {
            System.arraycopy(bArrProcessBlock, 0, bArr4, 0, outputBlockSize);
            z = true;
        }
        byte[] bArr5 = this.f29484do;
        byte[] bArrM33386try = m33386try(bArr4, bArr5.length, outputBlockSize - bArr5.length, bArr5.length);
        int i3 = 0;
        while (true) {
            bArr2 = this.f29484do;
            if (i3 == bArr2.length) {
                break;
            }
            bArr4[i3] = (byte) (bArr4[i3] ^ bArrM33386try[i3]);
            i3++;
        }
        byte[] bArrM33386try2 = m33386try(bArr4, 0, bArr2.length, outputBlockSize - bArr2.length);
        for (int length = this.f29484do.length; length != outputBlockSize; length++) {
            bArr4[length] = (byte) (bArr4[length] ^ bArrM33386try2[length - this.f29484do.length]);
        }
        int i4 = 0;
        boolean z2 = false;
        while (true) {
            bArr3 = this.f29484do;
            if (i4 == bArr3.length) {
                break;
            }
            if (bArr3[i4] != bArr4[bArr3.length + i4]) {
                z2 = true;
            }
            i4++;
        }
        int i5 = outputBlockSize;
        for (int length2 = bArr3.length * 2; length2 != outputBlockSize; length2++) {
            if ((bArr4[length2] != 0) & (i5 == outputBlockSize)) {
                i5 = length2;
            }
        }
        boolean z3 = i5 > outputBlockSize + (-1);
        boolean z4 = bArr4[i5] != 1;
        int i6 = i5 + 1;
        if ((z3 | z4) || (z | z2)) {
            q3.c(bArr4, (byte) 0);
            throw new tn0("data wrong");
        }
        int i7 = outputBlockSize - i6;
        byte[] bArr6 = new byte[i7];
        System.arraycopy(bArr4, i6, bArr6, 0, i7);
        return bArr6;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f29487new = cipherParameters instanceof cc1 ? ((cc1) cipherParameters).m847if() : Cfor.m33599case();
        this.f29485for.init(z, cipherParameters);
        this.f29488try = z;
    }

    /* renamed from: new, reason: not valid java name */
    public AsymmetricBlockCipher m33389new() {
        return this.f29485for;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i, int i2) throws tn0 {
        return this.f29488try ? m33387for(bArr, i, i2) : m33388if(bArr, i, i2);
    }
}
