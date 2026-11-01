package org.bouncycastle.crypto.engines;

import android.support.v4.cc1;
import android.support.v4.gr0;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import java.util.ArrayList;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Wrapper;

/* renamed from: org.bouncycastle.crypto.engines.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse implements Wrapper {

    /* renamed from: goto, reason: not valid java name */
    private static final int f29664goto = 4;

    /* renamed from: case, reason: not valid java name */
    private byte[] f29665case;

    /* renamed from: do, reason: not valid java name */
    private boolean f29666do;

    /* renamed from: else, reason: not valid java name */
    private ArrayList<byte[]> f29667else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f29668for;

    /* renamed from: if, reason: not valid java name */
    private Ccase f29669if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f29670new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f29671try;

    public Celse(int i) {
        Ccase ccase = new Ccase(i);
        this.f29669if = ccase;
        this.f29668for = new byte[ccase.getBlockSize() / 2];
        this.f29671try = new byte[this.f29669if.getBlockSize()];
        this.f29665case = new byte[this.f29669if.getBlockSize()];
        this.f29667else = new ArrayList<>();
        this.f29670new = new byte[4];
    }

    /* renamed from: do, reason: not valid java name */
    private void m33482do(int i, byte[] bArr, int i2) {
        bArr[i2 + 3] = (byte) (i >> 24);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2] = (byte) i;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return "DSTU7624WrapEngine";
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters instanceof cc1) {
            cipherParameters = ((cc1) cipherParameters).m846do();
        }
        this.f29666do = z;
        if (!(cipherParameters instanceof gr0)) {
            throw new IllegalArgumentException("invalid parameters passed to DSTU7624WrapEngine");
        }
        this.f29669if.init(z, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int i, int i2) throws IllegalStateException, tw, tn0 {
        if (this.f29666do) {
            throw new IllegalStateException("not set for unwrapping");
        }
        if (i2 % this.f29669if.getBlockSize() != 0) {
            throw new tw("unwrap data must be a multiple of " + this.f29669if.getBlockSize() + " bytes");
        }
        int blockSize = (i2 * 2) / this.f29669if.getBlockSize();
        int i3 = blockSize - 1;
        int i4 = i3 * 6;
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        byte[] bArr3 = new byte[this.f29669if.getBlockSize() / 2];
        System.arraycopy(bArr2, 0, bArr3, 0, this.f29669if.getBlockSize() / 2);
        this.f29667else.clear();
        int blockSize2 = i2 - (this.f29669if.getBlockSize() / 2);
        int blockSize3 = this.f29669if.getBlockSize() / 2;
        while (blockSize2 != 0) {
            byte[] bArr4 = new byte[this.f29669if.getBlockSize() / 2];
            System.arraycopy(bArr2, blockSize3, bArr4, 0, this.f29669if.getBlockSize() / 2);
            this.f29667else.add(bArr4);
            blockSize2 -= this.f29669if.getBlockSize() / 2;
            blockSize3 += this.f29669if.getBlockSize() / 2;
        }
        for (int i5 = 0; i5 < i4; i5++) {
            System.arraycopy(this.f29667else.get(blockSize - 2), 0, bArr2, 0, this.f29669if.getBlockSize() / 2);
            System.arraycopy(bArr3, 0, bArr2, this.f29669if.getBlockSize() / 2, this.f29669if.getBlockSize() / 2);
            m33482do(i4 - i5, this.f29670new, 0);
            for (int i6 = 0; i6 < 4; i6++) {
                int blockSize4 = (this.f29669if.getBlockSize() / 2) + i6;
                bArr2[blockSize4] = (byte) (bArr2[blockSize4] ^ this.f29670new[i6]);
            }
            this.f29669if.processBlock(bArr2, 0, bArr2, 0);
            System.arraycopy(bArr2, 0, bArr3, 0, this.f29669if.getBlockSize() / 2);
            for (int i7 = 2; i7 < blockSize; i7++) {
                int i8 = blockSize - i7;
                System.arraycopy(this.f29667else.get(i8 - 1), 0, this.f29667else.get(i8), 0, this.f29669if.getBlockSize() / 2);
            }
            System.arraycopy(bArr2, this.f29669if.getBlockSize() / 2, this.f29667else.get(0), 0, this.f29669if.getBlockSize() / 2);
        }
        System.arraycopy(bArr3, 0, bArr2, 0, this.f29669if.getBlockSize() / 2);
        int blockSize5 = this.f29669if.getBlockSize() / 2;
        for (int i9 = 0; i9 < i3; i9++) {
            System.arraycopy(this.f29667else.get(i9), 0, bArr2, blockSize5, this.f29669if.getBlockSize() / 2);
            blockSize5 += this.f29669if.getBlockSize() / 2;
        }
        System.arraycopy(bArr2, i2 - this.f29669if.getBlockSize(), this.f29671try, 0, this.f29669if.getBlockSize());
        byte[] bArr5 = new byte[i2 - this.f29669if.getBlockSize()];
        if (!q3.m6362case(this.f29671try, this.f29665case)) {
            throw new tn0("checksum failed");
        }
        System.arraycopy(bArr2, 0, bArr5, 0, i2 - this.f29669if.getBlockSize());
        return bArr5;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        if (!this.f29666do) {
            throw new IllegalStateException("not set for wrapping");
        }
        if (i2 % this.f29669if.getBlockSize() != 0) {
            throw new tw("wrap data must be a multiple of " + this.f29669if.getBlockSize() + " bytes");
        }
        if (i + i2 > bArr.length) {
            throw new tw("input buffer too short");
        }
        int blockSize = ((i2 / this.f29669if.getBlockSize()) + 1) * 2;
        int i3 = blockSize - 1;
        int i4 = i3 * 6;
        int blockSize2 = this.f29669if.getBlockSize() + i2;
        byte[] bArr2 = new byte[blockSize2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        System.arraycopy(bArr2, 0, this.f29668for, 0, this.f29669if.getBlockSize() / 2);
        this.f29667else.clear();
        int blockSize3 = blockSize2 - (this.f29669if.getBlockSize() / 2);
        int blockSize4 = this.f29669if.getBlockSize() / 2;
        while (blockSize3 != 0) {
            byte[] bArr3 = new byte[this.f29669if.getBlockSize() / 2];
            System.arraycopy(bArr2, blockSize4, bArr3, 0, this.f29669if.getBlockSize() / 2);
            this.f29667else.add(bArr3);
            blockSize3 -= this.f29669if.getBlockSize() / 2;
            blockSize4 += this.f29669if.getBlockSize() / 2;
        }
        int i5 = 0;
        while (i5 < i4) {
            System.arraycopy(this.f29668for, 0, bArr2, 0, this.f29669if.getBlockSize() / 2);
            System.arraycopy(this.f29667else.get(0), 0, bArr2, this.f29669if.getBlockSize() / 2, this.f29669if.getBlockSize() / 2);
            this.f29669if.processBlock(bArr2, 0, bArr2, 0);
            i5++;
            m33482do(i5, this.f29670new, 0);
            for (int i6 = 0; i6 < 4; i6++) {
                int blockSize5 = (this.f29669if.getBlockSize() / 2) + i6;
                bArr2[blockSize5] = (byte) (bArr2[blockSize5] ^ this.f29670new[i6]);
            }
            System.arraycopy(bArr2, this.f29669if.getBlockSize() / 2, this.f29668for, 0, this.f29669if.getBlockSize() / 2);
            for (int i7 = 2; i7 < blockSize; i7++) {
                System.arraycopy(this.f29667else.get(i7 - 1), 0, this.f29667else.get(i7 - 2), 0, this.f29669if.getBlockSize() / 2);
            }
            System.arraycopy(bArr2, 0, this.f29667else.get(blockSize - 2), 0, this.f29669if.getBlockSize() / 2);
        }
        System.arraycopy(this.f29668for, 0, bArr2, 0, this.f29669if.getBlockSize() / 2);
        int blockSize6 = this.f29669if.getBlockSize() / 2;
        for (int i8 = 0; i8 < i3; i8++) {
            System.arraycopy(this.f29667else.get(i8), 0, bArr2, blockSize6, this.f29669if.getBlockSize() / 2);
            blockSize6 += this.f29669if.getBlockSize() / 2;
        }
        return bArr2;
    }
}
