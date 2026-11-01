package org.bouncycastle.pqc.jcajce.provider.mceliece;

import android.support.v4.b1;
import android.support.v4.fz0;
import android.support.v4.gz0;
import android.support.v4.hz0;
import android.support.v4.iz0;
import android.support.v4.y5;
import android.support.v4.yp1;
import android.support.v4.z5;
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
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends KeyFactorySpi implements AsymmetricKeyInfoConverter {

    /* renamed from: do, reason: not valid java name */
    public static final String f32556do = "1.3.6.1.4.1.8301.3.1.3.4.1";

    /* renamed from: do, reason: not valid java name */
    private static Digest m36094do(b1 b1Var) {
        return new yp1();
    }

    @Override // java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof PKCS8EncodedKeySpec)) {
            throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
        }
        try {
            Cdo cdoM33100try = Cdo.m33100try(Cfinal.m33015else(((PKCS8EncodedKeySpec) keySpec).getEncoded()));
            try {
                if (!PQCObjectIdentifiers.mcEliece.equals(cdoM33100try.m33104else().m420new())) {
                    throw new InvalidKeySpecException("Unable to recognise OID in McEliece private key");
                }
                fz0 fz0VarM2491case = fz0.m2491case(cdoM33100try.m33102catch());
                return new y5(new gz0(fz0VarM2491case.m2495goto(), fz0VarM2491case.m2494else(), fz0VarM2491case.m2496new(), fz0VarM2491case.m2498try(), fz0VarM2491case.m2497this(), fz0VarM2491case.m2492break(), fz0VarM2491case.m2493catch()));
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
                if (!PQCObjectIdentifiers.mcEliece.equals(ctryM33291case.m33295new().m420new())) {
                    throw new InvalidKeySpecException("Unable to recognise OID in McEliece public key");
                }
                hz0 hz0VarM3176try = hz0.m3176try(ctryM33291case.m33293break());
                return new z5(new iz0(hz0VarM3176try.m3177case(), hz0VarM3176try.m3178else(), hz0VarM3176try.m3179new()));
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

    /* renamed from: for, reason: not valid java name */
    public Key m36095for(Key key) throws InvalidKeyException {
        if ((key instanceof y5) || (key instanceof z5)) {
            return key;
        }
        throw new InvalidKeyException("Unsupported key type.");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PrivateKey generatePrivate(Cdo cdo) throws IOException {
        fz0 fz0VarM2491case = fz0.m2491case(cdo.m33102catch().toASN1Primitive());
        return new y5(new gz0(fz0VarM2491case.m2495goto(), fz0VarM2491case.m2494else(), fz0VarM2491case.m2496new(), fz0VarM2491case.m2498try(), fz0VarM2491case.m2497this(), fz0VarM2491case.m2492break(), fz0VarM2491case.m2493catch()));
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PublicKey generatePublic(Ctry ctry) throws IOException {
        hz0 hz0VarM3176try = hz0.m3176try(ctry.m33293break());
        return new z5(new iz0(hz0VarM3176try.m3177case(), hz0VarM3176try.m3178else(), hz0VarM3176try.m3179new()));
    }

    /* renamed from: if, reason: not valid java name */
    public KeySpec m36096if(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof y5) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
        } else {
            if (!(key instanceof z5)) {
                throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(key.getEncoded());
            }
        }
        throw new InvalidKeySpecException("Unknown key specification: " + cls + ".");
    }
}
