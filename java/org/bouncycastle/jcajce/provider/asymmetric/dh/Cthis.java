package org.bouncycastle.jcajce.provider.asymmetric.dh;

import android.support.v4.eu;
import android.support.v4.ff1;
import android.support.v4.hn0;
import android.support.v4.ju;
import android.support.v4.ou;
import android.support.v4.pu;
import android.support.v4.ru;
import android.support.v4.y3;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Hashtable;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.generators.Celse;
import org.bouncycastle.crypto.generators.Cnew;
import org.bouncycastle.jce.provider.Cdo;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis extends KeyPairGenerator {

    /* renamed from: case, reason: not valid java name */
    private static Hashtable f31024case = new Hashtable();

    /* renamed from: else, reason: not valid java name */
    private static Object f31025else = new Object();

    /* renamed from: do, reason: not valid java name */
    public ju f31026do;

    /* renamed from: for, reason: not valid java name */
    public int f31027for;

    /* renamed from: if, reason: not valid java name */
    public Cnew f31028if;

    /* renamed from: new, reason: not valid java name */
    public SecureRandom f31029new;

    /* renamed from: try, reason: not valid java name */
    public boolean f31030try;

    public Cthis() {
        super("DH");
        this.f31028if = new Cnew();
        this.f31027for = 2048;
        this.f31029new = Cfor.m33599case();
        this.f31030try = false;
    }

    /* renamed from: do, reason: not valid java name */
    private ju m34642do(SecureRandom secureRandom, DHParameterSpec dHParameterSpec) {
        return dHParameterSpec instanceof eu ? new ju(secureRandom, ((eu) dHParameterSpec).m2021do()) : new ju(secureRandom, new ou(dHParameterSpec.getP(), dHParameterSpec.getG(), null, dHParameterSpec.getL()));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        ju juVarM34642do;
        if (!this.f31030try) {
            Integer numM3072for = hn0.m3072for(this.f31027for);
            if (f31024case.containsKey(numM3072for)) {
                juVarM34642do = (ju) f31024case.get(numM3072for);
            } else {
                DHParameterSpec dHDefaultParameters = Cdo.CONFIGURATION.getDHDefaultParameters(this.f31027for);
                if (dHDefaultParameters != null) {
                    juVarM34642do = m34642do(this.f31029new, dHDefaultParameters);
                } else {
                    synchronized (f31025else) {
                        if (f31024case.containsKey(numM3072for)) {
                            this.f31026do = (ju) f31024case.get(numM3072for);
                        } else {
                            Celse celse = new Celse();
                            int i = this.f31027for;
                            celse.m33668if(i, ff1.m2267do(i), this.f31029new);
                            ju juVar = new ju(this.f31029new, celse.m33667do());
                            this.f31026do = juVar;
                            f31024case.put(numM3072for, juVar);
                        }
                    }
                    this.f31028if.init(this.f31026do);
                    this.f31030try = true;
                }
            }
            this.f31026do = juVarM34642do;
            this.f31028if.init(this.f31026do);
            this.f31030try = true;
        }
        y3 y3VarGenerateKeyPair = this.f31028if.generateKeyPair();
        return new KeyPair(new Cnew((ru) y3VarGenerateKeyPair.m9727if()), new Cfor((pu) y3VarGenerateKeyPair.m9726do()));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        this.f31027for = i;
        this.f31029new = secureRandom;
        this.f31030try = false;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof DHParameterSpec)) {
            throw new InvalidAlgorithmParameterException("parameter object not a DHParameterSpec");
        }
        try {
            ju juVarM34642do = m34642do(secureRandom, (DHParameterSpec) algorithmParameterSpec);
            this.f31026do = juVarM34642do;
            this.f31028if.init(juVarM34642do);
            this.f31030try = true;
        } catch (IllegalArgumentException e) {
            throw new InvalidAlgorithmParameterException(e.getMessage(), e);
        }
    }
}
