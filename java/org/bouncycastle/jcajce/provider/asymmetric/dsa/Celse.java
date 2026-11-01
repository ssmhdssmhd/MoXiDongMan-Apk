package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import android.support.v4.a4;
import android.support.v4.hv;
import android.support.v4.jv;
import android.support.v4.kv;
import android.support.v4.t71;
import android.support.v4.u71;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAPrivateKeySpec;
import java.security.spec.DSAPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.crypto.util.Cgoto;
import org.bouncycastle.crypto.util.Cthis;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cnew;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends Cnew {

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.else$do, reason: invalid class name */
    public class Cdo extends InvalidKeySpecException {
        public final /* synthetic */ Exception val$e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(String str, Exception exc) {
            super(str);
            this.val$e = exc;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            return this.val$e;
        }
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof DSAPrivateKeySpec) {
            return new Cfor((DSAPrivateKeySpec) keySpec);
        }
        if (!(keySpec instanceof t71)) {
            return super.engineGeneratePrivate(keySpec);
        }
        a4 a4VarM34492for = Cgoto.m34492for(((t71) keySpec).getEncoded());
        if (!(a4VarM34492for instanceof jv)) {
            throw new IllegalArgumentException("openssh private key is not dsa privare key");
        }
        jv jvVar = (jv) a4VarM34492for;
        return engineGeneratePrivate(new DSAPrivateKeySpec(jvVar.m4110for(), jvVar.m2025if().m3129if(), jvVar.m2025if().m3128for(), jvVar.m2025if().m3127do()));
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof DSAPublicKeySpec) {
            try {
                return new Cnew((DSAPublicKeySpec) keySpec);
            } catch (Exception e) {
                throw new Cdo("invalid KeySpec: " + e.getMessage(), e);
            }
        }
        if (!(keySpec instanceof u71)) {
            return super.engineGeneratePublic(keySpec);
        }
        a4 a4VarM34507for = Cthis.m34507for(((u71) keySpec).getEncoded());
        if (!(a4VarM34507for instanceof kv)) {
            throw new IllegalArgumentException("openssh public key is not dsa public key");
        }
        kv kvVar = (kv) a4VarM34507for;
        return engineGeneratePublic(new DSAPublicKeySpec(kvVar.m4514for(), kvVar.m2025if().m3129if(), kvVar.m2025if().m3128for(), kvVar.m2025if().m3127do()));
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (cls.isAssignableFrom(DSAPublicKeySpec.class) && (key instanceof DSAPublicKey)) {
            DSAPublicKey dSAPublicKey = (DSAPublicKey) key;
            return new DSAPublicKeySpec(dSAPublicKey.getY(), dSAPublicKey.getParams().getP(), dSAPublicKey.getParams().getQ(), dSAPublicKey.getParams().getG());
        }
        if (cls.isAssignableFrom(DSAPrivateKeySpec.class) && (key instanceof DSAPrivateKey)) {
            DSAPrivateKey dSAPrivateKey = (DSAPrivateKey) key;
            return new DSAPrivateKeySpec(dSAPrivateKey.getX(), dSAPrivateKey.getParams().getP(), dSAPrivateKey.getParams().getQ(), dSAPrivateKey.getParams().getG());
        }
        if (cls.isAssignableFrom(u71.class) && (key instanceof DSAPublicKey)) {
            DSAPublicKey dSAPublicKey2 = (DSAPublicKey) key;
            try {
                return new u71(Cthis.m34506do(new kv(dSAPublicKey2.getY(), new hv(dSAPublicKey2.getParams().getP(), dSAPublicKey2.getParams().getQ(), dSAPublicKey2.getParams().getG()))));
            } catch (IOException e) {
                throw new IllegalArgumentException("unable to produce encoding: " + e.getMessage());
            }
        }
        if (!cls.isAssignableFrom(t71.class) || !(key instanceof DSAPrivateKey)) {
            return super.engineGetKeySpec(key, cls);
        }
        DSAPrivateKey dSAPrivateKey2 = (DSAPrivateKey) key;
        try {
            return new t71(Cgoto.m34493if(new jv(dSAPrivateKey2.getX(), new hv(dSAPrivateKey2.getParams().getP(), dSAPrivateKey2.getParams().getQ(), dSAPrivateKey2.getParams().getG()))));
        } catch (IOException e2) {
            throw new IllegalArgumentException("unable to produce encoding: " + e2.getMessage());
        }
    }

    @Override // java.security.KeyFactorySpi
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        if (key instanceof DSAPublicKey) {
            return new Cnew((DSAPublicKey) key);
        }
        if (key instanceof DSAPrivateKey) {
            return new Cfor((DSAPrivateKey) key);
        }
        throw new InvalidKeyException("key type unknown");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PrivateKey generatePrivate(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        Ccatch ccatchM420new = cdo.m33104else().m420new();
        if (Ccase.m34649new(ccatchM420new)) {
            return new Cfor(cdo);
        }
        throw new IOException("algorithm identifier " + ccatchM420new + " in key not recognised");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PublicKey generatePublic(Ctry ctry) throws IOException {
        Ccatch ccatchM420new = ctry.m33295new().m420new();
        if (Ccase.m34649new(ccatchM420new)) {
            return new Cnew(ctry);
        }
        throw new IOException("algorithm identifier " + ccatchM420new + " in key not recognised");
    }
}
