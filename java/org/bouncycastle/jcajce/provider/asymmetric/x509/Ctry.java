package org.bouncycastle.jcajce.provider.asymmetric.x509;

import android.support.v4.Cimport;
import android.support.v4.er;
import android.support.v4.ky1;
import android.support.v4.w5;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.security.NoSuchProviderException;
import java.security.cert.CertPath;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.q;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.util.io.pem.Cdo;
import org.bouncycastle.util.io.pem.Cfor;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.x509.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry extends CertPath {
    public static final List certPathEncodings;
    private List certificates;
    private final JcaJceHelper helper;

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add("PkiPath");
        arrayList.add("PEM");
        arrayList.add("PKCS7");
        certPathEncodings = Collections.unmodifiableList(arrayList);
    }

    public Ctry(InputStream inputStream, String str) throws CertificateException {
        super("X.509");
        w5 w5Var = new w5();
        this.helper = w5Var;
        try {
            if (!str.equalsIgnoreCase("PkiPath")) {
                if (!str.equalsIgnoreCase("PKCS7") && !str.equalsIgnoreCase("PEM")) {
                    throw new CertificateException("unsupported encoding: " + str);
                }
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                this.certificates = new ArrayList();
                CertificateFactory certificateFactoryCreateCertificateFactory = w5Var.createCertificateFactory("X.509");
                while (true) {
                    Certificate certificateGenerateCertificate = certificateFactoryCreateCertificateFactory.generateCertificate(bufferedInputStream);
                    if (certificateGenerateCertificate == null) {
                        break;
                    } else {
                        this.certificates.add(certificateGenerateCertificate);
                    }
                }
            } else {
                Cfinal cfinalM33002break = new Celse(inputStream).m33002break();
                if (!(cfinalM33002break instanceof Csuper)) {
                    throw new CertificateException("input stream does not contain a ASN1 SEQUENCE while reading PkiPath encoded data to load CertPath");
                }
                Enumeration enumerationMo33076super = ((Csuper) cfinalM33002break).mo33076super();
                this.certificates = new ArrayList();
                CertificateFactory certificateFactoryCreateCertificateFactory2 = w5Var.createCertificateFactory("X.509");
                while (enumerationMo33076super.hasMoreElements()) {
                    this.certificates.add(0, certificateFactoryCreateCertificateFactory2.generateCertificate(new ByteArrayInputStream(((ASN1Encodable) enumerationMo33076super.nextElement()).toASN1Primitive().m32764do(ASN1Encoding.DER))));
                }
            }
            this.certificates = m34782do(this.certificates);
        } catch (IOException e) {
            throw new CertificateException("IOException throw while decoding CertPath:\n" + e.toString());
        } catch (NoSuchProviderException e2) {
            throw new CertificateException("BouncyCastle provider not found while trying to get a CertificateFactory:\n" + e2.toString());
        }
    }

    public Ctry(List list) {
        super("X.509");
        this.helper = new w5();
        this.certificates = m34782do(new ArrayList(list));
    }

    /* renamed from: do, reason: not valid java name */
    private List m34782do(List list) {
        boolean z;
        boolean z2;
        if (list.size() < 2) {
            return list;
        }
        X500Principal issuerX500Principal = ((X509Certificate) list.get(0)).getIssuerX500Principal();
        int i = 1;
        while (true) {
            if (i == list.size()) {
                z = true;
                break;
            }
            if (!issuerX500Principal.equals(((X509Certificate) list.get(i)).getSubjectX500Principal())) {
                z = false;
                break;
            }
            issuerX500Principal = ((X509Certificate) list.get(i)).getIssuerX500Principal();
            i++;
        }
        if (z) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list);
        for (int i2 = 0; i2 < list.size(); i2++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i2);
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            int i3 = 0;
            while (true) {
                if (i3 == list.size()) {
                    z2 = false;
                    break;
                }
                if (((X509Certificate) list.get(i3)).getIssuerX500Principal().equals(subjectX500Principal)) {
                    z2 = true;
                    break;
                }
                i3++;
            }
            if (!z2) {
                arrayList.add(x509Certificate);
                list.remove(i2);
            }
        }
        if (arrayList.size() > 1) {
            return arrayList2;
        }
        for (int i4 = 0; i4 != arrayList.size(); i4++) {
            X500Principal issuerX500Principal2 = ((X509Certificate) arrayList.get(i4)).getIssuerX500Principal();
            int i5 = 0;
            while (true) {
                if (i5 < list.size()) {
                    X509Certificate x509Certificate2 = (X509Certificate) list.get(i5);
                    if (issuerX500Principal2.equals(x509Certificate2.getSubjectX500Principal())) {
                        arrayList.add(x509Certificate2);
                        list.remove(i5);
                        break;
                    }
                    i5++;
                }
            }
        }
        return list.size() > 0 ? arrayList2 : arrayList;
    }

    /* renamed from: for, reason: not valid java name */
    private byte[] m34783for(ASN1Encodable aSN1Encodable) throws CertificateEncodingException {
        try {
            return aSN1Encodable.toASN1Primitive().m32764do(ASN1Encoding.DER);
        } catch (IOException e) {
            throw new CertificateEncodingException("Exception thrown: " + e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private Cfinal m34784if(X509Certificate x509Certificate) throws CertificateEncodingException {
        try {
            return new Celse(x509Certificate.getEncoded()).m33002break();
        } catch (Exception e) {
            throw new CertificateEncodingException("Exception while encoding certificate: " + e.toString());
        }
    }

    @Override // java.security.cert.CertPath
    public List getCertificates() {
        return Collections.unmodifiableList(new ArrayList(this.certificates));
    }

    @Override // java.security.cert.CertPath
    public byte[] getEncoded() throws CertificateEncodingException {
        Iterator encodings = getEncodings();
        if (!encodings.hasNext()) {
            return null;
        }
        Object next = encodings.next();
        if (next instanceof String) {
            return getEncoded((String) next);
        }
        return null;
    }

    @Override // java.security.cert.CertPath
    public byte[] getEncoded(String str) throws IOException, CertificateEncodingException {
        if (str.equalsIgnoreCase("PkiPath")) {
            Cimport cimport = new Cimport();
            List list = this.certificates;
            ListIterator listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                cimport.m3516do(m34784if((X509Certificate) listIterator.previous()));
            }
            return m34783for(new n(cimport));
        }
        int i = 0;
        if (str.equalsIgnoreCase("PKCS7")) {
            er erVar = new er(PKCSObjectIdentifiers.data, null);
            Cimport cimport2 = new Cimport();
            while (i != this.certificates.size()) {
                cimport2.m3516do(m34784if((X509Certificate) this.certificates.get(i)));
                i++;
            }
            return m34783for(new er(PKCSObjectIdentifiers.signedData, new ky1(new Cgoto(1L), new q(), erVar, new q(cimport2), null, new q())));
        }
        if (!str.equalsIgnoreCase("PEM")) {
            throw new CertificateEncodingException("unsupported encoding: " + str);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Cfor cfor = new Cfor(new OutputStreamWriter(byteArrayOutputStream));
        while (i != this.certificates.size()) {
            try {
                cfor.m36378for(new Cdo("CERTIFICATE", ((X509Certificate) this.certificates.get(i)).getEncoded()));
                i++;
            } catch (Exception unused) {
                throw new CertificateEncodingException("can't encode certificate for PEM encoded path");
            }
        }
        cfor.close();
        return byteArrayOutputStream.toByteArray();
    }

    @Override // java.security.cert.CertPath
    public Iterator getEncodings() {
        return certPathEncodings.iterator();
    }
}
