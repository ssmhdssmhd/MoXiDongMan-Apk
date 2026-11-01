package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import android.support.v4.a4;
import android.support.v4.ec0;
import android.support.v4.hv;
import android.support.v4.jv;
import android.support.v4.q3;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.DSAPublicKey;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase {

    /* renamed from: do, reason: not valid java name */
    public static final Ccatch[] f31031do = {X9ObjectIdentifiers.id_dsa, OIWObjectIdentifiers.dsaWithSHA1, X9ObjectIdentifiers.id_dsa_with_sha1};

    /* renamed from: do, reason: not valid java name */
    public static String m34646do(BigInteger bigInteger, DSAParams dSAParams) {
        return new ec0(q3.m6372finally(bigInteger.toByteArray(), dSAParams.getP().toByteArray(), dSAParams.getQ().toByteArray(), dSAParams.getG().toByteArray())).toString();
    }

    /* renamed from: for, reason: not valid java name */
    public static a4 m34647for(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof Cnew) {
            return ((Cnew) publicKey).engineGetKeyParameters();
        }
        if (publicKey instanceof DSAPublicKey) {
            return new Cnew((DSAPublicKey) publicKey).engineGetKeyParameters();
        }
        try {
            return new Cnew(Ctry.m33291case(publicKey.getEncoded())).engineGetKeyParameters();
        } catch (Exception unused) {
            throw new InvalidKeyException("can't identify DSA public key: " + publicKey.getClass().getName());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static a4 m34648if(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof DSAPrivateKey)) {
            throw new InvalidKeyException("can't identify DSA private key.");
        }
        DSAPrivateKey dSAPrivateKey = (DSAPrivateKey) privateKey;
        return new jv(dSAPrivateKey.getX(), new hv(dSAPrivateKey.getParams().getP(), dSAPrivateKey.getParams().getQ(), dSAPrivateKey.getParams().getG()));
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m34649new(Ccatch ccatch) {
        int i = 0;
        while (true) {
            Ccatch[] ccatchArr = f31031do;
            if (i == ccatchArr.length) {
                return false;
            }
            if (ccatch.equals(ccatchArr[i])) {
                return true;
            }
            i++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static hv m34650try(DSAParams dSAParams) {
        if (dSAParams != null) {
            return new hv(dSAParams.getP(), dSAParams.getQ(), dSAParams.getG());
        }
        return null;
    }
}
