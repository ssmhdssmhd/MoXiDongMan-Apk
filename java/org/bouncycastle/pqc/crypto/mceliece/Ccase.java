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

/* renamed from: org.bouncycastle.pqc.crypto.mceliece.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase implements MessageEncryptor {

    /* renamed from: goto, reason: not valid java name */
    public static final String f32195goto = "1.3.6.1.4.1.8301.3.1.3.4.2.2";

    /* renamed from: case, reason: not valid java name */
    public ty0 f32196case;

    /* renamed from: do, reason: not valid java name */
    private Digest f32197do;

    /* renamed from: else, reason: not valid java name */
    private boolean f32198else;

    /* renamed from: for, reason: not valid java name */
    private int f32199for;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f32200if;

    /* renamed from: new, reason: not valid java name */
    private int f32201new;

    /* renamed from: try, reason: not valid java name */
    private int f32202try;

    /* renamed from: new, reason: not valid java name */
    private void m35616new(xy0 xy0Var) {
        this.f32197do = Celse.m35624do(xy0Var.m8159if());
        this.f32199for = xy0Var.m9621else();
        this.f32201new = xy0Var.m9620case();
        this.f32202try = xy0Var.m9619break();
    }

    /* renamed from: try, reason: not valid java name */
    private void m35617try(zy0 zy0Var) {
        SecureRandom secureRandomM33599case = this.f32200if;
        if (secureRandomM33599case == null) {
            secureRandomM33599case = Cfor.m33599case();
        }
        this.f32200if = secureRandomM33599case;
        this.f32197do = Celse.m35624do(zy0Var.m8159if());
        this.f32199for = zy0Var.m10330try();
        this.f32201new = zy0Var.m10329new();
        this.f32202try = zy0Var.m10327case();
    }

    /* renamed from: do, reason: not valid java name */
    public int m35618do(int i) {
        return 0;
    }

    /* renamed from: for, reason: not valid java name */
    public int m35619for(ty0 ty0Var) throws IllegalArgumentException {
        if (ty0Var instanceof zy0) {
            return ((zy0) ty0Var).m10330try();
        }
        if (ty0Var instanceof xy0) {
            return ((xy0) ty0Var).m9621else();
        }
        throw new IllegalArgumentException("unsupported type");
    }

    /* renamed from: if, reason: not valid java name */
    public int m35620if(int i) {
        return 0;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageEncryptor
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f32198else = z;
        if (!z) {
            xy0 xy0Var = (xy0) cipherParameters;
            this.f32196case = xy0Var;
            m35616new(xy0Var);
        } else {
            if (!(cipherParameters instanceof cc1)) {
                this.f32200if = Cfor.m33599case();
                zy0 zy0Var = (zy0) cipherParameters;
                this.f32196case = zy0Var;
                m35617try(zy0Var);
                return;
            }
            cc1 cc1Var = (cc1) cipherParameters;
            this.f32200if = cc1Var.m847if();
            zy0 zy0Var2 = (zy0) cc1Var.m846do();
            this.f32196case = zy0Var2;
            m35617try(zy0Var2);
        }
    }

    @Override // org.bouncycastle.pqc.crypto.MessageEncryptor
    public byte[] messageDecrypt(byte[] bArr) throws tn0, ArrayIndexOutOfBoundsException {
        if (this.f32198else) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        int i = (this.f32199for + 7) >> 3;
        int length = bArr.length - i;
        byte[][] bArrM36268catch = Cif.m36268catch(bArr, i);
        byte[] bArr2 = bArrM36268catch[0];
        byte[] bArr3 = bArrM36268catch[1];
        re0[] re0VarArrM35630do = Cif.m35630do((xy0) this.f32196case, re0.m6939case(this.f32199for, bArr2));
        byte[] bArrMo3004if = re0VarArrM35630do[0].mo3004if();
        re0 re0Var = re0VarArrM35630do[1];
        y00 y00Var = new y00(new wp1());
        y00Var.addSeedMaterial(bArrMo3004if);
        byte[] bArr4 = new byte[length];
        y00Var.nextBytes(bArr4);
        for (int i2 = 0; i2 < length; i2++) {
            bArr4[i2] = (byte) (bArr4[i2] ^ bArr3[i2]);
        }
        this.f32197do.update(bArr4, 0, length);
        byte[] bArr5 = new byte[this.f32197do.getDigestSize()];
        this.f32197do.doFinal(bArr5, 0);
        if (Cdo.m35623if(this.f32199for, this.f32202try, bArr5).equals(re0Var)) {
            return Cif.m36268catch(bArr4, length - (this.f32201new >> 3))[0];
        }
        throw new tn0("Bad Padding: Invalid ciphertext.");
    }

    @Override // org.bouncycastle.pqc.crypto.MessageEncryptor
    public byte[] messageEncrypt(byte[] bArr) {
        if (!this.f32198else) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        int i = this.f32201new >> 3;
        byte[] bArr2 = new byte[i];
        this.f32200if.nextBytes(bArr2);
        re0 re0Var = new re0(this.f32201new, this.f32200if);
        byte[] bArrMo3004if = re0Var.mo3004if();
        byte[] bArrM36276if = Cif.m36276if(bArr, bArr2);
        this.f32197do.update(bArrM36276if, 0, bArrM36276if.length);
        byte[] bArr3 = new byte[this.f32197do.getDigestSize()];
        this.f32197do.doFinal(bArr3, 0);
        byte[] bArrMo3004if2 = Cif.m35631if((zy0) this.f32196case, re0Var, Cdo.m35623if(this.f32199for, this.f32202try, bArr3)).mo3004if();
        y00 y00Var = new y00(new wp1());
        y00Var.addSeedMaterial(bArrMo3004if);
        byte[] bArr4 = new byte[bArr.length + i];
        y00Var.nextBytes(bArr4);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr4[i2] = (byte) (bArr4[i2] ^ bArr[i2]);
        }
        for (int i3 = 0; i3 < i; i3++) {
            int length = bArr.length + i3;
            bArr4[length] = (byte) (bArr4[length] ^ bArr2[i3]);
        }
        return Cif.m36276if(bArrMo3004if2, bArr4);
    }
}
