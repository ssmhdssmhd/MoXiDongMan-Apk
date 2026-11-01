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
import org.bouncycastle.pqc.math.linearalgebra.Cif;

/* renamed from: org.bouncycastle.pqc.crypto.mceliece.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements MessageEncryptor {

    /* renamed from: goto, reason: not valid java name */
    public static final String f32214goto = "1.3.6.1.4.1.8301.3.1.3.4.2.1";

    /* renamed from: this, reason: not valid java name */
    private static final String f32215this = "SHA1PRNG";

    /* renamed from: case, reason: not valid java name */
    public ty0 f32216case;

    /* renamed from: do, reason: not valid java name */
    private Digest f32217do;

    /* renamed from: else, reason: not valid java name */
    private boolean f32218else;

    /* renamed from: for, reason: not valid java name */
    private int f32219for;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f32220if;

    /* renamed from: new, reason: not valid java name */
    private int f32221new;

    /* renamed from: try, reason: not valid java name */
    private int f32222try;

    /* renamed from: for, reason: not valid java name */
    private void m35632for(zy0 zy0Var) {
        SecureRandom secureRandomM33599case = this.f32220if;
        if (secureRandomM33599case == null) {
            secureRandomM33599case = Cfor.m33599case();
        }
        this.f32220if = secureRandomM33599case;
        this.f32217do = Celse.m35624do(zy0Var.m8159if());
        this.f32219for = zy0Var.m10330try();
        this.f32221new = zy0Var.m10329new();
        this.f32222try = zy0Var.m10327case();
    }

    /* renamed from: if, reason: not valid java name */
    private void m35633if(xy0 xy0Var) {
        this.f32217do = Celse.m35624do(xy0Var.m8159if());
        this.f32219for = xy0Var.m9621else();
        this.f32222try = xy0Var.m9619break();
    }

    /* renamed from: do, reason: not valid java name */
    public int m35634do(ty0 ty0Var) throws IllegalArgumentException {
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
        this.f32218else = z;
        if (!z) {
            xy0 xy0Var = (xy0) cipherParameters;
            this.f32216case = xy0Var;
            m35633if(xy0Var);
        } else {
            if (!(cipherParameters instanceof cc1)) {
                this.f32220if = Cfor.m33599case();
                zy0 zy0Var = (zy0) cipherParameters;
                this.f32216case = zy0Var;
                m35632for(zy0Var);
                return;
            }
            cc1 cc1Var = (cc1) cipherParameters;
            this.f32220if = cc1Var.m847if();
            zy0 zy0Var2 = (zy0) cc1Var.m846do();
            this.f32216case = zy0Var2;
            m35632for(zy0Var2);
        }
    }

    @Override // org.bouncycastle.pqc.crypto.MessageEncryptor
    public byte[] messageDecrypt(byte[] bArr) throws tn0, ArrayIndexOutOfBoundsException {
        if (this.f32218else) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        int i = (this.f32219for + 7) >> 3;
        int length = bArr.length - i;
        byte[][] bArrM36268catch = Cif.m36268catch(bArr, i);
        byte[] bArr2 = bArrM36268catch[0];
        byte[] bArr3 = bArrM36268catch[1];
        re0[] re0VarArrM35630do = Cif.m35630do((xy0) this.f32216case, re0.m6939case(this.f32219for, bArr2));
        byte[] bArrMo3004if = re0VarArrM35630do[0].mo3004if();
        re0 re0Var = re0VarArrM35630do[1];
        y00 y00Var = new y00(new wp1());
        y00Var.addSeedMaterial(bArrMo3004if);
        byte[] bArr4 = new byte[length];
        y00Var.nextBytes(bArr4);
        for (int i2 = 0; i2 < length; i2++) {
            bArr4[i2] = (byte) (bArr4[i2] ^ bArr3[i2]);
        }
        byte[] bArrM36276if = Cif.m36276if(bArrMo3004if, bArr4);
        byte[] bArr5 = new byte[this.f32217do.getDigestSize()];
        this.f32217do.update(bArrM36276if, 0, bArrM36276if.length);
        this.f32217do.doFinal(bArr5, 0);
        if (Cdo.m35623if(this.f32219for, this.f32222try, bArr5).equals(re0Var)) {
            return bArr4;
        }
        throw new tn0("Bad Padding: invalid ciphertext");
    }

    @Override // org.bouncycastle.pqc.crypto.MessageEncryptor
    public byte[] messageEncrypt(byte[] bArr) {
        if (!this.f32218else) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        re0 re0Var = new re0(this.f32221new, this.f32220if);
        byte[] bArrMo3004if = re0Var.mo3004if();
        byte[] bArrM36276if = Cif.m36276if(bArrMo3004if, bArr);
        this.f32217do.update(bArrM36276if, 0, bArrM36276if.length);
        byte[] bArr2 = new byte[this.f32217do.getDigestSize()];
        this.f32217do.doFinal(bArr2, 0);
        byte[] bArrMo3004if2 = Cif.m35631if((zy0) this.f32216case, re0Var, Cdo.m35623if(this.f32219for, this.f32222try, bArr2)).mo3004if();
        y00 y00Var = new y00(new wp1());
        y00Var.addSeedMaterial(bArrMo3004if);
        byte[] bArr3 = new byte[bArr.length];
        y00Var.nextBytes(bArr3);
        for (int i = 0; i < bArr.length; i++) {
            bArr3[i] = (byte) (bArr3[i] ^ bArr[i]);
        }
        return Cif.m36276if(bArrMo3004if2, bArr3);
    }
}
