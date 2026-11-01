package org.bouncycastle.jcajce.provider.asymmetric.gost;

import android.support.v4.bg0;
import android.support.v4.dg0;
import android.support.v4.fg0;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cnew;
import org.bouncycastle.jce.interfaces.GOST3410PrivateKey;
import org.bouncycastle.jce.interfaces.GOST3410PublicKey;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.gost.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends Cnew {
    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        return keySpec instanceof bg0 ? new Cfor((bg0) keySpec) : super.engineGeneratePrivate(keySpec);
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        return keySpec instanceof fg0 ? new Cnew((fg0) keySpec) : super.engineGeneratePublic(keySpec);
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (cls.isAssignableFrom(fg0.class) && (key instanceof GOST3410PublicKey)) {
            GOST3410PublicKey gOST3410PublicKey = (GOST3410PublicKey) key;
            dg0 publicKeyParameters = gOST3410PublicKey.getParameters().getPublicKeyParameters();
            return new fg0(gOST3410PublicKey.getY(), publicKeyParameters.m1336if(), publicKeyParameters.m1335for(), publicKeyParameters.m1334do());
        }
        if (!cls.isAssignableFrom(bg0.class) || !(key instanceof GOST3410PrivateKey)) {
            return super.engineGetKeySpec(key, cls);
        }
        GOST3410PrivateKey gOST3410PrivateKey = (GOST3410PrivateKey) key;
        dg0 publicKeyParameters2 = gOST3410PrivateKey.getParameters().getPublicKeyParameters();
        return new bg0(gOST3410PrivateKey.getX(), publicKeyParameters2.m1336if(), publicKeyParameters2.m1335for(), publicKeyParameters2.m1334do());
    }

    @Override // java.security.KeyFactorySpi
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        if (key instanceof GOST3410PublicKey) {
            return new Cnew((GOST3410PublicKey) key);
        }
        if (key instanceof GOST3410PrivateKey) {
            return new Cfor((GOST3410PrivateKey) key);
        }
        throw new InvalidKeyException("key type unknown");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PrivateKey generatePrivate(Cdo cdo) throws IOException {
        Ccatch ccatchM420new = cdo.m33104else().m420new();
        if (ccatchM420new.equals(CryptoProObjectIdentifiers.gostR3410_94)) {
            return new Cfor(cdo);
        }
        throw new IOException("algorithm identifier " + ccatchM420new + " in key not recognised");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PublicKey generatePublic(Ctry ctry) throws IOException {
        Ccatch ccatchM420new = ctry.m33295new().m420new();
        if (ccatchM420new.equals(CryptoProObjectIdentifiers.gostR3410_94)) {
            return new Cnew(ctry);
        }
        throw new IOException("algorithm identifier " + ccatchM420new + " in key not recognised");
    }
}
