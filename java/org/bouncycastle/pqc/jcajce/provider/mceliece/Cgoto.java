package org.bouncycastle.pqc.jcajce.provider.mceliece;

import android.support.v4.az0;
import android.support.v4.bz0;
import android.support.v4.cz0;
import android.support.v4.ez0;
import android.support.v4.gz0;
import android.support.v4.iz0;
import android.support.v4.y3;
import android.support.v4.y5;
import android.support.v4.z5;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto extends KeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    public cz0 f32558do;

    public Cgoto() {
        super("McEliece");
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        y3 y3VarGenerateKeyPair = this.f32558do.generateKeyPair();
        return new KeyPair(new z5((iz0) y3VarGenerateKeyPair.m9727if()), new y5((gz0) y3VarGenerateKeyPair.m9726do()));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        try {
            initialize(new az0(), secureRandom);
        } catch (InvalidAlgorithmParameterException unused) {
        }
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        this.f32558do = new cz0();
        az0 az0Var = (az0) algorithmParameterSpec;
        this.f32558do.init(new bz0(secureRandom, new ez0(az0Var.m412if(), az0Var.m413new())));
    }
}
