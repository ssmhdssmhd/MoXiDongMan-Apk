package org.bouncycastle.crypto.engines;

import android.support.v4.bc1;
import android.support.v4.cc1;
import android.support.v4.gr0;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import android.support.v4.u00;
import android.support.v4.wt;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.modes.Cdo;

/* renamed from: org.bouncycastle.crypto.engines.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry implements Wrapper {

    /* renamed from: goto, reason: not valid java name */
    private static final byte[] f29776goto = {74, -35, -94, 44, 121, -24, 33, 5};

    /* renamed from: do, reason: not valid java name */
    private Cdo f29778do;

    /* renamed from: for, reason: not valid java name */
    private bc1 f29780for;

    /* renamed from: if, reason: not valid java name */
    private gr0 f29781if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f29782new;

    /* renamed from: try, reason: not valid java name */
    private boolean f29783try;

    /* renamed from: case, reason: not valid java name */
    public Digest f29777case = u00.m8176if();

    /* renamed from: else, reason: not valid java name */
    public byte[] f29779else = new byte[20];

    /* renamed from: do, reason: not valid java name */
    private byte[] m33593do(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        this.f29777case.update(bArr, 0, bArr.length);
        this.f29777case.doFinal(this.f29779else, 0);
        System.arraycopy(this.f29779else, 0, bArr2, 0, 8);
        return bArr2;
    }

    /* renamed from: for, reason: not valid java name */
    private static byte[] m33594for(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        int i = 0;
        while (i < bArr.length) {
            int i2 = i + 1;
            bArr2[i] = bArr[bArr.length - i2];
            i = i2;
        }
        return bArr2;
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m33595if(byte[] bArr, byte[] bArr2) {
        return q3.m6360abstract(m33593do(bArr), bArr2);
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return "DESede";
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) {
        SecureRandom secureRandomM33599case;
        this.f29783try = z;
        this.f29778do = new Cdo(new wt());
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            CipherParameters cipherParametersM846do = cc1Var.m846do();
            SecureRandom secureRandomM847if = cc1Var.m847if();
            cipherParameters = cipherParametersM846do;
            secureRandomM33599case = secureRandomM847if;
        } else {
            secureRandomM33599case = Cfor.m33599case();
        }
        if (cipherParameters instanceof gr0) {
            this.f29781if = (gr0) cipherParameters;
            if (this.f29783try) {
                byte[] bArr = new byte[8];
                this.f29782new = bArr;
                secureRandomM33599case.nextBytes(bArr);
                this.f29780for = new bc1(this.f29781if, this.f29782new);
                return;
            }
            return;
        }
        if (cipherParameters instanceof bc1) {
            bc1 bc1Var = (bc1) cipherParameters;
            this.f29780for = bc1Var;
            this.f29782new = bc1Var.m514do();
            this.f29781if = (gr0) this.f29780for.m515if();
            if (!this.f29783try) {
                throw new IllegalArgumentException("You should not supply an IV for unwrapping");
            }
            byte[] bArr2 = this.f29782new;
            if (bArr2 == null || bArr2.length != 8) {
                throw new IllegalArgumentException("IV is not 8 octets");
            }
        }
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int i, int i2) throws IllegalStateException, tw, tn0, IllegalArgumentException {
        if (this.f29783try) {
            throw new IllegalStateException("Not set for unwrapping");
        }
        if (bArr == null) {
            throw new tn0("Null pointer as ciphertext");
        }
        int blockSize = this.f29778do.getBlockSize();
        if (i2 % blockSize != 0) {
            throw new tn0("Ciphertext not multiple of " + blockSize);
        }
        this.f29778do.init(false, new bc1(this.f29781if, f29776goto));
        byte[] bArr2 = new byte[i2];
        for (int i3 = 0; i3 != i2; i3 += blockSize) {
            this.f29778do.processBlock(bArr, i + i3, bArr2, i3);
        }
        byte[] bArrM33594for = m33594for(bArr2);
        byte[] bArr3 = new byte[8];
        this.f29782new = bArr3;
        int length = bArrM33594for.length - 8;
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArrM33594for, 0, bArr3, 0, 8);
        System.arraycopy(bArrM33594for, 8, bArr4, 0, bArrM33594for.length - 8);
        bc1 bc1Var = new bc1(this.f29781if, this.f29782new);
        this.f29780for = bc1Var;
        this.f29778do.init(false, bc1Var);
        byte[] bArr5 = new byte[length];
        for (int i4 = 0; i4 != length; i4 += blockSize) {
            this.f29778do.processBlock(bArr4, i4, bArr5, i4);
        }
        int i5 = length - 8;
        byte[] bArr6 = new byte[i5];
        byte[] bArr7 = new byte[8];
        System.arraycopy(bArr5, 0, bArr6, 0, i5);
        System.arraycopy(bArr5, i5, bArr7, 0, 8);
        if (m33595if(bArr6, bArr7)) {
            return bArr6;
        }
        throw new tn0("Checksum inside ciphertext is corrupted");
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i, int i2) throws IllegalStateException, tw, IllegalArgumentException {
        if (!this.f29783try) {
            throw new IllegalStateException("Not initialized for wrapping");
        }
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        byte[] bArrM33593do = m33593do(bArr2);
        int length = bArrM33593do.length + i2;
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr2, 0, bArr3, 0, i2);
        System.arraycopy(bArrM33593do, 0, bArr3, i2, bArrM33593do.length);
        int blockSize = this.f29778do.getBlockSize();
        if (length % blockSize != 0) {
            throw new IllegalStateException("Not multiple of block length");
        }
        this.f29778do.init(true, this.f29780for);
        byte[] bArr4 = new byte[length];
        for (int i3 = 0; i3 != length; i3 += blockSize) {
            this.f29778do.processBlock(bArr3, i3, bArr4, i3);
        }
        byte[] bArr5 = this.f29782new;
        byte[] bArr6 = new byte[bArr5.length + length];
        System.arraycopy(bArr5, 0, bArr6, 0, bArr5.length);
        System.arraycopy(bArr4, 0, bArr6, this.f29782new.length, length);
        byte[] bArrM33594for = m33594for(bArr6);
        this.f29778do.init(true, new bc1(this.f29781if, f29776goto));
        for (int i4 = 0; i4 != bArrM33594for.length; i4 += blockSize) {
            this.f29778do.processBlock(bArrM33594for, i4, bArrM33594for, i4);
        }
        return bArrM33594for;
    }
}
