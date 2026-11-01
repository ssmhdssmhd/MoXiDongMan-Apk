package android.support.v4;

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

/* loaded from: classes3.dex */
public class nk1 extends KeyFactorySpi implements AsymmetricKeyInfoConverter {
    @Override // java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof xk1) {
            return new e6((xk1) keySpec);
        }
        if (keySpec instanceof PKCS8EncodedKeySpec) {
            try {
                return generatePrivate(Cdo.m33100try(Cfinal.m33015else(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
            } catch (Exception e) {
                throw new InvalidKeySpecException(e.toString());
            }
        }
        throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
    }

    @Override // java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof al1) {
            return new f6((al1) keySpec);
        }
        if (keySpec instanceof X509EncodedKeySpec) {
            try {
                return generatePublic(Ctry.m33291case(((X509EncodedKeySpec) keySpec).getEncoded()));
            } catch (Exception e) {
                throw new InvalidKeySpecException(e.toString());
            }
        }
        throw new InvalidKeySpecException("Unknown key specification: " + keySpec + ".");
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof e6) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
            if (xk1.class.isAssignableFrom(cls)) {
                e6 e6Var = (e6) key;
                return new xk1(e6Var.getInvA1(), e6Var.getB1(), e6Var.getInvA2(), e6Var.getB2(), e6Var.getVi(), e6Var.getLayers());
            }
        } else {
            if (!(key instanceof f6)) {
                throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(key.getEncoded());
            }
            if (al1.class.isAssignableFrom(cls)) {
                f6 f6Var = (f6) key;
                return new al1(f6Var.getDocLength(), f6Var.getCoeffQuadratic(), f6Var.getCoeffSingular(), f6Var.getCoeffScalar());
            }
        }
        throw new InvalidKeySpecException("Unknown key specification: " + cls + ".");
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof e6) || (key instanceof f6)) {
            return key;
        }
        throw new InvalidKeyException("Unsupported key type");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PrivateKey generatePrivate(Cdo cdo) throws IOException {
        vk1 vk1VarM8889case = vk1.m8889case(cdo.m33102catch());
        return new e6(vk1VarM8889case.m8892else(), vk1VarM8889case.m8894new(), vk1VarM8889case.m8893goto(), vk1VarM8889case.m8896try(), vk1VarM8889case.m8891catch(), vk1VarM8889case.m8895this());
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PublicKey generatePublic(Ctry ctry) throws IOException {
        yk1 yk1VarM9882goto = yk1.m9882goto(ctry.m33293break());
        return new f6(yk1VarM9882goto.m9884else(), yk1VarM9882goto.m9885new(), yk1VarM9882goto.m9883case(), yk1VarM9882goto.m9887try());
    }
}
