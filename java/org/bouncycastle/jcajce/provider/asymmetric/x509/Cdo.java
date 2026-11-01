package org.bouncycastle.jcajce.provider.asymmetric.x509;

import android.support.v4.a22;
import android.support.v4.ky1;
import android.support.v4.rg;
import android.support.v4.w5;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.security.cert.CertPath;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactorySpi;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.jcajce.util.JcaJceHelper;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.x509.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends CertificateFactorySpi {

    /* renamed from: goto, reason: not valid java name */
    private static final Cnew f31262goto = new Cnew("CERTIFICATE");

    /* renamed from: this, reason: not valid java name */
    private static final Cnew f31263this = new Cnew("CRL");

    /* renamed from: break, reason: not valid java name */
    private static final Cnew f31261break = new Cnew("PKCS7");

    /* renamed from: do, reason: not valid java name */
    private final JcaJceHelper f31265do = new w5();

    /* renamed from: if, reason: not valid java name */
    private Cthrow f31268if = null;

    /* renamed from: for, reason: not valid java name */
    private int f31267for = 0;

    /* renamed from: new, reason: not valid java name */
    private InputStream f31269new = null;

    /* renamed from: try, reason: not valid java name */
    private Cthrow f31270try = null;

    /* renamed from: case, reason: not valid java name */
    private int f31264case = 0;

    /* renamed from: else, reason: not valid java name */
    private InputStream f31266else = null;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.x509.do$do, reason: invalid class name and collision with other inner class name */
    public class C0426do extends CertificateException {
        private Throwable cause;

        public C0426do(String str, Throwable th) {
            super(str);
            this.cause = th;
        }

        public C0426do(Throwable th) {
            this.cause = th;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            return this.cause;
        }
    }

    /* renamed from: case, reason: not valid java name */
    private CRL m34760case(Celse celse) throws IOException, CRLException {
        return m34762for(Csuper.m33129catch(celse.m33002break()));
    }

    /* renamed from: else, reason: not valid java name */
    private Certificate m34761else(Celse celse) throws CertificateParsingException, IOException {
        return m34767try(Csuper.m33129catch(celse.m33002break()));
    }

    /* renamed from: for, reason: not valid java name */
    private CRL m34762for(Csuper csuper) throws CRLException {
        if (csuper == null) {
            return null;
        }
        if (csuper.size() <= 1 || !(csuper.mo33075final(0) instanceof Ccatch) || !csuper.mo33075final(0).equals(PKCSObjectIdentifiers.signedData)) {
            return m34768do(org.bouncycastle.asn1.x509.Cdo.m33207new(csuper));
        }
        this.f31270try = ky1.m4536goto(Csuper.m33130class((Cimport) csuper.mo33075final(1), true)).m4540new();
        return m34764if();
    }

    /* renamed from: goto, reason: not valid java name */
    private CRL m34763goto(InputStream inputStream) throws IOException, CRLException {
        return m34762for(f31263this.m34778if(inputStream));
    }

    /* renamed from: if, reason: not valid java name */
    private CRL m34764if() throws CRLException {
        Cthrow cthrow = this.f31270try;
        if (cthrow == null || this.f31264case >= cthrow.size()) {
            return null;
        }
        Cthrow cthrow2 = this.f31270try;
        int i = this.f31264case;
        this.f31264case = i + 1;
        return m34768do(org.bouncycastle.asn1.x509.Cdo.m33207new(cthrow2.m33158super(i)));
    }

    /* renamed from: new, reason: not valid java name */
    private Certificate m34765new() throws CertificateParsingException {
        if (this.f31268if == null) {
            return null;
        }
        while (this.f31267for < this.f31268if.size()) {
            Cthrow cthrow = this.f31268if;
            int i = this.f31267for;
            this.f31267for = i + 1;
            ASN1Encodable aSN1EncodableM33158super = cthrow.m33158super(i);
            if (aSN1EncodableM33158super instanceof Csuper) {
                return new Cgoto(this.f31265do, rg.m6956try(aSN1EncodableM33158super));
            }
        }
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    private Certificate m34766this(InputStream inputStream) throws CertificateParsingException, IOException {
        return m34767try(f31262goto.m34778if(inputStream));
    }

    /* renamed from: try, reason: not valid java name */
    private Certificate m34767try(Csuper csuper) throws CertificateParsingException {
        if (csuper == null) {
            return null;
        }
        if (csuper.size() <= 1 || !(csuper.mo33075final(0) instanceof Ccatch) || !csuper.mo33075final(0).equals(PKCSObjectIdentifiers.signedData)) {
            return new Cgoto(this.f31265do, rg.m6956try(csuper));
        }
        this.f31268if = ky1.m4536goto(Csuper.m33130class((Cimport) csuper.mo33075final(1), true)).m4542try();
        return m34765new();
    }

    /* renamed from: do, reason: not valid java name */
    public CRL m34768do(org.bouncycastle.asn1.x509.Cdo cdo) throws CRLException {
        return new Celse(this.f31265do, cdo);
    }

    @Override // java.security.cert.CertificateFactorySpi
    public CRL engineGenerateCRL(InputStream inputStream) throws IOException, CRLException {
        InputStream inputStream2 = this.f31266else;
        if (inputStream2 == null || inputStream2 != inputStream) {
            this.f31266else = inputStream;
            this.f31270try = null;
            this.f31264case = 0;
        }
        try {
            Cthrow cthrow = this.f31270try;
            if (cthrow != null) {
                if (this.f31264case != cthrow.size()) {
                    return m34764if();
                }
                this.f31270try = null;
                this.f31264case = 0;
                return null;
            }
            if (!inputStream.markSupported()) {
                inputStream = new ByteArrayInputStream(a22.m23new(inputStream));
            }
            inputStream.mark(1);
            int i = inputStream.read();
            if (i == -1) {
                return null;
            }
            inputStream.reset();
            return i != 48 ? m34763goto(inputStream) : m34760case(new Celse(inputStream, true));
        } catch (CRLException e) {
            throw e;
        } catch (Exception e2) {
            throw new CRLException(e2.toString());
        }
    }

    @Override // java.security.cert.CertificateFactorySpi
    public Collection engineGenerateCRLs(InputStream inputStream) throws IOException, CRLException {
        ArrayList arrayList = new ArrayList();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        while (true) {
            CRL crlEngineGenerateCRL = engineGenerateCRL(bufferedInputStream);
            if (crlEngineGenerateCRL == null) {
                return arrayList;
            }
            arrayList.add(crlEngineGenerateCRL);
        }
    }

    @Override // java.security.cert.CertificateFactorySpi
    public CertPath engineGenerateCertPath(InputStream inputStream) throws CertificateException {
        return engineGenerateCertPath(inputStream, "PkiPath");
    }

    @Override // java.security.cert.CertificateFactorySpi
    public CertPath engineGenerateCertPath(InputStream inputStream, String str) throws CertificateException {
        return new Ctry(inputStream, str);
    }

    @Override // java.security.cert.CertificateFactorySpi
    public CertPath engineGenerateCertPath(List list) throws CertificateException {
        for (Object obj : list) {
            if (obj != null && !(obj instanceof X509Certificate)) {
                throw new CertificateException("list contains non X509Certificate object while creating CertPath\n" + obj.toString());
            }
        }
        return new Ctry(list);
    }

    @Override // java.security.cert.CertificateFactorySpi
    public Certificate engineGenerateCertificate(InputStream inputStream) throws IOException, CertificateException {
        InputStream inputStream2 = this.f31269new;
        if (inputStream2 == null || inputStream2 != inputStream) {
            this.f31269new = inputStream;
            this.f31268if = null;
            this.f31267for = 0;
        }
        try {
            Cthrow cthrow = this.f31268if;
            if (cthrow != null) {
                if (this.f31267for != cthrow.size()) {
                    return m34765new();
                }
                this.f31268if = null;
                this.f31267for = 0;
                return null;
            }
            if (!inputStream.markSupported()) {
                inputStream = new ByteArrayInputStream(a22.m23new(inputStream));
            }
            inputStream.mark(1);
            int i = inputStream.read();
            if (i == -1) {
                return null;
            }
            inputStream.reset();
            return i != 48 ? m34766this(inputStream) : m34761else(new Celse(inputStream));
        } catch (Exception e) {
            throw new C0426do("parsing issue: " + e.getMessage(), e);
        }
    }

    @Override // java.security.cert.CertificateFactorySpi
    public Collection engineGenerateCertificates(InputStream inputStream) throws IOException, CertificateException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        ArrayList arrayList = new ArrayList();
        while (true) {
            Certificate certificateEngineGenerateCertificate = engineGenerateCertificate(bufferedInputStream);
            if (certificateEngineGenerateCertificate == null) {
                return arrayList;
            }
            arrayList.add(certificateEngineGenerateCertificate);
        }
    }

    @Override // java.security.cert.CertificateFactorySpi
    public Iterator engineGetCertPathEncodings() {
        return Ctry.certPathEncodings.iterator();
    }
}
