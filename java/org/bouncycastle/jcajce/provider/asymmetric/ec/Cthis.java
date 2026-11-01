package org.bouncycastle.jcajce.provider.asymmetric.ec;

import android.support.v4.a4;
import android.support.v4.b1;
import android.support.v4.d50;
import android.support.v4.e40;
import android.support.v4.g50;
import android.support.v4.i50;
import android.support.v4.k50;
import android.support.v4.l50;
import android.support.v4.t30;
import android.support.v4.t71;
import android.support.v4.u71;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPrivateKeySpec;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ProviderConfiguration;
import org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis extends org.bouncycastle.jcajce.provider.asymmetric.util.Cnew implements AsymmetricKeyInfoConverter {

    /* renamed from: do, reason: not valid java name */
    public String f31095do;

    /* renamed from: if, reason: not valid java name */
    public ProviderConfiguration f31096if;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.this$case, reason: invalid class name */
    public static class Ccase extends Cthis {
        public Ccase() {
            super("ECGOST3410-2012", org.bouncycastle.jce.provider.Cdo.CONFIGURATION);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.this$do, reason: invalid class name */
    public static class Cdo extends Cthis {
        public Cdo() {
            super("EC", org.bouncycastle.jce.provider.Cdo.CONFIGURATION);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.this$else, reason: invalid class name */
    public static class Celse extends Cthis {
        public Celse() {
            super("ECMQV", org.bouncycastle.jce.provider.Cdo.CONFIGURATION);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.this$for, reason: invalid class name */
    public static class Cfor extends Cthis {
        public Cfor() {
            super("ECDHC", org.bouncycastle.jce.provider.Cdo.CONFIGURATION);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.this$if, reason: invalid class name */
    public static class Cif extends Cthis {
        public Cif() {
            super("ECDH", org.bouncycastle.jce.provider.Cdo.CONFIGURATION);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.this$new, reason: invalid class name */
    public static class Cnew extends Cthis {
        public Cnew() {
            super("ECDSA", org.bouncycastle.jce.provider.Cdo.CONFIGURATION);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.this$try, reason: invalid class name */
    public static class Ctry extends Cthis {
        public Ctry() {
            super("ECGOST3410", org.bouncycastle.jce.provider.Cdo.CONFIGURATION);
        }
    }

    public Cthis(String str, ProviderConfiguration providerConfiguration) {
        this.f31095do = str;
        this.f31096if = providerConfiguration;
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof i50) {
            return new org.bouncycastle.jcajce.provider.asymmetric.ec.Cif(this.f31095do, (i50) keySpec, this.f31096if);
        }
        if (keySpec instanceof ECPrivateKeySpec) {
            return new org.bouncycastle.jcajce.provider.asymmetric.ec.Cif(this.f31095do, (ECPrivateKeySpec) keySpec, this.f31096if);
        }
        if (!(keySpec instanceof t71)) {
            return super.engineGeneratePrivate(keySpec);
        }
        g50 g50VarM2577new = g50.m2577new(((t71) keySpec).getEncoded());
        try {
            return new org.bouncycastle.jcajce.provider.asymmetric.ec.Cif(this.f31095do, new org.bouncycastle.asn1.pkcs.Cdo(new b1(X9ObjectIdentifiers.id_ecPublicKey, g50VarM2577new.m2578else()), g50VarM2577new), this.f31096if);
        } catch (IOException e) {
            throw new InvalidKeySpecException("bad encoding: " + e.getMessage());
        }
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        try {
            if (keySpec instanceof l50) {
                return new org.bouncycastle.jcajce.provider.asymmetric.ec.Cfor(this.f31095do, (l50) keySpec, this.f31096if);
            }
            if (keySpec instanceof ECPublicKeySpec) {
                return new org.bouncycastle.jcajce.provider.asymmetric.ec.Cfor(this.f31095do, (ECPublicKeySpec) keySpec, this.f31096if);
            }
            if (!(keySpec instanceof u71)) {
                return super.engineGeneratePublic(keySpec);
            }
            a4 a4VarM34507for = org.bouncycastle.crypto.util.Cthis.m34507for(((u71) keySpec).getEncoded());
            if (!(a4VarM34507for instanceof k50)) {
                throw new IllegalArgumentException("openssh key is not ec public key");
            }
            e40 e40VarM7258if = ((k50) a4VarM34507for).m7258if();
            return engineGeneratePublic(new l50(((k50) a4VarM34507for).m4252for(), new d50(e40VarM7258if.m1646do(), e40VarM7258if.m1648if(), e40VarM7258if.m1650try(), e40VarM7258if.m1647for(), e40VarM7258if.m1645case())));
        } catch (Exception e) {
            throw new InvalidKeySpecException("invalid KeySpec: " + e.getMessage(), e);
        }
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (cls.isAssignableFrom(ECPublicKeySpec.class) && (key instanceof ECPublicKey)) {
            ECPublicKey eCPublicKey = (ECPublicKey) key;
            if (eCPublicKey.getParams() != null) {
                return new ECPublicKeySpec(eCPublicKey.getW(), eCPublicKey.getParams());
            }
            d50 ecImplicitlyCa = org.bouncycastle.jce.provider.Cdo.CONFIGURATION.getEcImplicitlyCa();
            return new ECPublicKeySpec(eCPublicKey.getW(), t30.m7704goto(t30.m7701do(ecImplicitlyCa.m1142do(), ecImplicitlyCa.m1146try()), ecImplicitlyCa));
        }
        if (cls.isAssignableFrom(ECPrivateKeySpec.class) && (key instanceof ECPrivateKey)) {
            ECPrivateKey eCPrivateKey = (ECPrivateKey) key;
            if (eCPrivateKey.getParams() != null) {
                return new ECPrivateKeySpec(eCPrivateKey.getS(), eCPrivateKey.getParams());
            }
            d50 ecImplicitlyCa2 = org.bouncycastle.jce.provider.Cdo.CONFIGURATION.getEcImplicitlyCa();
            return new ECPrivateKeySpec(eCPrivateKey.getS(), t30.m7704goto(t30.m7701do(ecImplicitlyCa2.m1142do(), ecImplicitlyCa2.m1146try()), ecImplicitlyCa2));
        }
        if (cls.isAssignableFrom(l50.class) && (key instanceof ECPublicKey)) {
            ECPublicKey eCPublicKey2 = (ECPublicKey) key;
            if (eCPublicKey2.getParams() != null) {
                return new l50(t30.m7708try(eCPublicKey2.getParams(), eCPublicKey2.getW(), false), t30.m7702else(eCPublicKey2.getParams(), false));
            }
            return new l50(t30.m7708try(eCPublicKey2.getParams(), eCPublicKey2.getW(), false), org.bouncycastle.jce.provider.Cdo.CONFIGURATION.getEcImplicitlyCa());
        }
        if (cls.isAssignableFrom(i50.class) && (key instanceof ECPrivateKey)) {
            ECPrivateKey eCPrivateKey2 = (ECPrivateKey) key;
            if (eCPrivateKey2.getParams() != null) {
                return new i50(eCPrivateKey2.getS(), t30.m7702else(eCPrivateKey2.getParams(), false));
            }
            return new i50(eCPrivateKey2.getS(), org.bouncycastle.jce.provider.Cdo.CONFIGURATION.getEcImplicitlyCa());
        }
        if (cls.isAssignableFrom(u71.class) && (key instanceof ECPublicKey)) {
            if (!(key instanceof org.bouncycastle.jcajce.provider.asymmetric.ec.Cfor)) {
                throw new IllegalArgumentException("invalid key type: " + key.getClass().getName());
            }
            org.bouncycastle.jcajce.provider.asymmetric.ec.Cfor cfor = (org.bouncycastle.jcajce.provider.asymmetric.ec.Cfor) key;
            d50 parameters = cfor.getParameters();
            try {
                return new u71(org.bouncycastle.crypto.util.Cthis.m34506do(new k50(cfor.getQ(), new e40(parameters.m1142do(), parameters.m1144if(), parameters.m1145new(), parameters.m1143for(), parameters.m1146try()))));
            } catch (IOException e) {
                throw new IllegalArgumentException("unable to produce encoding: " + e.getMessage());
            }
        }
        if (!cls.isAssignableFrom(t71.class) || !(key instanceof ECPrivateKey)) {
            return super.engineGetKeySpec(key, cls);
        }
        if (!(key instanceof org.bouncycastle.jcajce.provider.asymmetric.ec.Cif)) {
            throw new IllegalArgumentException("invalid key type: " + key.getClass().getName());
        }
        try {
            return new t71(org.bouncycastle.asn1.pkcs.Cdo.m33100try(key.getEncoded()).m33102catch().toASN1Primitive().getEncoded());
        } catch (IOException e2) {
            throw new IllegalArgumentException("cannot encoded key: " + e2.getMessage());
        }
    }

    @Override // java.security.KeyFactorySpi
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        if (key instanceof ECPublicKey) {
            return new org.bouncycastle.jcajce.provider.asymmetric.ec.Cfor((ECPublicKey) key, this.f31096if);
        }
        if (key instanceof ECPrivateKey) {
            return new org.bouncycastle.jcajce.provider.asymmetric.ec.Cif((ECPrivateKey) key, this.f31096if);
        }
        throw new InvalidKeyException("key type unknown");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PrivateKey generatePrivate(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        Ccatch ccatchM420new = cdo.m33104else().m420new();
        if (ccatchM420new.equals(X9ObjectIdentifiers.id_ecPublicKey)) {
            return new org.bouncycastle.jcajce.provider.asymmetric.ec.Cif(this.f31095do, cdo, this.f31096if);
        }
        throw new IOException("algorithm identifier " + ccatchM420new + " in key not recognised");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PublicKey generatePublic(org.bouncycastle.asn1.x509.Ctry ctry) throws IOException {
        Ccatch ccatchM420new = ctry.m33295new().m420new();
        if (ccatchM420new.equals(X9ObjectIdentifiers.id_ecPublicKey)) {
            return new org.bouncycastle.jcajce.provider.asymmetric.ec.Cfor(this.f31095do, ctry, this.f31096if);
        }
        throw new IOException("algorithm identifier " + ccatchM420new + " in key not recognised");
    }
}
