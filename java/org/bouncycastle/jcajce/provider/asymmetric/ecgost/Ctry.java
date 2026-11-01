package org.bouncycastle.jcajce.provider.asymmetric.ecgost;

import android.support.v4.b50;
import android.support.v4.d50;
import android.support.v4.e40;
import android.support.v4.h50;
import android.support.v4.j40;
import android.support.v4.k50;
import android.support.v4.l40;
import android.support.v4.q40;
import android.support.v4.r40;
import android.support.v4.t30;
import android.support.v4.w40;
import android.support.v4.xf0;
import android.support.v4.y3;
import android.support.v4.y40;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import org.bouncycastle.jcajce.provider.config.ProviderConfiguration;
import org.bouncycastle.jce.provider.Cdo;
import org.bouncycastle.math.ec.Cif;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ecgost.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry extends KeyPairGenerator {

    /* renamed from: case, reason: not valid java name */
    public SecureRandom f31118case;

    /* renamed from: do, reason: not valid java name */
    public Object f31119do;

    /* renamed from: else, reason: not valid java name */
    public boolean f31120else;

    /* renamed from: for, reason: not valid java name */
    public String f31121for;

    /* renamed from: if, reason: not valid java name */
    public r40 f31122if;

    /* renamed from: new, reason: not valid java name */
    public q40 f31123new;

    /* renamed from: try, reason: not valid java name */
    public int f31124try;

    public Ctry() {
        super("ECGOST3410");
        this.f31119do = null;
        this.f31122if = new r40();
        this.f31121for = "ECGOST3410";
        this.f31124try = 239;
        this.f31118case = null;
        this.f31120else = false;
    }

    /* renamed from: do, reason: not valid java name */
    private void m34683do(xf0 xf0Var, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        e40 e40VarM3720if = j40.m3720if(xf0Var.m9494try());
        if (e40VarM3720if == null) {
            throw new InvalidAlgorithmParameterException("unknown curve: " + xf0Var.m9494try());
        }
        this.f31119do = new y40(j40.m3719for(xf0Var.m9494try()), e40VarM3720if.m1646do(), e40VarM3720if.m1648if(), e40VarM3720if.m1650try(), e40VarM3720if.m1647for(), e40VarM3720if.m1645case());
        q40 q40Var = new q40(new l40(new b50(xf0Var.m9494try(), e40VarM3720if), xf0Var.m9494try(), xf0Var.m9493if(), xf0Var.m9492for()), secureRandom);
        this.f31123new = q40Var;
        this.f31122if.init(q40Var);
        this.f31120else = true;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        if (!this.f31120else) {
            throw new IllegalStateException("EC Key Pair Generator not initialised");
        }
        y3 y3VarGenerateKeyPair = this.f31122if.generateKeyPair();
        k50 k50Var = (k50) y3VarGenerateKeyPair.m9727if();
        h50 h50Var = (h50) y3VarGenerateKeyPair.m9726do();
        Object obj = this.f31119do;
        if (obj instanceof d50) {
            d50 d50Var = (d50) obj;
            Cif cif = new Cif(this.f31121for, k50Var, d50Var);
            return new KeyPair(cif, new Cdo(this.f31121for, h50Var, cif, d50Var));
        }
        if (obj == null) {
            return new KeyPair(new Cif(this.f31121for, k50Var), new Cdo(this.f31121for, h50Var));
        }
        ECParameterSpec eCParameterSpec = (ECParameterSpec) obj;
        Cif cif2 = new Cif(this.f31121for, k50Var, eCParameterSpec);
        return new KeyPair(cif2, new Cdo(this.f31121for, h50Var, cif2, eCParameterSpec));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        this.f31124try = i;
        this.f31118case = secureRandom;
        Object obj = this.f31119do;
        if (obj == null) {
            throw new InvalidParameterException("unknown key size.");
        }
        try {
            initialize((ECGenParameterSpec) obj, secureRandom);
        } catch (InvalidAlgorithmParameterException unused) {
            throw new InvalidParameterException("key size not configurable.");
        }
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        q40 q40Var;
        if (algorithmParameterSpec instanceof xf0) {
            m34683do((xf0) algorithmParameterSpec, secureRandom);
            return;
        }
        if (!(algorithmParameterSpec instanceof d50)) {
            if (algorithmParameterSpec instanceof ECParameterSpec) {
                ECParameterSpec eCParameterSpec = (ECParameterSpec) algorithmParameterSpec;
                this.f31119do = algorithmParameterSpec;
                Cif cifM7705if = t30.m7705if(eCParameterSpec.getCurve());
                q40 q40Var2 = new q40(new e40(cifM7705if, t30.m7697case(cifM7705if, eCParameterSpec.getGenerator(), false), eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor())), secureRandom);
                this.f31123new = q40Var2;
                this.f31122if.init(q40Var2);
                this.f31120else = true;
            }
            boolean z = algorithmParameterSpec instanceof ECGenParameterSpec;
            if (z || (algorithmParameterSpec instanceof w40)) {
                m34683do(new xf0(z ? ((ECGenParameterSpec) algorithmParameterSpec).getName() : ((w40) algorithmParameterSpec).m9047do()), secureRandom);
                return;
            }
            if (algorithmParameterSpec == null) {
                ProviderConfiguration providerConfiguration = Cdo.CONFIGURATION;
                if (providerConfiguration.getEcImplicitlyCa() != null) {
                    d50 ecImplicitlyCa = providerConfiguration.getEcImplicitlyCa();
                    this.f31119do = algorithmParameterSpec;
                    q40Var = new q40(new e40(ecImplicitlyCa.m1142do(), ecImplicitlyCa.m1144if(), ecImplicitlyCa.m1145new(), ecImplicitlyCa.m1143for()), secureRandom);
                }
            }
            if (algorithmParameterSpec == null && Cdo.CONFIGURATION.getEcImplicitlyCa() == null) {
                throw new InvalidAlgorithmParameterException("null parameter passed but no implicitCA set");
            }
            throw new InvalidAlgorithmParameterException("parameter object not a ECParameterSpec: " + algorithmParameterSpec.getClass().getName());
        }
        d50 d50Var = (d50) algorithmParameterSpec;
        this.f31119do = algorithmParameterSpec;
        q40Var = new q40(new e40(d50Var.m1142do(), d50Var.m1144if(), d50Var.m1145new(), d50Var.m1143for()), secureRandom);
        this.f31123new = q40Var;
        this.f31122if.init(q40Var);
        this.f31120else = true;
    }
}
