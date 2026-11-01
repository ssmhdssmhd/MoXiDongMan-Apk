package org.bouncycastle.crypto.engines;

import android.support.v4.bc1;
import android.support.v4.cc1;
import android.support.v4.hj1;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import android.support.v4.u00;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.modes.Cdo;

/* renamed from: org.bouncycastle.crypto.engines.while, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cwhile implements Wrapper {

    /* renamed from: this, reason: not valid java name */
    private static final byte[] f29784this = {74, -35, -94, 44, 121, -24, 33, 5};

    /* renamed from: case, reason: not valid java name */
    private SecureRandom f29785case;

    /* renamed from: do, reason: not valid java name */
    private Cdo f29786do;

    /* renamed from: for, reason: not valid java name */
    private bc1 f29788for;

    /* renamed from: if, reason: not valid java name */
    private CipherParameters f29790if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f29791new;

    /* renamed from: try, reason: not valid java name */
    private boolean f29792try;

    /* renamed from: else, reason: not valid java name */
    public Digest f29787else = u00.m8176if();

    /* renamed from: goto, reason: not valid java name */
    public byte[] f29789goto = new byte[20];

    /* renamed from: do, reason: not valid java name */
    private byte[] m33596do(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        this.f29787else.update(bArr, 0, bArr.length);
        this.f29787else.doFinal(this.f29789goto, 0);
        System.arraycopy(this.f29789goto, 0, bArr2, 0, 8);
        return bArr2;
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m33597if(byte[] bArr, byte[] bArr2) {
        return q3.m6360abstract(m33596do(bArr), bArr2);
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return "RC2";
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f29792try = z;
        this.f29786do = new Cdo(new hj1());
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            this.f29785case = cc1Var.m847if();
            cipherParameters = cc1Var.m846do();
        } else {
            this.f29785case = Cfor.m33599case();
        }
        if (!(cipherParameters instanceof bc1)) {
            this.f29790if = cipherParameters;
            if (this.f29792try) {
                byte[] bArr = new byte[8];
                this.f29791new = bArr;
                this.f29785case.nextBytes(bArr);
                this.f29788for = new bc1(this.f29790if, this.f29791new);
                return;
            }
            return;
        }
        bc1 bc1Var = (bc1) cipherParameters;
        this.f29788for = bc1Var;
        this.f29791new = bc1Var.m514do();
        this.f29790if = this.f29788for.m515if();
        if (!this.f29792try) {
            throw new IllegalArgumentException("You should not supply an IV for unwrapping");
        }
        byte[] bArr2 = this.f29791new;
        if (bArr2 == null || bArr2.length != 8) {
            throw new IllegalArgumentException("IV is not 8 octets");
        }
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int i, int i2) throws IllegalStateException, tw, tn0, IllegalArgumentException {
        if (this.f29792try) {
            throw new IllegalStateException("Not set for unwrapping");
        }
        if (bArr == null) {
            throw new tn0("Null pointer as ciphertext");
        }
        if (i2 % this.f29786do.getBlockSize() != 0) {
            throw new tn0("Ciphertext not multiple of " + this.f29786do.getBlockSize());
        }
        this.f29786do.init(false, new bc1(this.f29790if, f29784this));
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        for (int i3 = 0; i3 < i2 / this.f29786do.getBlockSize(); i3++) {
            int blockSize = this.f29786do.getBlockSize() * i3;
            this.f29786do.processBlock(bArr2, blockSize, bArr2, blockSize);
        }
        byte[] bArr3 = new byte[i2];
        int i4 = 0;
        while (i4 < i2) {
            int i5 = i4 + 1;
            bArr3[i4] = bArr2[i2 - i5];
            i4 = i5;
        }
        byte[] bArr4 = new byte[8];
        this.f29791new = bArr4;
        int i6 = i2 - 8;
        byte[] bArr5 = new byte[i6];
        System.arraycopy(bArr3, 0, bArr4, 0, 8);
        System.arraycopy(bArr3, 8, bArr5, 0, i6);
        bc1 bc1Var = new bc1(this.f29790if, this.f29791new);
        this.f29788for = bc1Var;
        this.f29786do.init(false, bc1Var);
        byte[] bArr6 = new byte[i6];
        System.arraycopy(bArr5, 0, bArr6, 0, i6);
        for (int i7 = 0; i7 < i6 / this.f29786do.getBlockSize(); i7++) {
            int blockSize2 = this.f29786do.getBlockSize() * i7;
            this.f29786do.processBlock(bArr6, blockSize2, bArr6, blockSize2);
        }
        int i8 = i6 - 8;
        byte[] bArr7 = new byte[i8];
        byte[] bArr8 = new byte[8];
        System.arraycopy(bArr6, 0, bArr7, 0, i8);
        System.arraycopy(bArr6, i8, bArr8, 0, 8);
        if (!m33597if(bArr7, bArr8)) {
            throw new tn0("Checksum inside ciphertext is corrupted");
        }
        if (i8 - ((bArr7[0] & 255) + 1) <= 7) {
            int i9 = bArr7[0];
            byte[] bArr9 = new byte[i9];
            System.arraycopy(bArr7, 1, bArr9, 0, i9);
            return bArr9;
        }
        throw new tn0("too many pad bytes (" + (i8 - ((bArr7[0] & 255) + 1)) + ")");
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i, int i2) throws IllegalStateException, tw, IllegalArgumentException {
        if (!this.f29792try) {
            throw new IllegalStateException("Not initialized for wrapping");
        }
        int i3 = i2 + 1;
        int i4 = i3 % 8;
        int i5 = i4 != 0 ? (8 - i4) + i3 : i3;
        byte[] bArr2 = new byte[i5];
        bArr2[0] = (byte) i2;
        System.arraycopy(bArr, i, bArr2, 1, i2);
        int i6 = (i5 - i2) - 1;
        byte[] bArr3 = new byte[i6];
        if (i6 > 0) {
            this.f29785case.nextBytes(bArr3);
            System.arraycopy(bArr3, 0, bArr2, i3, i6);
        }
        byte[] bArrM33596do = m33596do(bArr2);
        int length = bArrM33596do.length + i5;
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArr2, 0, bArr4, 0, i5);
        System.arraycopy(bArrM33596do, 0, bArr4, i5, bArrM33596do.length);
        byte[] bArr5 = new byte[length];
        System.arraycopy(bArr4, 0, bArr5, 0, length);
        int blockSize = length / this.f29786do.getBlockSize();
        if (length % this.f29786do.getBlockSize() != 0) {
            throw new IllegalStateException("Not multiple of block length");
        }
        this.f29786do.init(true, this.f29788for);
        for (int i7 = 0; i7 < blockSize; i7++) {
            int blockSize2 = this.f29786do.getBlockSize() * i7;
            this.f29786do.processBlock(bArr5, blockSize2, bArr5, blockSize2);
        }
        byte[] bArr6 = this.f29791new;
        int length2 = bArr6.length + length;
        byte[] bArr7 = new byte[length2];
        System.arraycopy(bArr6, 0, bArr7, 0, bArr6.length);
        System.arraycopy(bArr5, 0, bArr7, this.f29791new.length, length);
        byte[] bArr8 = new byte[length2];
        int i8 = 0;
        while (i8 < length2) {
            int i9 = i8 + 1;
            bArr8[i8] = bArr7[length2 - i9];
            i8 = i9;
        }
        this.f29786do.init(true, new bc1(this.f29790if, f29784this));
        for (int i10 = 0; i10 < blockSize + 1; i10++) {
            int blockSize3 = this.f29786do.getBlockSize() * i10;
            this.f29786do.processBlock(bArr8, blockSize3, bArr8, blockSize3);
        }
        return bArr8;
    }
}
