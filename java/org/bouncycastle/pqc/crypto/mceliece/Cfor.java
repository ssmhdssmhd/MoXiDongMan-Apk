package org.bouncycastle.pqc.crypto.mceliece;

import android.support.v4.cc1;
import android.support.v4.dz0;
import android.support.v4.fd1;
import android.support.v4.gz0;
import android.support.v4.iz0;
import android.support.v4.pe1;
import android.support.v4.qe0;
import android.support.v4.re0;
import android.support.v4.se0;
import android.support.v4.tn0;
import android.support.v4.uh0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.crypto.MessageEncryptor;

/* renamed from: org.bouncycastle.pqc.crypto.mceliece.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements MessageEncryptor {

    /* renamed from: this, reason: not valid java name */
    public static final String f32205this = "1.3.6.1.4.1.8301.3.1.3.4.1";

    /* renamed from: case, reason: not valid java name */
    public int f32206case;

    /* renamed from: do, reason: not valid java name */
    private SecureRandom f32207do;

    /* renamed from: else, reason: not valid java name */
    private dz0 f32208else;

    /* renamed from: for, reason: not valid java name */
    private int f32209for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f32210goto;

    /* renamed from: if, reason: not valid java name */
    private int f32211if;

    /* renamed from: new, reason: not valid java name */
    private int f32212new;

    /* renamed from: try, reason: not valid java name */
    public int f32213try;

    /* renamed from: do, reason: not valid java name */
    private byte[] m35625do(re0 re0Var) throws tn0 {
        byte[] bArrMo3004if = re0Var.mo3004if();
        int length = bArrMo3004if.length - 1;
        while (length >= 0 && bArrMo3004if[length] == 0) {
            length--;
        }
        if (length < 0 || bArrMo3004if[length] != 1) {
            throw new tn0("Bad Padding: invalid ciphertext");
        }
        byte[] bArr = new byte[length];
        System.arraycopy(bArrMo3004if, 0, bArr, 0, length);
        return bArr;
    }

    /* renamed from: if, reason: not valid java name */
    private re0 m35626if(byte[] bArr) {
        byte[] bArr2 = new byte[this.f32213try + ((this.f32209for & 7) != 0 ? 1 : 0)];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        bArr2[bArr.length] = 1;
        return re0.m6939case(this.f32209for, bArr2);
    }

    /* renamed from: new, reason: not valid java name */
    private void m35627new(gz0 gz0Var) {
        this.f32211if = gz0Var.m2832else();
        int iM2830case = gz0Var.m2830case();
        this.f32209for = iM2830case;
        this.f32213try = iM2830case >> 3;
        this.f32206case = this.f32211if >> 3;
    }

    /* renamed from: try, reason: not valid java name */
    private void m35628try(iz0 iz0Var) {
        SecureRandom secureRandomM33599case = this.f32207do;
        if (secureRandomM33599case == null) {
            secureRandomM33599case = org.bouncycastle.crypto.Cfor.m33599case();
        }
        this.f32207do = secureRandomM33599case;
        this.f32211if = iz0Var.m3642try();
        this.f32209for = iz0Var.m3641new();
        this.f32212new = iz0Var.m3639case();
        this.f32206case = this.f32211if >> 3;
        this.f32213try = this.f32209for >> 3;
    }

    /* renamed from: for, reason: not valid java name */
    public int m35629for(dz0 dz0Var) {
        if (dz0Var instanceof iz0) {
            return ((iz0) dz0Var).m3642try();
        }
        if (dz0Var instanceof gz0) {
            return ((gz0) dz0Var).m2832else();
        }
        throw new IllegalArgumentException("unsupported type");
    }

    @Override // org.bouncycastle.pqc.crypto.MessageEncryptor
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f32210goto = z;
        if (!z) {
            gz0 gz0Var = (gz0) cipherParameters;
            this.f32208else = gz0Var;
            m35627new(gz0Var);
        } else {
            if (!(cipherParameters instanceof cc1)) {
                this.f32207do = org.bouncycastle.crypto.Cfor.m33599case();
                iz0 iz0Var = (iz0) cipherParameters;
                this.f32208else = iz0Var;
                m35628try(iz0Var);
                return;
            }
            cc1 cc1Var = (cc1) cipherParameters;
            this.f32207do = cc1Var.m847if();
            iz0 iz0Var2 = (iz0) cc1Var.m846do();
            this.f32208else = iz0Var2;
            m35628try(iz0Var2);
        }
    }

    @Override // org.bouncycastle.pqc.crypto.MessageEncryptor
    public byte[] messageDecrypt(byte[] bArr) throws tn0 {
        if (this.f32210goto) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        re0 re0VarM6939case = re0.m6939case(this.f32211if, bArr);
        gz0 gz0Var = (gz0) this.f32208else;
        se0 se0VarM2833for = gz0Var.m2833for();
        pe1 pe1VarM2835new = gz0Var.m2835new();
        qe0 qe0VarM2831catch = gz0Var.m2831catch();
        fd1 fd1VarM2834goto = gz0Var.m2834goto();
        fd1 fd1VarM2836this = gz0Var.m2836this();
        qe0 qe0VarM2837try = gz0Var.m2837try();
        pe1[] pe1VarArrM2829break = gz0Var.m2829break();
        fd1 fd1VarM2251try = fd1VarM2834goto.m2251try(fd1VarM2836this);
        re0 re0Var = (re0) re0VarM6939case.mo3006try(fd1VarM2251try.m2248do());
        re0 re0VarM8450for = uh0.m8450for((re0) qe0VarM2837try.mo403this(re0Var), se0VarM2833for, pe1VarM2835new, pe1VarArrM2829break);
        re0 re0Var2 = (re0) ((re0) re0Var.mo3002do(re0VarM8450for)).mo3006try(fd1VarM2834goto);
        return m35625do((re0) qe0VarM2831catch.mo396case(re0Var2.m6946goto(this.f32209for)));
    }

    @Override // org.bouncycastle.pqc.crypto.MessageEncryptor
    public byte[] messageEncrypt(byte[] bArr) {
        if (!this.f32210goto) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        re0 re0VarM35626if = m35626if(bArr);
        return ((re0) ((iz0) this.f32208else).m3640for().mo396case(re0VarM35626if).mo3002do(new re0(this.f32211if, this.f32212new, this.f32207do))).mo3004if();
    }
}
