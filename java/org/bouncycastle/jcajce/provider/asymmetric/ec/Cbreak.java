package org.bouncycastle.jcajce.provider.asymmetric.ec;

import android.support.v4.a50;
import android.support.v4.d50;
import android.support.v4.e40;
import android.support.v4.h50;
import android.support.v4.hn0;
import android.support.v4.k50;
import android.support.v4.q40;
import android.support.v4.r40;
import android.support.v4.t30;
import android.support.v4.th2;
import android.support.v4.w40;
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
import java.util.Hashtable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.jcajce.provider.config.ProviderConfiguration;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.break, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cbreak extends KeyPairGenerator {

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.break$do, reason: invalid class name */
    public static class Cdo extends Cbreak {

        /* renamed from: this, reason: not valid java name */
        private static Hashtable f31052this;

        /* renamed from: case, reason: not valid java name */
        public boolean f31053case;

        /* renamed from: do, reason: not valid java name */
        public q40 f31054do;

        /* renamed from: else, reason: not valid java name */
        public String f31055else;

        /* renamed from: for, reason: not valid java name */
        public Object f31056for;

        /* renamed from: goto, reason: not valid java name */
        public ProviderConfiguration f31057goto;

        /* renamed from: if, reason: not valid java name */
        public r40 f31058if;

        /* renamed from: new, reason: not valid java name */
        public int f31059new;

        /* renamed from: try, reason: not valid java name */
        public SecureRandom f31060try;

        static {
            Hashtable hashtable = new Hashtable();
            f31052this = hashtable;
            hashtable.put(hn0.m3072for(192), new ECGenParameterSpec("prime192v1"));
            f31052this.put(hn0.m3072for(239), new ECGenParameterSpec("prime239v1"));
            f31052this.put(hn0.m3072for(256), new ECGenParameterSpec("prime256v1"));
            f31052this.put(hn0.m3072for(224), new ECGenParameterSpec("P-224"));
            f31052this.put(hn0.m3072for(384), new ECGenParameterSpec("P-384"));
            f31052this.put(hn0.m3072for(521), new ECGenParameterSpec("P-521"));
        }

        public Cdo() {
            super("EC");
            this.f31058if = new r40();
            this.f31056for = null;
            this.f31059new = 239;
            this.f31060try = org.bouncycastle.crypto.Cfor.m33599case();
            this.f31053case = false;
            this.f31055else = "EC";
            this.f31057goto = org.bouncycastle.jce.provider.Cdo.CONFIGURATION;
        }

        public Cdo(String str, ProviderConfiguration providerConfiguration) {
            super(str);
            this.f31058if = new r40();
            this.f31056for = null;
            this.f31059new = 239;
            this.f31060try = org.bouncycastle.crypto.Cfor.m33599case();
            this.f31053case = false;
            this.f31055else = str;
            this.f31057goto = providerConfiguration;
        }

        /* renamed from: do, reason: not valid java name */
        public q40 m34654do(d50 d50Var, SecureRandom secureRandom) {
            return new q40(new e40(d50Var.m1142do(), d50Var.m1144if(), d50Var.m1145new(), d50Var.m1143for()), secureRandom);
        }

        /* renamed from: for, reason: not valid java name */
        public y40 m34655for(String str) throws InvalidAlgorithmParameterException {
            th2 th2VarM34670new = org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34670new(str);
            if (th2VarM34670new == null) {
                try {
                    th2VarM34670new = a50.m47new(new Ccatch(str));
                    if (th2VarM34670new == null && (th2VarM34670new = (th2) this.f31057goto.getAdditionalECParameters().get(new Ccatch(str))) == null) {
                        throw new InvalidAlgorithmParameterException("unknown curve OID: " + str);
                    }
                } catch (IllegalArgumentException unused) {
                    throw new InvalidAlgorithmParameterException("unknown curve name: " + str);
                }
            }
            return new y40(str, th2VarM34670new.m7909try(), th2VarM34670new.m7906goto(), th2VarM34670new.m7903catch(), th2VarM34670new.m7908this(), null);
        }

        @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
        public KeyPair generateKeyPair() {
            if (!this.f31053case) {
                initialize(this.f31059new, new SecureRandom());
            }
            y3 y3VarGenerateKeyPair = this.f31058if.generateKeyPair();
            k50 k50Var = (k50) y3VarGenerateKeyPair.m9727if();
            h50 h50Var = (h50) y3VarGenerateKeyPair.m9726do();
            Object obj = this.f31056for;
            if (obj instanceof d50) {
                d50 d50Var = (d50) obj;
                org.bouncycastle.jcajce.provider.asymmetric.ec.Cfor cfor = new org.bouncycastle.jcajce.provider.asymmetric.ec.Cfor(this.f31055else, k50Var, d50Var, this.f31057goto);
                return new KeyPair(cfor, new org.bouncycastle.jcajce.provider.asymmetric.ec.Cif(this.f31055else, h50Var, cfor, d50Var, this.f31057goto));
            }
            if (obj == null) {
                return new KeyPair(new org.bouncycastle.jcajce.provider.asymmetric.ec.Cfor(this.f31055else, k50Var, this.f31057goto), new org.bouncycastle.jcajce.provider.asymmetric.ec.Cif(this.f31055else, h50Var, this.f31057goto));
            }
            ECParameterSpec eCParameterSpec = (ECParameterSpec) obj;
            org.bouncycastle.jcajce.provider.asymmetric.ec.Cfor cfor2 = new org.bouncycastle.jcajce.provider.asymmetric.ec.Cfor(this.f31055else, k50Var, eCParameterSpec, this.f31057goto);
            return new KeyPair(cfor2, new org.bouncycastle.jcajce.provider.asymmetric.ec.Cif(this.f31055else, h50Var, cfor2, eCParameterSpec, this.f31057goto));
        }

        /* renamed from: if, reason: not valid java name */
        public q40 m34656if(ECParameterSpec eCParameterSpec, SecureRandom secureRandom) {
            org.bouncycastle.math.ec.Cif cifM7705if = t30.m7705if(eCParameterSpec.getCurve());
            return new q40(new e40(cifM7705if, t30.m7697case(cifM7705if, eCParameterSpec.getGenerator(), false), eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor())), secureRandom);
        }

        @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
        public void initialize(int i, SecureRandom secureRandom) {
            this.f31059new = i;
            this.f31060try = secureRandom;
            ECGenParameterSpec eCGenParameterSpec = (ECGenParameterSpec) f31052this.get(hn0.m3072for(i));
            if (eCGenParameterSpec == null) {
                throw new InvalidParameterException("unknown key size.");
            }
            try {
                initialize(eCGenParameterSpec, secureRandom);
            } catch (InvalidAlgorithmParameterException unused) {
                throw new InvalidParameterException("key size not configurable.");
            }
        }

        @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
        public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            String strM9047do;
            q40 q40VarM34656if;
            d50 ecImplicitlyCa;
            if (algorithmParameterSpec == null) {
                ecImplicitlyCa = this.f31057goto.getEcImplicitlyCa();
                if (ecImplicitlyCa == null) {
                    throw new InvalidAlgorithmParameterException("null parameter passed but no implicitCA set");
                }
                this.f31056for = null;
            } else {
                if (!(algorithmParameterSpec instanceof d50)) {
                    if (algorithmParameterSpec instanceof ECParameterSpec) {
                        this.f31056for = algorithmParameterSpec;
                        q40VarM34656if = m34656if((ECParameterSpec) algorithmParameterSpec, secureRandom);
                        this.f31054do = q40VarM34656if;
                        this.f31058if.init(this.f31054do);
                        this.f31053case = true;
                    }
                    if (algorithmParameterSpec instanceof ECGenParameterSpec) {
                        strM9047do = ((ECGenParameterSpec) algorithmParameterSpec).getName();
                    } else {
                        if (!(algorithmParameterSpec instanceof w40)) {
                            throw new InvalidAlgorithmParameterException("parameter object not a ECParameterSpec");
                        }
                        strM9047do = ((w40) algorithmParameterSpec).m9047do();
                    }
                    m34657new(strM9047do, secureRandom);
                    this.f31058if.init(this.f31054do);
                    this.f31053case = true;
                }
                this.f31056for = algorithmParameterSpec;
                ecImplicitlyCa = (d50) algorithmParameterSpec;
            }
            q40VarM34656if = m34654do(ecImplicitlyCa, secureRandom);
            this.f31054do = q40VarM34656if;
            this.f31058if.init(this.f31054do);
            this.f31053case = true;
        }

        /* renamed from: new, reason: not valid java name */
        public void m34657new(String str, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            y40 y40VarM34655for = m34655for(str);
            this.f31056for = y40VarM34655for;
            this.f31054do = m34656if(y40VarM34655for, secureRandom);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.break$for, reason: invalid class name */
    public static class Cfor extends Cdo {
        public Cfor() {
            super("ECDHC", org.bouncycastle.jce.provider.Cdo.CONFIGURATION);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.break$if, reason: invalid class name */
    public static class Cif extends Cdo {
        public Cif() {
            super("ECDH", org.bouncycastle.jce.provider.Cdo.CONFIGURATION);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.break$new, reason: invalid class name */
    public static class Cnew extends Cdo {
        public Cnew() {
            super("ECDSA", org.bouncycastle.jce.provider.Cdo.CONFIGURATION);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.break$try, reason: invalid class name */
    public static class Ctry extends Cdo {
        public Ctry() {
            super("ECMQV", org.bouncycastle.jce.provider.Cdo.CONFIGURATION);
        }
    }

    public Cbreak(String str) {
        super(str);
    }
}
