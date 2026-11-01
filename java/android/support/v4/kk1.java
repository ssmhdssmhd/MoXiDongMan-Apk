package android.support.v4;

import java.math.BigInteger;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;

/* loaded from: classes3.dex */
public class kk1 {

    /* renamed from: do, reason: not valid java name */
    public static final Ccatch[] f3403do = {PKCSObjectIdentifiers.rsaEncryption, X509ObjectIdentifiers.id_ea_rsa, PKCSObjectIdentifiers.id_RSAES_OAEP, PKCSObjectIdentifiers.id_RSASSA_PSS};

    /* renamed from: do, reason: not valid java name */
    public static String m4429do(BigInteger bigInteger) {
        return new ec0(bigInteger.toByteArray(), 32).toString();
    }

    /* renamed from: for, reason: not valid java name */
    public static ck1 m4430for(RSAPrivateKey rSAPrivateKey) {
        if (!(rSAPrivateKey instanceof RSAPrivateCrtKey)) {
            return new ck1(true, rSAPrivateKey.getModulus(), rSAPrivateKey.getPrivateExponent());
        }
        RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) rSAPrivateKey;
        return new dk1(rSAPrivateCrtKey.getModulus(), rSAPrivateCrtKey.getPublicExponent(), rSAPrivateCrtKey.getPrivateExponent(), rSAPrivateCrtKey.getPrimeP(), rSAPrivateCrtKey.getPrimeQ(), rSAPrivateCrtKey.getPrimeExponentP(), rSAPrivateCrtKey.getPrimeExponentQ(), rSAPrivateCrtKey.getCrtCoefficient());
    }

    /* renamed from: if, reason: not valid java name */
    public static String m4431if(BigInteger bigInteger) {
        return new ec0(bigInteger.toByteArray()).toString();
    }

    /* renamed from: new, reason: not valid java name */
    public static ck1 m4432new(RSAPublicKey rSAPublicKey) {
        return new ck1(false, rSAPublicKey.getModulus(), rSAPublicKey.getPublicExponent());
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m4433try(Ccatch ccatch) {
        int i = 0;
        while (true) {
            Ccatch[] ccatchArr = f3403do;
            if (i == ccatchArr.length) {
                return false;
            }
            if (ccatch.equals(ccatchArr[i])) {
                return true;
            }
            i++;
        }
    }
}
