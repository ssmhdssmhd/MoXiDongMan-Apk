package org.bouncycastle.jce.provider;

import android.support.v4.tg;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchProviderException;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.security.cert.CRLSelector;
import java.security.cert.CertSelector;
import java.security.cert.CertStoreException;
import java.security.cert.CertStoreParameters;
import java.security.cert.CertStoreSpi;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509CertSelector;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.jce.Ctry;

/* loaded from: classes3.dex */
public class a extends CertStoreSpi {

    /* renamed from: for, reason: not valid java name */
    private static String f31560for = "ignore";

    /* renamed from: if, reason: not valid java name */
    private static String f31561if = "com.sun.jndi.ldap.LdapCtxFactory";

    /* renamed from: new, reason: not valid java name */
    private static final String f31562new = "none";

    /* renamed from: try, reason: not valid java name */
    private static final String f31563try = "com.sun.jndi.url";

    /* renamed from: do, reason: not valid java name */
    private Ctry f31564do;

    public a(CertStoreParameters certStoreParameters) throws InvalidAlgorithmParameterException {
        super(certStoreParameters);
        if (certStoreParameters instanceof Ctry) {
            this.f31564do = (Ctry) certStoreParameters;
            return;
        }
        throw new InvalidAlgorithmParameterException(a.class.getName() + ": parameter must be a " + Ctry.class.getName() + " object\n" + certStoreParameters.toString());
    }

    /* renamed from: case, reason: not valid java name */
    private String m34954case(String str, String str2) {
        String strSubstring = str.substring(str.toLowerCase().indexOf(str2.toLowerCase()) + str2.length());
        int iIndexOf = strSubstring.indexOf(44);
        if (iIndexOf == -1) {
            iIndexOf = strSubstring.length();
        }
        while (strSubstring.charAt(iIndexOf - 1) == '\\') {
            iIndexOf = strSubstring.indexOf(44, iIndexOf + 1);
            if (iIndexOf == -1) {
                iIndexOf = strSubstring.length();
            }
        }
        String strSubstring2 = strSubstring.substring(0, iIndexOf);
        String strSubstring3 = strSubstring2.substring(strSubstring2.indexOf(61) + 1);
        if (strSubstring3.charAt(0) == ' ') {
            strSubstring3 = strSubstring3.substring(1);
        }
        if (strSubstring3.startsWith("\"")) {
            strSubstring3 = strSubstring3.substring(1);
        }
        return strSubstring3.endsWith("\"") ? strSubstring3.substring(0, strSubstring3.length() - 1) : strSubstring3;
    }

    /* renamed from: do, reason: not valid java name */
    private Set m34955do(X509CertSelector x509CertSelector, String[] strArr, String str, String str2) throws CertStoreException {
        String name;
        String string;
        Set setM34956else;
        HashSet hashSet = new HashSet();
        try {
            if (x509CertSelector.getSubjectAsBytes() != null || x509CertSelector.getSubjectAsString() != null || x509CertSelector.getCertificate() != null) {
                if (x509CertSelector.getCertificate() != null) {
                    name = x509CertSelector.getCertificate().getSubjectX500Principal().getName("RFC1779");
                    string = x509CertSelector.getCertificate().getSerialNumber().toString();
                } else {
                    name = x509CertSelector.getSubjectAsBytes() != null ? new X500Principal(x509CertSelector.getSubjectAsBytes()).getName("RFC1779") : x509CertSelector.getSubjectAsString();
                    string = null;
                }
                hashSet.addAll(m34956else(str, "*" + m34954case(name, str2) + "*", strArr));
                if (string != null && this.f31564do.m35176instanceof() != null) {
                    setM34956else = m34956else(this.f31564do.m35176instanceof(), "*" + string + "*", strArr);
                }
                return hashSet;
            }
            setM34956else = m34956else(str, "*", strArr);
            hashSet.addAll(setM34956else);
            return hashSet;
        } catch (IOException e) {
            throw new CertStoreException("exception processing selector: " + e);
        }
    }

