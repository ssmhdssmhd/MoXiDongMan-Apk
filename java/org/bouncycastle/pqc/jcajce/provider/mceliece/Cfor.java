package org.bouncycastle.pqc.jcajce.provider.mceliece;

import android.support.v4.wy0;
import android.support.v4.xy0;
import android.support.v4.yy0;
import android.support.v4.zy0;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends KeyFactorySpi implements AsymmetricKeyInfoConverter {

    /* renamed from: do, reason: not valid java name */
    public static final String f32557do = "1.3.6.1.4.1.8301.3.1.3.4.2";

    /* renamed from: do, reason: not valid java name */
    public KeySpec m36097do(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof Cdo) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
        } else {
            if (!(key instanceof Cif)) {
                throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(key.getEncoded());
            }
        }
        throw new InvalidKeySpecException("Unknown key specification: " + cls + ".");
    }

    @Override // java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof PKCS8EncodedKeySpec)) {
            throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
        }
        try {
            Cdo cdoM33100try = Cdo.m33100try(Cfinal.m33015else(((PKCS8EncodedKeySpec) keySpec).getEncoded()));
            try {
                if (!PQCObjectIdentifiers.mcElieceCca2.equals(cdoM33100try.m33104else().m420new())) {
                    throw new InvalidKeySpecException("Unable to recognise OID in McEliece public key");
                }
                wy0 wy0VarM9307else = wy0.m9307else(cdoM33100try.m33102catch());
                return new Cdo(new xy0(wy0VarM9307else.m9312this(), wy0VarM9307else.m9310goto(), wy0VarM9307else.m9313try(), wy0VarM9307else.m9309case(), wy0VarM9307else.m9308break(), Cconst.m36093if(wy0VarM9307else.m9311new()).getAlgorithmName()));
            } catch (IOException unused) {
                throw new InvalidKeySpecException("Unable to decode PKCS8EncodedKeySpec.");
            }
        } catch (IOException e) {
            throw new InvalidKeySpecException("Unable to decode PKCS8EncodedKeySpec: " + e);
        }
    }

    @Override // java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof X509EncodedKeySpec)) {
            throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
        }
        try {
            Ctry ctryM33291case = Ctry.m33291case(Cfinal.m33015else(((X509EncodedKeySpec) keySpec).getEncoded()));
            try {
                if (!PQCObjectIdentifiers.mcElieceCca2.equals(ctryM33291case.m33295new().m420new())) {
                    throw new InvalidKeySpecException("Unable to recognise OID in McEliece private key");
                }
                yy0 yy0VarM9993case = yy0.m9993case(ctryM33291case.m33293break());
                return new Cif(new zy0(yy0VarM9993case.m9994else(), yy0VarM9993case.m9995goto(), yy0VarM9993case.m9997try(), Cconst.m36093if(yy0VarM9993case.m9996new()).getAlgorithmName()));
            } catch (IOException e) {
                throw new InvalidKeySpecException("Unable to decode X509EncodedKeySpec: " + e.getMessage());
            }
        } catch (IOException e2) {
            throw new InvalidKeySpecException(e2.toString());
        }
    }

    @Override // java.security.KeyFactorySpi
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        return null;
    }

    @Override // java.security.KeyFactorySpi
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        return null;
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PrivateKey generatePrivate(Cdo cdo) throws IOException {
        wy0 wy0VarM9307else = wy0.m9307else(cdo.m33102catch().toASN1Primitive());
        return new Cdo(new xy0(wy0VarM9307else.m9312this(), wy0VarM9307else.m9310goto(), wy0VarM9307else.m9313try(), wy0VarM9307else.m9309case(), wy0VarM9307else.m9308break(), null));
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PublicKey generatePublic(Ctry ctry) throws IOException {
        yy0 yy0VarM9993case = yy0.m9993case(ctry.m33293break());
        return new Cif(new zy0(yy0VarM9993case.m9994else(), yy0VarM9993case.m9995goto(), yy0VarM9993case.m9997try(), Cconst.m36093if(yy0VarM9993case.m9996new()).getAlgorithmName()));
    }

    /* renamed from: if, reason: not valid java name */
    public Key m36098if(Key key) throws InvalidKeyException {
        if ((key instanceof Cdo) || (key instanceof Cif)) {
            return key;
        }
        throw new InvalidKeyException("Unsupported key type.");
    }
}
