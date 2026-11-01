package org.bouncycastle.jce;

import android.support.v4.b1;
import android.support.v4.rh2;
import android.support.v4.th2;
import java.io.UnsupportedEncodingException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Security;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jcajce.provider.config.ProviderConfiguration;

/* renamed from: org.bouncycastle.jce.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: org.bouncycastle.jce.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0454do extends RuntimeException {
        private Throwable cause;

        public C0454do(Throwable th) {
            super(th.toString());
            this.cause = th;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            return this.cause;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static PrivateKey m34929do(PrivateKey privateKey, String str) throws NoSuchAlgorithmException, IllegalArgumentException, NoSuchProviderException {
        Provider provider = Security.getProvider(str);
        if (provider != null) {
            return m34931if(privateKey, provider);
        }
        throw new NoSuchProviderException("cannot find provider: " + str);
    }

    /* renamed from: for, reason: not valid java name */
    public static PublicKey m34930for(PublicKey publicKey, String str) throws NoSuchAlgorithmException, IllegalArgumentException, NoSuchProviderException {
        Provider provider = Security.getProvider(str);
        if (provider != null) {
            return m34932new(publicKey, provider);
        }
        throw new NoSuchProviderException("cannot find provider: " + str);
    }

    /* renamed from: if, reason: not valid java name */
    public static PrivateKey m34931if(PrivateKey privateKey, Provider provider) throws NoSuchAlgorithmException, IllegalArgumentException, UnsupportedEncodingException {
        th2 th2Var;
        try {
            org.bouncycastle.asn1.pkcs.Cdo cdoM33100try = org.bouncycastle.asn1.pkcs.Cdo.m33100try(Cfinal.m33015else(privateKey.getEncoded()));
            if (cdoM33100try.m33104else().m420new().equals(CryptoProObjectIdentifiers.gostR3410_2001)) {
                throw new UnsupportedEncodingException("cannot convert GOST key to explicit parameters.");
            }
            rh2 rh2VarM6988new = rh2.m6988new(cdoM33100try.m33104else().m419else());
            if (rh2VarM6988new.m6992goto()) {
                th2 th2VarM34729break = Celse.m34729break(Ccatch.m32790throw(rh2VarM6988new.m6990case()));
                th2Var = new th2(th2VarM34729break.m7909try(), th2VarM34729break.m7906goto(), th2VarM34729break.m7903catch(), th2VarM34729break.m7908this());
            } else {
                if (!rh2VarM6988new.m6991else()) {
                    return privateKey;
                }
                ProviderConfiguration providerConfiguration = org.bouncycastle.jce.provider.Cdo.CONFIGURATION;
                th2Var = new th2(providerConfiguration.getEcImplicitlyCa().m1142do(), providerConfiguration.getEcImplicitlyCa().m1144if(), providerConfiguration.getEcImplicitlyCa().m1145new(), providerConfiguration.getEcImplicitlyCa().m1143for());
            }
            return KeyFactory.getInstance(privateKey.getAlgorithm(), provider).generatePrivate(new PKCS8EncodedKeySpec(new org.bouncycastle.asn1.pkcs.Cdo(new b1(X9ObjectIdentifiers.id_ecPublicKey, new rh2(th2Var)), cdoM33100try.m33102catch()).getEncoded()));
        } catch (IllegalArgumentException e) {
            throw e;
        } catch (NoSuchAlgorithmException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new C0454do(e3);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static PublicKey m34932new(PublicKey publicKey, Provider provider) throws NoSuchAlgorithmException, IllegalArgumentException {
        th2 th2Var;
        try {
            Ctry ctryM33291case = Ctry.m33291case(Cfinal.m33015else(publicKey.getEncoded()));
            if (ctryM33291case.m33295new().m420new().equals(CryptoProObjectIdentifiers.gostR3410_2001)) {
                throw new IllegalArgumentException("cannot convert GOST key to explicit parameters.");
            }
            rh2 rh2VarM6988new = rh2.m6988new(ctryM33291case.m33295new().m419else());
            if (rh2VarM6988new.m6992goto()) {
                th2 th2VarM34729break = Celse.m34729break(Ccatch.m32790throw(rh2VarM6988new.m6990case()));
                th2Var = new th2(th2VarM34729break.m7909try(), th2VarM34729break.m7906goto(), th2VarM34729break.m7903catch(), th2VarM34729break.m7908this());
            } else {
                if (!rh2VarM6988new.m6991else()) {
                    return publicKey;
                }
                ProviderConfiguration providerConfiguration = org.bouncycastle.jce.provider.Cdo.CONFIGURATION;
                th2Var = new th2(providerConfiguration.getEcImplicitlyCa().m1142do(), providerConfiguration.getEcImplicitlyCa().m1144if(), providerConfiguration.getEcImplicitlyCa().m1145new(), providerConfiguration.getEcImplicitlyCa().m1143for());
            }
            return KeyFactory.getInstance(publicKey.getAlgorithm(), provider).generatePublic(new X509EncodedKeySpec(new Ctry(new b1(X9ObjectIdentifiers.id_ecPublicKey, new rh2(th2Var)), ctryM33291case.m33296this().m33057const()).getEncoded()));
        } catch (IllegalArgumentException e) {
            throw e;
        } catch (NoSuchAlgorithmException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new C0454do(e3);
        }
    }
}