    /* renamed from: else, reason: not valid java name */
    private Set m34956else(String str, String str2, String[] strArr) throws CertStoreException {
        String str3 = str + "=" + str2;
        DirContext dirContextM34958if = null;
        if (str == null) {
            str3 = null;
        }
        HashSet hashSet = new HashSet();
        try {
            try {
                dirContextM34958if = m34958if();
                SearchControls searchControls = new SearchControls();
                searchControls.setSearchScope(2);
                searchControls.setCountLimit(0L);
                for (String str4 : strArr) {
                    String[] strArr2 = {str4};
                    searchControls.setReturningAttributes(strArr2);
                    String str5 = "(&(" + str3 + ")(" + strArr2[0] + "=*))";
                    if (str3 == null) {
                        str5 = "(" + strArr2[0] + "=*)";
                    }
                    NamingEnumeration namingEnumerationSearch = dirContextM34958if.search(this.f31564do.m35191throw(), str5, searchControls);
                    while (namingEnumerationSearch.hasMoreElements()) {
                        NamingEnumeration all = ((Attribute) ((SearchResult) namingEnumerationSearch.next()).getAttributes().getAll().next()).getAll();
                        while (all.hasMore()) {
                            hashSet.add(all.next());
                        }
                    }
                }
                if (dirContextM34958if != null) {
                    try {
                        dirContextM34958if.close();
                    } catch (Exception unused) {
                    }
                }
                return hashSet;
            } catch (Exception e) {
                throw new CertStoreException("Error getting results from LDAP directory " + e);
            }
        } catch (Throwable th) {
            if (dirContextM34958if != null) {
                try {
                    dirContextM34958if.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private Set m34957for(X509CertSelector x509CertSelector) throws CertStoreException {
        String[] strArr = {this.f31564do.m35196while()};
        Set setM34955do = m34955do(x509CertSelector, strArr, this.f31564do.m35186strictfp(), this.f31564do.m35175import());
        if (setM34955do.isEmpty()) {
            setM34955do.addAll(m34956else(null, "*", strArr));
        }
        return setM34955do;
    }

    /* renamed from: if, reason: not valid java name */
    private DirContext m34958if() throws NamingException {
        Properties properties = new Properties();
        properties.setProperty("java.naming.factory.initial", f31561if);
        properties.setProperty("java.naming.batchsize", "0");
        properties.setProperty("java.naming.provider.url", this.f31564do.m35193transient());
        properties.setProperty("java.naming.factory.url.pkgs", f31563try);
        properties.setProperty("java.naming.referral", f31560for);
        properties.setProperty("java.naming.security.authentication", "none");
        return new InitialDirContext(properties);
    }

    /* renamed from: new, reason: not valid java name */
    private Set m34959new(X509CertSelector x509CertSelector) throws CertStoreException {
        String[] strArr = {this.f31564do.m35184return()};
        Set setM34955do = m34955do(x509CertSelector, strArr, this.f31564do.m35177interface(), this.f31564do.m35185static());
        if (setM34955do.isEmpty()) {
            setM34955do.addAll(m34956else(null, "*", strArr));
        }
        return setM34955do;
    }

    /* renamed from: try, reason: not valid java name */
    private Set m34960try(X509CertSelector x509CertSelector) throws CertStoreException {
        return m34955do(x509CertSelector, new String[]{this.f31564do.m35189synchronized()}, this.f31564do.m35174implements(), this.f31564do.a());
    }

    @Override // java.security.cert.CertStoreSpi
    public Collection engineGetCRLs(CRLSelector cRLSelector) throws CertificateException, CRLException, NoSuchProviderException, CertStoreException {
        String strM35183public;
        String name;
        String[] strArr = {this.f31564do.m35178native()};
        if (!(cRLSelector instanceof X509CRLSelector)) {
            throw new CertStoreException("selector is not a X509CRLSelector");
        }
        X509CRLSelector x509CRLSelector = (X509CRLSelector) cRLSelector;
        HashSet hashSet = new HashSet();
        String strM35195volatile = this.f31564do.m35195volatile();
        HashSet hashSet2 = new HashSet();
        if (x509CRLSelector.getIssuerNames() != null) {
            for (Object obj : x509CRLSelector.getIssuerNames()) {
                if (obj instanceof String) {
                    strM35183public = this.f31564do.m35183public();
                    name = (String) obj;
                } else {
                    strM35183public = this.f31564do.m35183public();
                    name = new X500Principal((byte[]) obj).getName("RFC1779");
                }
                hashSet2.addAll(m34956else(strM35195volatile, "*" + m34954case(name, strM35183public) + "*", strArr));
            }
        } else {
            hashSet2.addAll(m34956else(strM35195volatile, "*", strArr));
        }
        hashSet2.addAll(m34956else(null, "*", strArr));
        Iterator it = hashSet2.iterator();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509", Cdo.PROVIDER_NAME);
            while (it.hasNext()) {
                CRL crlGenerateCRL = certificateFactory.generateCRL(new ByteArrayInputStream((byte[]) it.next()));
                if (x509CRLSelector.match(crlGenerateCRL)) {
                    hashSet.add(crlGenerateCRL);
                }
            }
            return hashSet;
        } catch (Exception e) {
            throw new CertStoreException("CRL cannot be constructed from LDAP result " + e);
        }
    }

    @Override // java.security.cert.CertStoreSpi
    public Collection engineGetCertificates(CertSelector certSelector) throws CertificateException, NoSuchProviderException, CertStoreException {
        if (!(certSelector instanceof X509CertSelector)) {
            throw new CertStoreException("selector is not a X509CertSelector");
        }
        X509CertSelector x509CertSelector = (X509CertSelector) certSelector;
        HashSet hashSet = new HashSet();
        Set<byte[]> setM34960try = m34960try(x509CertSelector);
        setM34960try.addAll(m34957for(x509CertSelector));
        setM34960try.addAll(m34959new(x509CertSelector));
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509", Cdo.PROVIDER_NAME);
            for (byte[] bArr : setM34960try) {
                if (bArr != null && bArr.length != 0) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(bArr);
                    try {
                        tg tgVarM7867try = tg.m7867try(new Celse(bArr).m33002break());
                        arrayList.clear();
                        if (tgVarM7867try.m7869new() != null) {
                            arrayList.add(tgVarM7867try.m7869new().getEncoded());
                        }
                        if (tgVarM7867try.m7868case() != null) {
                            arrayList.add(tgVarM7867try.m7868case().getEncoded());
                        }
                    } catch (IOException | IllegalArgumentException unused) {
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        try {
                            Certificate certificateGenerateCertificate = certificateFactory.generateCertificate(new ByteArrayInputStream((byte[]) it.next()));
                            if (x509CertSelector.match(certificateGenerateCertificate)) {
                                hashSet.add(certificateGenerateCertificate);
                            }
                        } catch (Exception unused2) {
                        }
                    }
                }
            }
            return hashSet;
        } catch (Exception e) {
            throw new CertStoreException("certificate cannot be constructed from LDAP result: " + e);
        }
    }
}
