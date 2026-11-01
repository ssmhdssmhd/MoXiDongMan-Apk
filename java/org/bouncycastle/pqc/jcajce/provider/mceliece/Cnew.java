package org.bouncycastle.pqc.jcajce.provider.mceliece;

import android.support.v4.qy0;
import android.support.v4.ry0;
import android.support.v4.sy0;
import android.support.v4.uy0;
import android.support.v4.xy0;
import android.support.v4.y3;
import android.support.v4.zy0;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.crypto.Cfor;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends KeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    private sy0 f32559do;

    public Cnew() {
        super("McEliece-CCA2");
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        y3 y3VarGenerateKeyPair = this.f32559do.generateKeyPair();
        return new KeyPair(new Cif((zy0) y3VarGenerateKeyPair.m9727if()), new Cdo((xy0) y3VarGenerateKeyPair.m9726do()));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        this.f32559do = new sy0();
        this.f32559do.init(new ry0(secureRandom, new uy0()));
    }

    @Override // java.security.KeyPairGenerator
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
        this.f32559do = new sy0();
        qy0 qy0Var = (qy0) algorithmParameterSpec;
        this.f32559do.init(new ry0(Cfor.m33599case(), new uy0(qy0Var.m6685for(), qy0Var.m6688try(), qy0Var.m6684do())));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        this.f32559do = new sy0();
        qy0 qy0Var = (qy0) algorithmParameterSpec;
        this.f32559do.init(new ry0(secureRandom, new uy0(qy0Var.m6685for(), qy0Var.m6688try(), qy0Var.m6684do())));
    }
}
