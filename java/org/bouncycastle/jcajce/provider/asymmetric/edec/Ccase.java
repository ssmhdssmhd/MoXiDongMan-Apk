package org.bouncycastle.jcajce.provider.asymmetric.edec;

import android.support.v4.a4;
import android.support.v4.t71;
import android.support.v4.u71;
import android.support.v4.y50;
import android.support.v4.zh2;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.asn1.j;
import org.bouncycastle.crypto.util.Cgoto;
import org.bouncycastle.crypto.util.Cthis;
import org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends org.bouncycastle.jcajce.provider.asymmetric.util.Cnew implements AsymmetricKeyInfoConverter {

    /* renamed from: break, reason: not valid java name */
    private static final byte f31153break = 113;

    /* renamed from: catch, reason: not valid java name */
    private static final byte f31155catch = 112;

    /* renamed from: goto, reason: not valid java name */
    private static final byte f31157goto = 111;

    /* renamed from: this, reason: not valid java name */
    private static final byte f31159this = 110;

    /* renamed from: do, reason: not valid java name */
    public String f31161do;

    /* renamed from: for, reason: not valid java name */
    private final int f31162for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f31163if;

    /* renamed from: new, reason: not valid java name */
    public static final byte[] f31158new = org.bouncycastle.util.encoders.Cfor.m36332if("3042300506032b656f033900");

    /* renamed from: try, reason: not valid java name */
    public static final byte[] f31160try = org.bouncycastle.util.encoders.Cfor.m36332if("302a300506032b656e032100");

    /* renamed from: case, reason: not valid java name */
    public static final byte[] f31154case = org.bouncycastle.util.encoders.Cfor.m36332if("3043300506032b6571033a00");

    /* renamed from: else, reason: not valid java name */
    public static final byte[] f31156else = org.bouncycastle.util.encoders.Cfor.m36332if("302a300506032b6570032100");

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.case$case, reason: invalid class name and collision with other inner class name */
    public static class C0419case extends Ccase {
        public C0419case() {
            super("XDH", true, 0);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.case$do, reason: invalid class name */
    public static class Cdo extends Ccase {
        public Cdo() {
            super(y50.f8138if, false, 112);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.case$for, reason: invalid class name */
    public static class Cfor extends Ccase {
        public Cfor() {
            super("EdDSA", false, 0);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.case$if, reason: invalid class name */
    public static class Cif extends Ccase {
        public Cif() {
            super(y50.f8137for, false, 113);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.case$new, reason: invalid class name */
    public static class Cnew extends Ccase {
        public Cnew() {
            super(zh2.f8562if, true, 110);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.case$try, reason: invalid class name */
    public static class Ctry extends Ccase {
        public Ctry() {
            super(zh2.f8561for, true, 111);
        }
    }

    public Ccase(String str, boolean z, int i) {
        this.f31161do = str;
        this.f31163if = z;
        this.f31162for = i;
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof t71)) {
            return super.engineGeneratePrivate(keySpec);
        }
        a4 a4VarM34492for = Cgoto.m34492for(((t71) keySpec).getEncoded());
        if (a4VarM34492for instanceof org.bouncycastle.crypto.params.Cif) {
            return new org.bouncycastle.jcajce.provider.asymmetric.edec.Cdo((org.bouncycastle.crypto.params.Cif) a4VarM34492for);
        }
        throw new IllegalStateException("openssh private key not Ed25519 private key");
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof X509EncodedKeySpec) {
            byte[] encoded = ((X509EncodedKeySpec) keySpec).getEncoded();
            int i = this.f31162for;
            if (i == 0 || i == encoded[8]) {
                switch (encoded[8]) {
                    case 110:
                        return new org.bouncycastle.jcajce.provider.asymmetric.edec.Cnew(f31160try, encoded);
                    case 111:
                        return new org.bouncycastle.jcajce.provider.asymmetric.edec.Cnew(f31158new, encoded);
                    case 112:
                        return new org.bouncycastle.jcajce.provider.asymmetric.edec.Cif(f31156else, encoded);
                    case 113:
                        return new org.bouncycastle.jcajce.provider.asymmetric.edec.Cif(f31154case, encoded);
                    default:
                        return super.engineGeneratePublic(keySpec);
                }
            }
        } else if (keySpec instanceof u71) {
            a4 a4VarM34507for = Cthis.m34507for(((u71) keySpec).getEncoded());
            if (a4VarM34507for instanceof org.bouncycastle.crypto.params.Cfor) {
                return new org.bouncycastle.jcajce.provider.asymmetric.edec.Cif(new byte[0], ((org.bouncycastle.crypto.params.Cfor) a4VarM34507for).m33845for());
            }
            throw new IllegalStateException("openssh public key not Ed25519 public key");
        }
        return super.engineGeneratePublic(keySpec);
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cnew, java.security.KeyFactorySpi
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (cls.isAssignableFrom(t71.class) && (key instanceof org.bouncycastle.jcajce.provider.asymmetric.edec.Cdo)) {
            try {
                return new t71(Cgoto.m34493if(new org.bouncycastle.crypto.params.Cif(((j) new Celse(((j) Csuper.m33129catch(key.getEncoded()).mo33075final(2)).mo5490const()).m33002break()).mo5490const(), 0)));
            } catch (IOException e) {
                throw new InvalidKeySpecException(e.getMessage(), e.getCause());
            }
        }
        if (!cls.isAssignableFrom(u71.class) || !(key instanceof org.bouncycastle.jcajce.provider.asymmetric.edec.Cif)) {
            return super.engineGetKeySpec(key, cls);
        }
        try {
            return new u71(Cthis.m34506do(new org.bouncycastle.crypto.params.Cfor(key.getEncoded(), f31156else.length)));
        } catch (IOException e2) {
            throw new InvalidKeySpecException(e2.getMessage(), e2.getCause());
        }
    }

    @Override // java.security.KeyFactorySpi
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        throw new InvalidKeyException("key type unknown");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PrivateKey generatePrivate(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        Ccatch ccatchM420new = cdo.m33104else().m420new();
        if (this.f31163if) {
            int i = this.f31162for;
            if ((i == 0 || i == 111) && ccatchM420new.equals(EdECObjectIdentifiers.id_X448)) {
                return new org.bouncycastle.jcajce.provider.asymmetric.edec.Cfor(cdo);
            }
            int i2 = this.f31162for;
            if ((i2 == 0 || i2 == 110) && ccatchM420new.equals(EdECObjectIdentifiers.id_X25519)) {
                return new org.bouncycastle.jcajce.provider.asymmetric.edec.Cfor(cdo);
            }
        } else {
            Ccatch ccatch = EdECObjectIdentifiers.id_Ed448;
            if (ccatchM420new.equals(ccatch) || ccatchM420new.equals(EdECObjectIdentifiers.id_Ed25519)) {
                int i3 = this.f31162for;
                if ((i3 == 0 || i3 == 113) && ccatchM420new.equals(ccatch)) {
                    return new org.bouncycastle.jcajce.provider.asymmetric.edec.Cdo(cdo);
                }
                int i4 = this.f31162for;
                if ((i4 == 0 || i4 == 112) && ccatchM420new.equals(EdECObjectIdentifiers.id_Ed25519)) {
                    return new org.bouncycastle.jcajce.provider.asymmetric.edec.Cdo(cdo);
                }
            }
        }
        throw new IOException("algorithm identifier " + ccatchM420new + " in key not recognized");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PublicKey generatePublic(org.bouncycastle.asn1.x509.Ctry ctry) throws IOException {
        Ccatch ccatchM420new = ctry.m33295new().m420new();
        if (this.f31163if) {
            int i = this.f31162for;
            if ((i == 0 || i == 111) && ccatchM420new.equals(EdECObjectIdentifiers.id_X448)) {
                return new org.bouncycastle.jcajce.provider.asymmetric.edec.Cnew(ctry);
            }
            int i2 = this.f31162for;
            if ((i2 == 0 || i2 == 110) && ccatchM420new.equals(EdECObjectIdentifiers.id_X25519)) {
                return new org.bouncycastle.jcajce.provider.asymmetric.edec.Cnew(ctry);
            }
        } else {
            Ccatch ccatch = EdECObjectIdentifiers.id_Ed448;
            if (ccatchM420new.equals(ccatch) || ccatchM420new.equals(EdECObjectIdentifiers.id_Ed25519)) {
                int i3 = this.f31162for;
                if ((i3 == 0 || i3 == 113) && ccatchM420new.equals(ccatch)) {
                    return new org.bouncycastle.jcajce.provider.asymmetric.edec.Cif(ctry);
                }
                int i4 = this.f31162for;
                if ((i4 == 0 || i4 == 112) && ccatchM420new.equals(EdECObjectIdentifiers.id_Ed25519)) {
                    return new org.bouncycastle.jcajce.provider.asymmetric.edec.Cif(ctry);
                }
            }
        }
        throw new IOException("algorithm identifier " + ccatchM420new + " in key not recognized");
    }
}
