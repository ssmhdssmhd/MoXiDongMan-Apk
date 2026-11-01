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
import org.bouncycastle.pqc.crypto.mceliece.Ccase;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.class, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cclass extends z3 implements PKCSObjectIdentifiers, X509ObjectIdentifiers {

    /* renamed from: case, reason: not valid java name */
    private Ccase f32553case;

    /* renamed from: else, reason: not valid java name */
    private ByteArrayOutputStream f32554else;

    /* renamed from: try, reason: not valid java name */
    private Digest f32555try;

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.class$do, reason: invalid class name */
    public static class Cdo extends Cclass {
        public Cdo() {
            super(u00.m8174for(), new Ccase());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.class$for, reason: invalid class name */
    public static class Cfor extends Cclass {
        public Cfor() {
            super(u00.m8179try(), new Ccase());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.class$if, reason: invalid class name */
    public static class Cif extends Cclass {
        public Cif() {
            super(u00.m8177new(), new Ccase());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.class$new, reason: invalid class name */
    public static class Cnew extends Cclass {
        public Cnew() {
            super(u00.m8168break(), new Ccase());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.class$try, reason: invalid class name */
    public static class Ctry extends Cclass {
        public Ctry() {
            super(u00.m8176if(), new Ccase());
        }
    }

    public Cclass(Digest digest, Ccase ccase) {
        this.f32554else = new ByteArrayOutputStream();
        this.f32555try = digest;
        this.f32553case = ccase;
        this.f32554else = new ByteArrayOutputStream();
    }

    @Override // android.support.v4.ul
    /* renamed from: else */
    public int mo8484else(Key key) throws InvalidKeyException {
        return this.f32553case.m35619for((ty0) (key instanceof PublicKey ? org.bouncycastle.pqc.jcajce.provider.mceliece.Ctry.m36102if((PublicKey) key) : org.bouncycastle.pqc.jcajce.provider.mceliece.Ctry.m36101do((PrivateKey) key)));
    }

    @Override // android.support.v4.ul
    /* renamed from: goto */
    public String mo8487goto() {
        return "McEliecePointchevalCipher";
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
        byte[] byteArray = this.f32554else.toByteArray();
        this.f32554else.reset();
        int i3 = this.f6923do;
        if (i3 == 1) {
            return this.f32553case.messageEncrypt(byteArray);
        }
        if (i3 != 2) {
            return null;
        }
        try {
            return this.f32553case.messageDecrypt(byteArray);
        } catch (tn0 e) {
            throw new BadPaddingException(e.getMessage());
        }
    }

    @Override // android.support.v4.z3
    /* renamed from: public */
    public void mo10050public(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        a4 a4VarM36101do = org.bouncycastle.pqc.jcajce.provider.mceliece.Ctry.m36101do((PrivateKey) key);
        this.f32555try.reset();
        this.f32553case.init(false, a4VarM36101do);
    }

    @Override // android.support.v4.z3
    /* renamed from: return */
    public void mo10051return(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        cc1 cc1Var = new cc1(org.bouncycastle.pqc.jcajce.provider.mceliece.Ctry.m36102if((PublicKey) key), secureRandom);
        this.f32555try.reset();
        this.f32553case.init(true, cc1Var);
    }

    @Override // android.support.v4.z3, android.support.v4.ul
    /* renamed from: while */
    public byte[] mo8494while(byte[] bArr, int i, int i2) {
        this.f32554else.write(bArr, i, i2);
        return new byte[0];
    }
}
