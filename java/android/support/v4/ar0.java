package android.support.v4;

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
import org.bouncycastle.asn1.ua.UAObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cnew;
import org.bouncycastle.jce.provider.Cdo;

/* loaded from: classes3.dex */
public class ar0 extends Cnew {
    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        return keySpec instanceof i50 ? new p5((i50) keySpec) : keySpec instanceof ECPrivateKeySpec ? new p5((ECPrivateKeySpec) keySpec) : super.engineGeneratePrivate(keySpec);
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        return keySpec instanceof l50 ? new q5((l50) keySpec, Cdo.CONFIGURATION) : keySpec instanceof ECPublicKeySpec ? new q5((ECPublicKeySpec) keySpec) : super.engineGeneratePublic(keySpec);
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (cls.isAssignableFrom(ECPublicKeySpec.class) && (key instanceof ECPublicKey)) {
            ECPublicKey eCPublicKey = (ECPublicKey) key;
            if (eCPublicKey.getParams() != null) {
                return new ECPublicKeySpec(eCPublicKey.getW(), eCPublicKey.getParams());
            }
            d50 ecImplicitlyCa = Cdo.CONFIGURATION.getEcImplicitlyCa();
            return new ECPublicKeySpec(eCPublicKey.getW(), t30.m7704goto(t30.m7701do(ecImplicitlyCa.m1142do(), ecImplicitlyCa.m1146try()), ecImplicitlyCa));
        }
        if (cls.isAssignableFrom(ECPrivateKeySpec.class) && (key instanceof ECPrivateKey)) {
            ECPrivateKey eCPrivateKey = (ECPrivateKey) key;
            if (eCPrivateKey.getParams() != null) {
                return new ECPrivateKeySpec(eCPrivateKey.getS(), eCPrivateKey.getParams());
            }
            d50 ecImplicitlyCa2 = Cdo.CONFIGURATION.getEcImplicitlyCa();
            return new ECPrivateKeySpec(eCPrivateKey.getS(), t30.m7704goto(t30.m7701do(ecImplicitlyCa2.m1142do(), ecImplicitlyCa2.m1146try()), ecImplicitlyCa2));
        }
        if (cls.isAssignableFrom(l50.class) && (key instanceof ECPublicKey)) {
            ECPublicKey eCPublicKey2 = (ECPublicKey) key;
            if (eCPublicKey2.getParams() != null) {
                return new l50(t30.m7708try(eCPublicKey2.getParams(), eCPublicKey2.getW(), false), t30.m7702else(eCPublicKey2.getParams(), false));
            }
            return new l50(t30.m7708try(eCPublicKey2.getParams(), eCPublicKey2.getW(), false), Cdo.CONFIGURATION.getEcImplicitlyCa());
        }
        if (!cls.isAssignableFrom(i50.class) || !(key instanceof ECPrivateKey)) {
            return super.engineGetKeySpec(key, cls);
        }
        ECPrivateKey eCPrivateKey2 = (ECPrivateKey) key;
        if (eCPrivateKey2.getParams() != null) {
            return new i50(eCPrivateKey2.getS(), t30.m7702else(eCPrivateKey2.getParams(), false));
        }
        return new i50(eCPrivateKey2.getS(), Cdo.CONFIGURATION.getEcImplicitlyCa());
    }

    @Override // java.security.KeyFactorySpi
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        throw new InvalidKeyException("key type unknown");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PrivateKey generatePrivate(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        Ccatch ccatchM420new = cdo.m33104else().m420new();
        if (ccatchM420new.equals(UAObjectIdentifiers.dstu4145le) || ccatchM420new.equals(UAObjectIdentifiers.dstu4145be)) {
            return new p5(cdo);
        }
        throw new IOException("algorithm identifier " + ccatchM420new + " in key not recognised");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PublicKey generatePublic(Ctry ctry) throws IOException {
        Ccatch ccatchM420new = ctry.m33295new().m420new();
        if (ccatchM420new.equals(UAObjectIdentifiers.dstu4145le) || ccatchM420new.equals(UAObjectIdentifiers.dstu4145be)) {
            return new q5(ctry);
        }
        throw new IOException("algorithm identifier " + ccatchM420new + " in key not recognised");
    }
}
