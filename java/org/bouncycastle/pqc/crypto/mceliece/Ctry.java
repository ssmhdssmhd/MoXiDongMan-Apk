package org.bouncycastle.pqc.crypto.mceliece;

import android.support.v4.cc1;
import android.support.v4.re0;
import android.support.v4.tn0;
import android.support.v4.ty0;
import android.support.v4.wp1;
import android.support.v4.xy0;
import android.support.v4.y00;
import android.support.v4.zy0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.MessageEncryptor;
import org.bouncycastle.pqc.math.linearalgebra.Ccatch;
import org.bouncycastle.pqc.math.linearalgebra.Cif;

/* renamed from: org.bouncycastle.pqc.crypto.mceliece.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry implements MessageEncryptor {

    /* renamed from: break, reason: not valid java name */
    public static final byte[] f32223break = "a predetermined public constant".getBytes();

    /* renamed from: goto, reason: not valid java name */
    public static final String f32224goto = "1.3.6.1.4.1.8301.3.1.3.4.2.3";

    /* renamed from: this, reason: not valid java name */
    private static final String f32225this = "SHA1PRNG";

    /* renamed from: case, reason: not valid java name */
    private int f32226case;

    /* renamed from: do, reason: not valid java name */
    private Digest f32227do;

    /* renamed from: else, reason: not valid java name */
    private boolean f32228else;

    /* renamed from: for, reason: not valid java name */
    public ty0 f32229for;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f32230if;

    /* renamed from: new, reason: not valid java name */
    private int f32231new;

    /* renamed from: try, reason: not valid java name */
    private int f32232try;

    /* renamed from: for, reason: not valid java name */
    private void m35635for(zy0 zy0Var) {
        this.f32227do = Celse.m35624do(zy0Var.m8159if());
        this.f32231new = zy0Var.m10330try();
        this.f32232try = zy0Var.m10329new();
        this.f32226case = zy0Var.m10327case();
    }

    /* renamed from: if, reason: not valid java name */
    private void m35636if(xy0 xy0Var) {
        this.f32227do = Celse.m35624do(xy0Var.m8159if());
        this.f32231new = xy0Var.m9621else();
        this.f32232try = xy0Var.m9620case();
        this.f32226case = xy0Var.m9619break();
    }

    /* renamed from: do, reason: not valid java name */
    public int m35637do(ty0 ty0Var) {
        if (ty0Var instanceof zy0) {
            return ((zy0) ty0Var).m10330try();
        }
        if (ty0Var instanceof xy0) {
            return ((xy0) ty0Var).m9621else();
        }
        throw new IllegalArgumentException("unsupported type");
    }

    @Override // org.bouncycastle.pqc.crypto.MessageEncryptor
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f32228else = z;
        if (!z) {
            xy0 xy0Var = (xy0) cipherParameters;
            this.f32229for = xy0Var;
            m35636if(xy0Var);
        } else {
            if (!(cipherParameters instanceof cc1)) {
                this.f32230if = Cfor.m33599case();
                zy0 zy0Var = (zy0) cipherParameters;
                this.f32229for = zy0Var;
                m35635for(zy0Var);
                return;
            }
            cc1 cc1Var = (cc1) cipherParameters;
            this.f32230if = cc1Var.m847if();
            zy0 zy0Var2 = (zy0) cc1Var.m846do();
            this.f32229for = zy0Var2;
            m35635for(zy0Var2);
        }
    }

    @Override // org.bouncycastle.pqc.crypto.MessageEncryptor
    public byte[] messageDecrypt(byte[] bArr) throws tn0, ArrayIndexOutOfBoundsException {
        byte[] bArr2;
        if (this.f32228else) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        int i = this.f32231new >> 3;
        if (bArr.length < i) {
            throw new tn0("Bad Padding: Ciphertext too short.");
        }
        int digestSize = this.f32227do.getDigestSize();
        int i2 = this.f32232try >> 3;
        int length = bArr.length - i;
        if (length > 0) {
            byte[][] bArrM36268catch = Cif.m36268catch(bArr, length);
            bArr2 = bArrM36268catch[0];
            bArr = bArrM36268catch[1];
        } else {
            bArr2 = new byte[0];
        }
        re0[] re0VarArrM35630do = Cif.m35630do((xy0) this.f32229for, re0.m6939case(this.f32231new, bArr));
        byte[] bArrMo3004if = re0VarArrM35630do[0].mo3004if();
        re0 re0Var = re0VarArrM35630do[1];
        if (bArrMo3004if.length > i2) {
            bArrMo3004if = Cif.m36270const(bArrMo3004if, 0, i2);
        }
        byte[] bArrM36276if = Cif.m36276if(Cif.m36276if(bArr2, Cdo.m35621do(this.f32231new, this.f32226case, re0Var)), bArrMo3004if);
        int length2 = bArrM36276if.length - digestSize;
        byte[][] bArrM36268catch2 = Cif.m36268catch(bArrM36276if, digestSize);
        byte[] bArr3 = bArrM36268catch2[0];
        byte[] bArr4 = bArrM36268catch2[1];
        byte[] bArr5 = new byte[this.f32227do.getDigestSize()];
        this.f32227do.update(bArr4, 0, bArr4.length);
        this.f32227do.doFinal(bArr5, 0);
        for (int i3 = digestSize - 1; i3 >= 0; i3--) {
            bArr5[i3] = (byte) (bArr5[i3] ^ bArr3[i3]);
        }
        y00 y00Var = new y00(new wp1());
        y00Var.addSeedMaterial(bArr5);
        byte[] bArr6 = new byte[length2];
        y00Var.nextBytes(bArr6);
        for (int i4 = length2 - 1; i4 >= 0; i4--) {
            bArr6[i4] = (byte) (bArr6[i4] ^ bArr4[i4]);
        }
        byte[] bArr7 = f32223break;
        byte[][] bArrM36268catch3 = Cif.m36268catch(bArr6, length2 - bArr7.length);
        byte[] bArr8 = bArrM36268catch3[0];
        if (Cif.m36272else(bArrM36268catch3[1], bArr7)) {
            return bArr8;
        }
        throw new tn0("Bad Padding: invalid ciphertext");
    }

    @Override // org.bouncycastle.pqc.crypto.MessageEncryptor
    public byte[] messageEncrypt(byte[] bArr) {
        if (!this.f32228else) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        int digestSize = this.f32227do.getDigestSize();
        int i = this.f32232try >> 3;
        int iBitLength = (Ccatch.m36158do(this.f32231new, this.f32226case).bitLength() - 1) >> 3;
        byte[] bArr2 = f32223break;
        int length = ((i + iBitLength) - digestSize) - bArr2.length;
        if (bArr.length > length) {
            length = bArr.length;
        }
        int length2 = bArr2.length + length;
        int i2 = ((length2 + digestSize) - i) - iBitLength;
        byte[] bArr3 = new byte[length2];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, length, bArr2.length);
        byte[] bArr4 = new byte[digestSize];
        this.f32230if.nextBytes(bArr4);
        y00 y00Var = new y00(new wp1());
        y00Var.addSeedMaterial(bArr4);
        byte[] bArr5 = new byte[length2];
        y00Var.nextBytes(bArr5);
        for (int i3 = length2 - 1; i3 >= 0; i3--) {
            bArr5[i3] = (byte) (bArr5[i3] ^ bArr3[i3]);
        }
        byte[] bArr6 = new byte[this.f32227do.getDigestSize()];
        this.f32227do.update(bArr5, 0, length2);
        this.f32227do.doFinal(bArr6, 0);
        for (int i4 = digestSize - 1; i4 >= 0; i4--) {
            bArr6[i4] = (byte) (bArr6[i4] ^ bArr4[i4]);
        }
        byte[] bArrM36276if = Cif.m36276if(bArr6, bArr5);
        byte[] bArr7 = new byte[0];
        if (i2 > 0) {
            bArr7 = new byte[i2];
            System.arraycopy(bArrM36276if, 0, bArr7, 0, i2);
        }
        byte[] bArr8 = new byte[iBitLength];
        System.arraycopy(bArrM36276if, i2, bArr8, 0, iBitLength);
        byte[] bArr9 = new byte[i];
        System.arraycopy(bArrM36276if, iBitLength + i2, bArr9, 0, i);
        byte[] bArrMo3004if = Cif.m35631if((zy0) this.f32229for, re0.m6939case(this.f32232try, bArr9), Cdo.m35623if(this.f32231new, this.f32226case, bArr8)).mo3004if();
        return i2 > 0 ? Cif.m36276if(bArr7, bArrMo3004if) : bArrMo3004if;
    }
}
