package org.bouncycastle.jcajce.provider.asymmetric.x509;

import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.apache.commons.lang3.Cclass;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.asn1.x509.Ctry;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.x509.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends KeyFactorySpi {
    @Override // java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof PKCS8EncodedKeySpec)) {
            throw new InvalidKeySpecException("Unknown KeySpec type: " + keySpec.getClass().getName());
        }
        try {
            Cdo cdoM33100try = Cdo.m33100try(((PKCS8EncodedKeySpec) keySpec).getEncoded());
            PrivateKey privateKey = org.bouncycastle.jce.provider.Cdo.getPrivateKey(cdoM33100try);
            if (privateKey != null) {
                return privateKey;
            }
            throw new InvalidKeySpecException("no factory found for OID: " + cdoM33100try.m33104else().m420new());
        } catch (Exception e) {
            throw new InvalidKeySpecException(e.toString());
        }
    }

    @Override // java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof X509EncodedKeySpec)) {
            throw new InvalidKeySpecException("Unknown KeySpec type: " + keySpec.getClass().getName());
        }
        try {
            Ctry ctryM33291case = Ctry.m33291case(((X509EncodedKeySpec) keySpec).getEncoded());
            PublicKey publicKey = org.bouncycastle.jce.provider.Cdo.getPublicKey(ctryM33291case);
            if (publicKey != null) {
                return publicKey;
            }
            throw new InvalidKeySpecException("no factory found for OID: " + ctryM33291case.m33295new().m420new());
        } catch (Exception e) {
            throw new InvalidKeySpecException(e.toString());
        }
    }

    @Override // java.security.KeyFactorySpi
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (cls.isAssignableFrom(PKCS8EncodedKeySpec.class) && key.getFormat().equals("PKCS#8")) {
            return new PKCS8EncodedKeySpec(key.getEncoded());
        }
        if (cls.isAssignableFrom(X509EncodedKeySpec.class) && key.getFormat().equals("X.509")) {
            return new X509EncodedKeySpec(key.getEncoded());
        }
        throw new InvalidKeySpecException("not implemented yet " + key + Cclass.f28652do + cls);
    }

    @Override // java.security.KeyFactorySpi
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        throw new InvalidKeyException("not implemented yet " + key);
    }
}
