package android.support.v4;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.PublicKey;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Celse;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jce.Cnew;

/* loaded from: classes3.dex */
public class d5 extends c5 {
    public d5(PublicKey publicKey) throws InvalidKeyException {
        super(m1141catch(publicKey));
    }

    public d5(X509Certificate x509Certificate) throws CertificateParsingException {
        super(m1140break(x509Certificate));
    }

    public d5(Celse celse) {
        super((Csuper) celse.m33220if());
    }

    public d5(Cif cif) {
        super((Csuper) cif.m33247goto());
    }

    public d5(byte[] bArr) throws IOException {
        super((Csuper) eh2.m1921do(bArr));
    }

    /* renamed from: break, reason: not valid java name */
    private static Csuper m1140break(X509Certificate x509Certificate) throws CertificateParsingException {
        try {
            if (x509Certificate.getVersion() != 3) {
                return (Csuper) new c5(Ctry.m33291case(x509Certificate.getPublicKey().getEncoded()), new ug0(new tg0(Cnew.m34949if(x509Certificate))), x509Certificate.getSerialNumber()).toASN1Primitive();
            }
            tg0 tg0Var = new tg0(Cnew.m34949if(x509Certificate));
            byte[] extensionValue = x509Certificate.getExtensionValue(Cif.f29337try.m32795super());
            return extensionValue != null ? (Csuper) new c5(((Cclass) eh2.m1921do(extensionValue)).mo5490const(), new ug0(tg0Var), x509Certificate.getSerialNumber()).toASN1Primitive() : (Csuper) new c5(Ctry.m33291case(x509Certificate.getPublicKey().getEncoded()), new ug0(tg0Var), x509Certificate.getSerialNumber()).toASN1Primitive();
        } catch (Exception e) {
            throw new CertificateParsingException("Exception extracting certificate details: " + e.toString());
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private static Csuper m1141catch(PublicKey publicKey) throws InvalidKeyException {
        try {
            return (Csuper) new c5(Ctry.m33291case(publicKey.getEncoded())).toASN1Primitive();
        } catch (Exception e) {
            throw new InvalidKeyException("can't process key: " + e);
        }
    }
}
