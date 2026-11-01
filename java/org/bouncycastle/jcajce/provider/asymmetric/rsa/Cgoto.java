package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import android.support.v4.a4;
import android.support.v4.ck1;
import android.support.v4.dk1;
import android.support.v4.ek1;
import android.support.v4.kk1;
import android.support.v4.t71;
import android.support.v4.t90;
import android.support.v4.u71;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.crypto.util.Cthis;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cnew;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto extends Cnew {
    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof PKCS8EncodedKeySpec) {
            try {
                return generatePrivate(Cdo.m33100try(((PKCS8EncodedKeySpec) keySpec).getEncoded()));
            } catch (Exception e) {
                try {
                    return new Cif(ek1.m1930else(((PKCS8EncodedKeySpec) keySpec).getEncoded()));
                } catch (Exception unused) {
                    throw new t90("unable to process key spec: " + e.toString(), e);
                }
            }
        }
        if (keySpec instanceof RSAPrivateCrtKeySpec) {
            return new Cif((RSAPrivateCrtKeySpec) keySpec);
        }
        if (keySpec instanceof RSAPrivateKeySpec) {
            return new Cfor((RSAPrivateKeySpec) keySpec);
        }
        if (keySpec instanceof t71) {
            a4 a4VarM34492for = org.bouncycastle.crypto.util.Cgoto.m34492for(((t71) keySpec).getEncoded());
            if (a4VarM34492for instanceof dk1) {
                return new Cif((dk1) a4VarM34492for);
            }
            throw new InvalidKeySpecException("open SSH public key is not RSA private key");
        }
        throw new InvalidKeySpecException("unknown KeySpec type: " + keySpec.getClass().getName());
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof RSAPublicKeySpec) {
            return new Cnew((RSAPublicKeySpec) keySpec);
        }
        if (!(keySpec instanceof u71)) {
            return super.engineGeneratePublic(keySpec);
        }
        a4 a4VarM34507for = Cthis.m34507for(((u71) keySpec).getEncoded());
        if (a4VarM34507for instanceof ck1) {
            return new Cnew((ck1) a4VarM34507for);
        }
        throw new InvalidKeySpecException("Open SSH public key is not RSA public key");
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (cls.isAssignableFrom(RSAPublicKeySpec.class) && (key instanceof RSAPublicKey)) {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) key;
            return new RSAPublicKeySpec(rSAPublicKey.getModulus(), rSAPublicKey.getPublicExponent());
        }
        if (cls.isAssignableFrom(RSAPrivateKeySpec.class) && (key instanceof RSAPrivateKey)) {
            RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) key;
            return new RSAPrivateKeySpec(rSAPrivateKey.getModulus(), rSAPrivateKey.getPrivateExponent());
        }
        if (cls.isAssignableFrom(RSAPrivateCrtKeySpec.class) && (key instanceof RSAPrivateCrtKey)) {
            RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) key;
            return new RSAPrivateCrtKeySpec(rSAPrivateCrtKey.getModulus(), rSAPrivateCrtKey.getPublicExponent(), rSAPrivateCrtKey.getPrivateExponent(), rSAPrivateCrtKey.getPrimeP(), rSAPrivateCrtKey.getPrimeQ(), rSAPrivateCrtKey.getPrimeExponentP(), rSAPrivateCrtKey.getPrimeExponentQ(), rSAPrivateCrtKey.getCrtCoefficient());
        }
        if (cls.isAssignableFrom(u71.class) && (key instanceof RSAPublicKey)) {
            try {
                return new u71(Cthis.m34506do(new ck1(false, ((RSAPublicKey) key).getModulus(), ((RSAPublicKey) key).getPublicExponent())));
            } catch (IOException e) {
                throw new IllegalArgumentException("unable to produce encoding: " + e.getMessage());
            }
        }
        if (!cls.isAssignableFrom(t71.class) || !(key instanceof RSAPrivateCrtKey)) {
            return super.engineGetKeySpec(key, cls);
        }
        try {
            return new t71(org.bouncycastle.crypto.util.Cgoto.m34493if(new dk1(((RSAPrivateCrtKey) key).getModulus(), ((RSAPrivateCrtKey) key).getPublicExponent(), ((RSAPrivateCrtKey) key).getPrivateExponent(), ((RSAPrivateCrtKey) key).getPrimeP(), ((RSAPrivateCrtKey) key).getPrimeQ(), ((RSAPrivateCrtKey) key).getPrimeExponentP(), ((RSAPrivateCrtKey) key).getPrimeExponentQ(), ((RSAPrivateCrtKey) key).getCrtCoefficient())));
        } catch (IOException e2) {
            throw new IllegalArgumentException("unable to produce encoding: " + e2.getMessage());
        }
    }

    @Override // java.security.KeyFactorySpi
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        if (key instanceof RSAPublicKey) {
            return new Cnew((RSAPublicKey) key);
        }
        if (key instanceof RSAPrivateCrtKey) {
            return new Cif((RSAPrivateCrtKey) key);
        }
        if (key instanceof RSAPrivateKey) {
            return new Cfor((RSAPrivateKey) key);
        }
        throw new InvalidKeyException("key type unknown");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PrivateKey generatePrivate(Cdo cdo) throws IOException {
        Ccatch ccatchM420new = cdo.m33104else().m420new();
        if (kk1.m4433try(ccatchM420new)) {
            ek1 ek1VarM1930else = ek1.m1930else(cdo.m33102catch());
            return ek1VarM1930else.m1938new().intValue() == 0 ? new Cfor(ek1VarM1930else) : new Cif(cdo);
        }
        throw new IOException("algorithm identifier " + ccatchM420new + " in key not recognised");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PublicKey generatePublic(Ctry ctry) throws IOException {
        Ccatch ccatchM420new = ctry.m33295new().m420new();
        if (kk1.m4433try(ccatchM420new)) {
            return new Cnew(ctry);
        }
        throw new IOException("algorithm identifier " + ccatchM420new + " in key not recognised");
    }
}
