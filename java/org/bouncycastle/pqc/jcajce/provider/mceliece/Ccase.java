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
import org.bouncycastle.pqc.crypto.mceliece.Cnew;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends z3 implements PKCSObjectIdentifiers, X509ObjectIdentifiers {

    /* renamed from: case, reason: not valid java name */
    private Cnew f32549case;

    /* renamed from: else, reason: not valid java name */
    private ByteArrayOutputStream f32550else = new ByteArrayOutputStream();

    /* renamed from: try, reason: not valid java name */
    private Digest f32551try;

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.case$do, reason: invalid class name */
    public static class Cdo extends Ccase {
        public Cdo() {
            super(u00.m8176if(), new Cnew());
        }
    }

    public Ccase(Digest digest, Cnew cnew) {
        this.f32551try = digest;
        this.f32549case = cnew;
    }

    @Override // android.support.v4.ul
    /* renamed from: else */
    public int mo8484else(Key key) throws InvalidKeyException {
        return this.f32549case.m35634do((ty0) (key instanceof PublicKey ? Ctry.m36102if((PublicKey) key) : Ctry.m36101do((PrivateKey) key)));
    }

    @Override // android.support.v4.ul
    /* renamed from: goto */
    public String mo8487goto() {
        return "McElieceFujisakiCipher";
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
        byte[] byteArray = this.f32550else.toByteArray();
        this.f32550else.reset();
        int i3 = this.f6923do;
        if (i3 == 1) {
            return this.f32549case.messageEncrypt(byteArray);
        }
        if (i3 != 2) {
            throw new IllegalStateException("unknown mode in doFinal");
        }
        try {
            return this.f32549case.messageDecrypt(byteArray);
        } catch (tn0 e) {
            throw new BadPaddingException(e.getMessage());
        }
    }

    @Override // android.support.v4.z3
    /* renamed from: public */
    public void mo10050public(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        a4 a4VarM36101do = Ctry.m36101do((PrivateKey) key);
        this.f32551try.reset();
        this.f32549case.init(false, a4VarM36101do);
    }

    @Override // android.support.v4.z3
    /* renamed from: return */
    public void mo10051return(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        cc1 cc1Var = new cc1(Ctry.m36102if((PublicKey) key), secureRandom);
        this.f32551try.reset();
        this.f32549case.init(true, cc1Var);
    }

    @Override // android.support.v4.z3, android.support.v4.ul
    /* renamed from: while */
    public byte[] mo8494while(byte[] bArr, int i, int i2) {
        this.f32550else.write(bArr, i, i2);
        return new byte[0];
    }
}
