package org.bouncycastle.pqc.jcajce.provider.mceliece;

import android.support.v4.a4;
import android.support.v4.cc1;
import android.support.v4.tn0;
import android.support.v4.ty0;
import android.support.v4.u00;
import android.support.v4.z3;
import java.io.ByteArrayOutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak extends z3 implements PKCSObjectIdentifiers, X509ObjectIdentifiers {

    /* renamed from: case, reason: not valid java name */
    private org.bouncycastle.pqc.crypto.mceliece.Ctry f32546case;

    /* renamed from: else, reason: not valid java name */
    private ByteArrayOutputStream f32547else;

    /* renamed from: try, reason: not valid java name */
    private Digest f32548try;

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.break$do, reason: invalid class name */
    public static class Cdo extends Cbreak {
        public Cdo() {
            super(u00.m8174for(), new org.bouncycastle.pqc.crypto.mceliece.Ctry());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.break$for, reason: invalid class name */
    public static class Cfor extends Cbreak {
        public Cfor() {
            super(u00.m8179try(), new org.bouncycastle.pqc.crypto.mceliece.Ctry());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.break$if, reason: invalid class name */
    public static class Cif extends Cbreak {
        public Cif() {
            super(u00.m8177new(), new org.bouncycastle.pqc.crypto.mceliece.Ctry());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.break$new, reason: invalid class name */
    public static class Cnew extends Cbreak {
        public Cnew() {
            super(u00.m8168break(), new org.bouncycastle.pqc.crypto.mceliece.Ctry());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.break$try, reason: invalid class name */
    public static class Ctry extends Cbreak {
        public Ctry() {
            super(u00.m8176if(), new org.bouncycastle.pqc.crypto.mceliece.Ctry());
        }
    }

    public Cbreak() {
        this.f32547else = new ByteArrayOutputStream();
        this.f32547else = new ByteArrayOutputStream();
    }

    public Cbreak(Digest digest, org.bouncycastle.pqc.crypto.mceliece.Ctry ctry) {
        this.f32547else = new ByteArrayOutputStream();
        this.f32548try = digest;
        this.f32546case = ctry;
        this.f32547else = new ByteArrayOutputStream();
    }

    /* renamed from: extends, reason: not valid java name */
    private byte[] m36090extends() {
        this.f32547else.write(1);
        byte[] byteArray = this.f32547else.toByteArray();
        this.f32547else.reset();
        return byteArray;
    }

    /* renamed from: finally, reason: not valid java name */
    private byte[] m36091finally(byte[] bArr) throws BadPaddingException {
        int length = bArr.length - 1;
        while (length >= 0 && bArr[length] == 0) {
            length--;
        }
        if (bArr[length] != 1) {
            throw new BadPaddingException("invalid ciphertext");
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    @Override // android.support.v4.ul
    /* renamed from: else */
    public int mo8484else(Key key) throws InvalidKeyException {
        a4 a4VarM36101do;
        if (key instanceof PublicKey) {
            a4VarM36101do = org.bouncycastle.pqc.jcajce.provider.mceliece.Ctry.m36102if((PublicKey) key);
        } else {
            if (!(key instanceof PrivateKey)) {
                throw new InvalidKeyException();
            }
            a4VarM36101do = org.bouncycastle.pqc.jcajce.provider.mceliece.Ctry.m36101do((PrivateKey) key);
        }
        return this.f32546case.m35637do((ty0) a4VarM36101do);
    }

    @Override // android.support.v4.ul
    /* renamed from: goto */
    public String mo8487goto() {
        return "McElieceKobaraImaiCipher";
    }

    @Override // android.support.v4.z3
    /* renamed from: import */
    public int mo10048import(int i) {
        return 0;
    }

    @Override // android.support.v4.z3
    /* renamed from: native */
    public int mo10049native(int i) {
        return 0;
    }

    @Override // android.support.v4.z3, android.support.v4.ul
    /* renamed from: new */
    public byte[] mo8489new(byte[] bArr, int i, int i2) throws BadPaddingException {
        mo8494while(bArr, i, i2);
        int i3 = this.f6923do;
        if (i3 == 1) {
            return this.f32546case.messageEncrypt(m36090extends());
        }
        if (i3 != 2) {
            throw new IllegalStateException("unknown mode in doFinal");
        }
        try {
            byte[] byteArray = this.f32547else.toByteArray();
            this.f32547else.reset();
            return m36091finally(this.f32546case.messageDecrypt(byteArray));
        } catch (tn0 e) {
            throw new BadPaddingException(e.getMessage());
        }
    }

    @Override // android.support.v4.z3
    /* renamed from: public */
    public void mo10050public(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f32547else.reset();
        a4 a4VarM36101do = org.bouncycastle.pqc.jcajce.provider.mceliece.Ctry.m36101do((PrivateKey) key);
        this.f32548try.reset();
        this.f32546case.init(false, a4VarM36101do);
    }

    @Override // android.support.v4.z3
    /* renamed from: return */
    public void mo10051return(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f32547else.reset();
        cc1 cc1Var = new cc1(org.bouncycastle.pqc.jcajce.provider.mceliece.Ctry.m36102if((PublicKey) key), secureRandom);
        this.f32548try.reset();
        this.f32546case.init(true, cc1Var);
    }

    @Override // android.support.v4.z3, android.support.v4.ul
    /* renamed from: while */
    public byte[] mo8494while(byte[] bArr, int i, int i2) {
        this.f32547else.write(bArr, i, i2);
        return new byte[0];
    }
}
