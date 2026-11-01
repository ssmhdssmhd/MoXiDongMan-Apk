package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import android.support.v4.ak1;
import android.support.v4.bk1;
import android.support.v4.ck1;
import android.support.v4.dk1;
import android.support.v4.ff1;
import android.support.v4.y3;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.RSAKeyGenParameterSpec;
import org.bouncycastle.crypto.Cfor;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis extends KeyPairGenerator {

    /* renamed from: for, reason: not valid java name */
    public static final BigInteger f31227for = BigInteger.valueOf(65537);

    /* renamed from: do, reason: not valid java name */
    public ak1 f31228do;

    /* renamed from: if, reason: not valid java name */
    public bk1 f31229if;

    public Cthis() {
        super("RSA");
        this.f31229if = new bk1();
        ak1 ak1Var = new ak1(f31227for, Cfor.m33599case(), 2048, ff1.m2267do(2048));
        this.f31228do = ak1Var;
        this.f31229if.init(ak1Var);
    }

    public Cthis(String str) {
        super(str);
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() throws IllegalArgumentException {
        y3 y3VarGenerateKeyPair = this.f31229if.generateKeyPair();
        return new KeyPair(new Cnew((ck1) y3VarGenerateKeyPair.m9727if()), new Cif((dk1) y3VarGenerateKeyPair.m9726do()));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        ak1 ak1Var = new ak1(f31227for, secureRandom, i, ff1.m2267do(i));
        this.f31228do = ak1Var;
        this.f31229if.init(ak1Var);
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof RSAKeyGenParameterSpec)) {
            throw new InvalidAlgorithmParameterException("parameter object not a RSAKeyGenParameterSpec");
        }
        RSAKeyGenParameterSpec rSAKeyGenParameterSpec = (RSAKeyGenParameterSpec) algorithmParameterSpec;
        ak1 ak1Var = new ak1(rSAKeyGenParameterSpec.getPublicExponent(), secureRandom, rSAKeyGenParameterSpec.getKeysize(), ff1.m2267do(2048));
        this.f31228do = ak1Var;
        this.f31229if.init(ak1Var);
    }
}
