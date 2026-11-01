package org.bouncycastle.jcajce.provider.symmetric.util;

import android.support.v4.dr0;
import android.support.v4.rl;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends KeyGeneratorSpi {

    /* renamed from: do, reason: not valid java name */
    public String f31513do;

    /* renamed from: for, reason: not valid java name */
    public int f31514for;

    /* renamed from: if, reason: not valid java name */
    public int f31515if;

    /* renamed from: new, reason: not valid java name */
    public rl f31516new;

    /* renamed from: try, reason: not valid java name */
    public boolean f31517try = true;

    public Cfor(String str, int i, rl rlVar) {
        this.f31513do = str;
        this.f31514for = i;
        this.f31515if = i;
        this.f31516new = rlVar;
    }

    @Override // javax.crypto.KeyGeneratorSpi
    public SecretKey engineGenerateKey() {
        if (this.f31517try) {
            this.f31516new.mo4915if(new dr0(org.bouncycastle.crypto.Cfor.m33599case(), this.f31514for));
            this.f31517try = false;
        }
        return new SecretKeySpec(this.f31516new.mo4914do(), this.f31513do);
    }

    @Override // javax.crypto.KeyGeneratorSpi
    public void engineInit(int i, SecureRandom secureRandom) {
        if (secureRandom == null) {
            try {
                secureRandom = org.bouncycastle.crypto.Cfor.m33599case();
            } catch (IllegalArgumentException e) {
                throw new InvalidParameterException(e.getMessage());
            }
        }
        this.f31516new.mo4915if(new dr0(secureRandom, i));
        this.f31517try = false;
    }

    @Override // javax.crypto.KeyGeneratorSpi
    public void engineInit(SecureRandom secureRandom) {
        if (secureRandom != null) {
            this.f31516new.mo4915if(new dr0(secureRandom, this.f31514for));
            this.f31517try = false;
        }
    }

    @Override // javax.crypto.KeyGeneratorSpi
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("Not Implemented");
    }
}
