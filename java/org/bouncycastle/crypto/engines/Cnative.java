package org.bouncycastle.crypto.engines;

import android.support.v4.bc1;
import android.support.v4.cc1;
import android.support.v4.gr0;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Wrapper;

/* renamed from: org.bouncycastle.crypto.engines.native, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnative implements Wrapper {

    /* renamed from: do, reason: not valid java name */
    private BlockCipher f29726do;

    /* renamed from: for, reason: not valid java name */
    private gr0 f29727for;

    /* renamed from: if, reason: not valid java name */
    private boolean f29728if;

    /* renamed from: new, reason: not valid java name */
    private boolean f29729new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f29730try;

    public Cnative(BlockCipher blockCipher) {
        this(blockCipher, false);
    }

    public Cnative(BlockCipher blockCipher, boolean z) {
        this.f29730try = new byte[]{-90, -90, -90, -90, -90, -90, -90, -90};
        this.f29726do = blockCipher;
        this.f29728if = !z;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return this.f29726do.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f29729new = z;
        if (cipherParameters instanceof cc1) {
            cipherParameters = ((cc1) cipherParameters).m846do();
        }
        if (cipherParameters instanceof gr0) {
            this.f29727for = (gr0) cipherParameters;
            return;
        }
        if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            this.f29730try = bc1Var.m514do();
            this.f29727for = (gr0) bc1Var.m515if();
            if (this.f29730try.length != 8) {
                throw new IllegalArgumentException("IV not equal to 8");
            }
        }
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int i, int i2) throws IllegalStateException, tw, tn0, IllegalArgumentException {
        if (this.f29729new) {
            throw new IllegalStateException("not set for unwrapping");
        }
        int i3 = i2 / 8;
        if (i3 * 8 != i2) {
            throw new tn0("unwrap data must be a multiple of 8 bytes");
        }
        byte[] bArr2 = this.f29730try;
        byte[] bArr3 = new byte[i2 - bArr2.length];
        byte[] bArr4 = new byte[bArr2.length];
        byte[] bArr5 = new byte[bArr2.length + 8];
        System.arraycopy(bArr, i, bArr4, 0, bArr2.length);
        byte[] bArr6 = this.f29730try;
        System.arraycopy(bArr, i + bArr6.length, bArr3, 0, i2 - bArr6.length);
        this.f29726do.init(!this.f29728if, this.f29727for);
        int i4 = i3 - 1;
        for (int i5 = 5; i5 >= 0; i5--) {
            for (int i6 = i4; i6 >= 1; i6--) {
                System.arraycopy(bArr4, 0, bArr5, 0, this.f29730try.length);
                int i7 = (i6 - 1) * 8;
                System.arraycopy(bArr3, i7, bArr5, this.f29730try.length, 8);
                int i8 = (i4 * i5) + i6;
                int i9 = 1;
                while (i8 != 0) {
                    int length = this.f29730try.length - i9;
                    bArr5[length] = (byte) (((byte) i8) ^ bArr5[length]);
                    i8 >>>= 8;
                    i9++;
                }
                this.f29726do.processBlock(bArr5, 0, bArr5, 0);
                System.arraycopy(bArr5, 0, bArr4, 0, 8);
                System.arraycopy(bArr5, 8, bArr3, i7, 8);
            }
        }
        if (q3.m6360abstract(bArr4, this.f29730try)) {
            return bArr3;
        }
        throw new tn0("checksum failed");
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i, int i2) throws IllegalStateException, tw, IllegalArgumentException {
        if (!this.f29729new) {
            throw new IllegalStateException("not set for wrapping");
        }
        int i3 = i2 / 8;
        if (i3 * 8 != i2) {
            throw new tw("wrap data must be a multiple of 8 bytes");
        }
        byte[] bArr2 = this.f29730try;
        byte[] bArr3 = new byte[bArr2.length + i2];
        byte[] bArr4 = new byte[bArr2.length + 8];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, this.f29730try.length, i2);
        this.f29726do.init(this.f29728if, this.f29727for);
        for (int i4 = 0; i4 != 6; i4++) {
            for (int i5 = 1; i5 <= i3; i5++) {
                System.arraycopy(bArr3, 0, bArr4, 0, this.f29730try.length);
                int i6 = i5 * 8;
                System.arraycopy(bArr3, i6, bArr4, this.f29730try.length, 8);
                this.f29726do.processBlock(bArr4, 0, bArr4, 0);
                int i7 = (i3 * i4) + i5;
                int i8 = 1;
                while (i7 != 0) {
                    int length = this.f29730try.length - i8;
                    bArr4[length] = (byte) (((byte) i7) ^ bArr4[length]);
                    i7 >>>= 8;
                    i8++;
                }
                System.arraycopy(bArr4, 0, bArr3, 0, 8);
                System.arraycopy(bArr4, 8, bArr3, i6, 8);
            }
        }
        return bArr3;
    }
}
