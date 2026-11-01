package android.support.v4;

import java.io.IOException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cif;

/* loaded from: classes3.dex */
public class eh2 {
    /* renamed from: do, reason: not valid java name */
    public static Cfinal m1921do(byte[] bArr) throws IOException {
        return Cfinal.m33015else(((Cclass) Cfinal.m33015else(bArr)).mo5490const());
    }

    /* renamed from: for, reason: not valid java name */
    public static Collection m1922for(X509Certificate x509Certificate) throws CertificateParsingException {
        return m1923if(x509Certificate.getExtensionValue(Cif.f29334this.m32795super()));
    }

    /* renamed from: if, reason: not valid java name */
    private static Collection m1923if(byte[] bArr) throws CertificateParsingException, IOException {
        Object aSN1Primitive;
        if (bArr == null) {
            return Collections.EMPTY_LIST;
        }
        try {
            ArrayList arrayList = new ArrayList();
            Enumeration enumerationMo33076super = Csuper.m33129catch(m1921do(bArr)).mo33076super();
            while (enumerationMo33076super.hasMoreElements()) {
                tg0 tg0VarM7877try = tg0.m7877try(enumerationMo33076super.nextElement());
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(hn0.m3072for(tg0VarM7877try.getTagNo()));
                switch (tg0VarM7877try.getTagNo()) {
                    case 0:
                    case 3:
                    case 5:
                        aSN1Primitive = tg0VarM7877try.m7878else().toASN1Primitive();
                        break;
                    case 1:
                    case 2:
                    case 6:
                        aSN1Primitive = ((ASN1String) tg0VarM7877try.m7878else()).getString();
                        break;
                    case 4:
                        aSN1Primitive = tg2.m7884else(tg0VarM7877try.m7878else()).toString();
                        break;
                    case 7:
                        arrayList2.add(Cclass.m32796catch(tg0VarM7877try.m7878else()).mo5490const());
                        continue;
                        arrayList.add(arrayList2);
                    case 8:
                        aSN1Primitive = Ccatch.m32790throw(tg0VarM7877try.m7878else()).m32795super();
                        break;
                    default:
                        throw new IOException("Bad tag number: " + tg0VarM7877try.getTagNo());
                }
                arrayList2.add(aSN1Primitive);
                arrayList.add(arrayList2);
            }
            return Collections.unmodifiableCollection(arrayList);
        } catch (Exception e) {
            throw new CertificateParsingException(e.getMessage());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static Collection m1924new(X509Certificate x509Certificate) throws CertificateParsingException {
        return m1923if(x509Certificate.getExtensionValue(Cif.f29320goto.m32795super()));
    }
}
