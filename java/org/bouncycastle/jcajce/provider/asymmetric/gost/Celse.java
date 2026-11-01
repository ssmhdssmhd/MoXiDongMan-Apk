package org.bouncycastle.jcajce.provider.asymmetric.gost;

import android.support.v4.ag0;
import android.support.v4.dg0;
import android.support.v4.eg0;
import android.support.v4.rf0;
import android.support.v4.sf0;
import android.support.v4.wf0;
import android.support.v4.y3;
import android.support.v4.yf0;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.crypto.Cfor;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.gost.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends KeyPairGenerator {

    /* renamed from: case, reason: not valid java name */
    public boolean f31186case;

    /* renamed from: do, reason: not valid java name */
    public rf0 f31187do;

    /* renamed from: for, reason: not valid java name */
    public wf0 f31188for;

    /* renamed from: if, reason: not valid java name */
    public sf0 f31189if;

    /* renamed from: new, reason: not valid java name */
    public int f31190new;

    /* renamed from: try, reason: not valid java name */
    public SecureRandom f31191try;

    public Celse() {
        super("GOST3410");
        this.f31189if = new sf0();
        this.f31190new = 1024;
        this.f31191try = null;
        this.f31186case = false;
    }

    /* renamed from: do, reason: not valid java name */
    private void m34709do(wf0 wf0Var, SecureRandom secureRandom) {
        dg0 publicKeyParameters = wf0Var.getPublicKeyParameters();
        rf0 rf0Var = new rf0(secureRandom, new yf0(publicKeyParameters.m1336if(), publicKeyParameters.m1335for(), publicKeyParameters.m1334do()));
        this.f31187do = rf0Var;
        this.f31189if.init(rf0Var);
        this.f31186case = true;
        this.f31188for = wf0Var;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        if (!this.f31186case) {
            m34709do(new wf0(CryptoProObjectIdentifiers.gostR3410_94_CryptoPro_A.m32795super()), Cfor.m33599case());
        }
        y3 y3VarGenerateKeyPair = this.f31189if.generateKeyPair();
        return new KeyPair(new Cnew((eg0) y3VarGenerateKeyPair.m9727if(), this.f31188for), new Cfor((ag0) y3VarGenerateKeyPair.m9726do(), this.f31188for));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        this.f31190new = i;
        this.f31191try = secureRandom;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof wf0)) {
            throw new InvalidAlgorithmParameterException("parameter object not a GOST3410ParameterSpec");
        }
        m34709do((wf0) algorithmParameterSpec, secureRandom);
    }
}
