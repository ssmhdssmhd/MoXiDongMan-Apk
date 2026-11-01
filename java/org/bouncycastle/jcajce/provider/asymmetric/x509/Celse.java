package org.bouncycastle.jcajce.provider.asymmetric.x509;

import android.support.v4.do0;
import android.support.v4.rg;
import android.support.v4.tg2;
import android.support.v4.ug0;
import android.support.v4.y90;
import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CRLException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.x509.Ccase;
import org.bouncycastle.asn1.x509.Cdo;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.jcajce.util.JcaJceHelper;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.x509.else, reason: invalid class name */
/* loaded from: classes3.dex */
class Celse extends X509CRL {

    /* renamed from: case, reason: not valid java name */
    private boolean f31271case = false;

    /* renamed from: do, reason: not valid java name */
    private JcaJceHelper f31272do;

    /* renamed from: else, reason: not valid java name */
    private int f31273else;

    /* renamed from: for, reason: not valid java name */
    private String f31274for;

    /* renamed from: if, reason: not valid java name */
    private Cdo f31275if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f31276new;

    /* renamed from: try, reason: not valid java name */
    private boolean f31277try;

    public Celse(JcaJceHelper jcaJceHelper, Cdo cdo) throws CRLException {
        this.f31272do = jcaJceHelper;
        this.f31275if = cdo;
        try {
            this.f31274for = Cthis.m34781if(cdo.m33211catch());
            if (cdo.m33211catch().m419else() != null) {
                this.f31276new = cdo.m33211catch().m419else().toASN1Primitive().m32764do(ASN1Encoding.DER);
            } else {
                this.f31276new = null;
            }
            this.f31277try = m34770for(this);
        } catch (Exception e) {
            throw new CRLException("CRL contents invalid: " + e);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m34769do(PublicKey publicKey, Signature signature) throws SignatureException, NoSuchAlgorithmException, InvalidKeyException, CRLException, InvalidAlgorithmParameterException {
        if (!this.f31275if.m33211catch().equals(this.f31275if.m33212class().m33194catch())) {
            throw new CRLException("Signature algorithm on CertificateList does not match TBSCertList.");
        }
        byte[] bArr = this.f31276new;
        if (bArr != null) {
            try {
                Cthis.m34780for(signature, Cfinal.m33015else(bArr));
            } catch (IOException e) {
                throw new SignatureException("cannot decode signature parameters: " + e.getMessage());
            }
        }
        signature.initVerify(publicKey);
        signature.update(getTBSCertList());
        if (!signature.verify(getSignature())) {
            throw new SignatureException("CRL does not verify with supplied public key.");
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m34770for(X509CRL x509crl) throws CRLException {
        try {
            byte[] extensionValue = x509crl.getExtensionValue(Cif.f29335throw.m32795super());
            if (extensionValue != null) {
                if (do0.m1460else(Cclass.m32796catch(extensionValue).mo5490const()).m1464break()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            throw new Cif("Exception reading IssuingDistributionPoint", e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private Set m34771if(boolean z) {
        y90 y90VarM33200new;
        if (getVersion() != 2 || (y90VarM33200new = this.f31275if.m33212class().m33200new()) == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Enumeration enumerationM9788const = y90VarM33200new.m9788const();
        while (enumerationM9788const.hasMoreElements()) {
            Ccatch ccatch = (Ccatch) enumerationM9788const.nextElement();
            if (z == y90VarM33200new.m9786case(ccatch).m33248this()) {
                hashSet.add(ccatch.m32795super());
            }
        }
        return hashSet;
    }

    /* renamed from: new, reason: not valid java name */
    private Set m34772new() {
        Cif cifM9786case;
        HashSet hashSet = new HashSet();
        Enumeration enumerationM33216goto = this.f31275if.m33216goto();
        tg2 tg2VarM7884else = null;
        while (enumerationM33216goto.hasMoreElements()) {
            Ccase.Cif cif = (Ccase.Cif) enumerationM33216goto.nextElement();
            hashSet.add(new Ccase(cif, this.f31277try, tg2VarM7884else));
            if (this.f31277try && cif.m33205goto() && (cifM9786case = cif.m33206new().m9786case(Cif.f29339while)) != null) {
                tg2VarM7884else = tg2.m7884else(ug0.m8436case(cifM9786case.m33247goto()).m8440goto()[0].m7878else());
            }
        }
        return hashSet;
    }

    @Override // java.security.cert.X509CRL
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof X509CRL)) {
            return false;
        }
        if (!(obj instanceof Celse)) {
            return super.equals(obj);
        }
        Celse celse = (Celse) obj;
        if (this.f31271case && celse.f31271case && celse.f31273else != this.f31273else) {
            return false;
        }
        return this.f31275if.equals(celse.f31275if);
    }

    @Override // java.security.cert.X509Extension
    public Set getCriticalExtensionOIDs() {
        return m34771if(true);
    }

    @Override // java.security.cert.X509CRL
    public byte[] getEncoded() throws CRLException {
        try {
            return this.f31275if.m32764do(ASN1Encoding.DER);
        } catch (IOException e) {
            throw new CRLException(e.toString());
        }
    }

    @Override // java.security.cert.X509Extension
    public byte[] getExtensionValue(String str) {
        Cif cifM9786case;
        y90 y90VarM33200new = this.f31275if.m33212class().m33200new();
        if (y90VarM33200new == null || (cifM9786case = y90VarM33200new.m9786case(new Ccatch(str))) == null) {
            return null;
        }
        try {
            return cifM9786case.m33246case().getEncoded();
        } catch (Exception e) {
            throw new IllegalStateException("error parsing " + e.toString());
        }
    }

    @Override // java.security.cert.X509CRL
    public Principal getIssuerDN() {
        return new org.bouncycastle.jce.Ccase(tg2.m7884else(this.f31275if.m33210case().toASN1Primitive()));
    }

    @Override // java.security.cert.X509CRL
    public X500Principal getIssuerX500Principal() {
        try {
            return new X500Principal(this.f31275if.m33210case().getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override // java.security.cert.X509CRL
    public Date getNextUpdate() {
        if (this.f31275if.m33214else() != null) {
            return this.f31275if.m33214else().m7736new();
        }
        return null;
    }

    @Override // java.security.cert.X509Extension
    public Set getNonCriticalExtensionOIDs() {
        return m34771if(false);
    }

    @Override // java.security.cert.X509CRL
    public X509CRLEntry getRevokedCertificate(BigInteger bigInteger) {
        Cif cifM9786case;
        Enumeration enumerationM33216goto = this.f31275if.m33216goto();
        tg2 tg2VarM7884else = null;
        while (enumerationM33216goto.hasMoreElements()) {
            Ccase.Cif cif = (Ccase.Cif) enumerationM33216goto.nextElement();
            if (bigInteger.equals(cif.m33204else().m33044final())) {
                return new Ccase(cif, this.f31277try, tg2VarM7884else);
            }
            if (this.f31277try && cif.m33205goto() && (cifM9786case = cif.m33206new().m9786case(Cif.f29339while)) != null) {
                tg2VarM7884else = tg2.m7884else(ug0.m8436case(cifM9786case.m33247goto()).m8440goto()[0].m7878else());
            }
        }
        return null;
    }

    @Override // java.security.cert.X509CRL
    public Set getRevokedCertificates() {
        Set setM34772new = m34772new();
        if (setM34772new.isEmpty()) {
            return null;
        }
        return Collections.unmodifiableSet(setM34772new);
    }

    @Override // java.security.cert.X509CRL
    public String getSigAlgName() {
        return this.f31274for;
    }

    @Override // java.security.cert.X509CRL
    public String getSigAlgOID() {
        return this.f31275if.m33211catch().m420new().m32795super();
    }

    @Override // java.security.cert.X509CRL
    public byte[] getSigAlgParams() {
        byte[] bArr = this.f31276new;
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    @Override // java.security.cert.X509CRL
    public byte[] getSignature() {
        return this.f31275if.m33209break().m33059super();
    }

    @Override // java.security.cert.X509CRL
    public byte[] getTBSCertList() throws CRLException {
        try {
            return this.f31275if.m33212class().m32764do(ASN1Encoding.DER);
        } catch (IOException e) {
            throw new CRLException(e.toString());
        }
    }

    @Override // java.security.cert.X509CRL
    public Date getThisUpdate() {
        return this.f31275if.m33213const().m7736new();
    }

    @Override // java.security.cert.X509CRL
    public int getVersion() {
        return this.f31275if.m33215final();
    }

    @Override // java.security.cert.X509Extension
    public boolean hasUnsupportedCriticalExtension() {
        Set criticalExtensionOIDs = getCriticalExtensionOIDs();
        if (criticalExtensionOIDs == null) {
            return false;
        }
        criticalExtensionOIDs.remove(Cif.f29335throw.m32795super());
        criticalExtensionOIDs.remove(Cif.f29332super.m32795super());
        return !criticalExtensionOIDs.isEmpty();
    }

    @Override // java.security.cert.X509CRL
    public int hashCode() {
        if (!this.f31271case) {
            this.f31271case = true;
            this.f31273else = super.hashCode();
        }
        return this.f31273else;
    }

    @Override // java.security.cert.CRL
    public boolean isRevoked(Certificate certificate) {
        tg2 tg2VarM6961else;
        Cif cifM9786case;
        if (!certificate.getType().equals("X.509")) {
            throw new IllegalArgumentException("X.509 CRL used with non X.509 Cert");
        }
        Enumeration enumerationM33216goto = this.f31275if.m33216goto();
        tg2 tg2VarM33210case = this.f31275if.m33210case();
        if (enumerationM33216goto.hasMoreElements()) {
            X509Certificate x509Certificate = (X509Certificate) certificate;
            BigInteger serialNumber = x509Certificate.getSerialNumber();
            while (enumerationM33216goto.hasMoreElements()) {
                Ccase.Cif cifM33202try = Ccase.Cif.m33202try(enumerationM33216goto.nextElement());
                if (this.f31277try && cifM33202try.m33205goto() && (cifM9786case = cifM33202try.m33206new().m9786case(Cif.f29339while)) != null) {
                    tg2VarM33210case = tg2.m7884else(ug0.m8436case(cifM9786case.m33247goto()).m8440goto()[0].m7878else());
                }
                if (cifM33202try.m33204else().m33044final().equals(serialNumber)) {
                    if (certificate instanceof X509Certificate) {
                        tg2VarM6961else = tg2.m7884else(x509Certificate.getIssuerX500Principal().getEncoded());
                    } else {
                        try {
                            tg2VarM6961else = rg.m6956try(certificate.getEncoded()).m6961else();
                        } catch (CertificateEncodingException e) {
                            throw new IllegalArgumentException("Cannot process certificate: " + e.getMessage());
                        }
                    }
                    return tg2VarM33210case.equals(tg2VarM6961else);
                }
            }
        }
        return false;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:42:0x0183
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c1  */
    @Override // java.security.cert.CRL
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jcajce.provider.asymmetric.x509.Celse.toString():java.lang.String");
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey publicKey) throws SignatureException, NoSuchAlgorithmException, InvalidKeyException, CRLException, NoSuchProviderException, InvalidAlgorithmParameterException {
        Signature signature;
        try {
            signature = this.f31272do.createSignature(getSigAlgName());
        } catch (Exception unused) {
            signature = Signature.getInstance(getSigAlgName());
        }
        m34769do(publicKey, signature);
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey publicKey, String str) throws SignatureException, NoSuchAlgorithmException, InvalidKeyException, CRLException, NoSuchProviderException, InvalidAlgorithmParameterException {
        m34769do(publicKey, str != null ? Signature.getInstance(getSigAlgName(), str) : Signature.getInstance(getSigAlgName()));
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey publicKey, Provider provider) throws SignatureException, NoSuchAlgorithmException, InvalidKeyException, CRLException, InvalidAlgorithmParameterException {
        m34769do(publicKey, provider != null ? Signature.getInstance(getSigAlgName(), provider) : Signature.getInstance(getSigAlgName()));
    }
}
