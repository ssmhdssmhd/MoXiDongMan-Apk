package org.bouncycastle.jce.provider;

import android.support.v4.do0;
import android.support.v4.rg;
import android.support.v4.tg2;
import android.support.v4.ug0;
import android.support.v4.y90;
import java.io.IOException;
import java.math.BigInteger;
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
import org.bouncycastle.asn1.x509.Ccase;
import org.bouncycastle.asn1.x509.Cdo;
import org.bouncycastle.asn1.x509.Cif;

/* renamed from: org.bouncycastle.jce.provider.protected, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cprotected extends X509CRL {

    /* renamed from: case, reason: not valid java name */
    private int f31659case;

    /* renamed from: do, reason: not valid java name */
    private Cdo f31660do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f31661for;

    /* renamed from: if, reason: not valid java name */
    private String f31662if;

    /* renamed from: new, reason: not valid java name */
    private boolean f31663new;

    /* renamed from: try, reason: not valid java name */
    private boolean f31664try = false;

    public Cprotected(Cdo cdo) throws CRLException {
        this.f31660do = cdo;
        try {
            this.f31662if = b.m34999if(cdo.m33211catch());
            if (cdo.m33211catch().m419else() != null) {
                this.f31661for = cdo.m33211catch().m419else().toASN1Primitive().m32764do(ASN1Encoding.DER);
            } else {
                this.f31661for = null;
            }
            this.f31663new = m35103for(this);
        } catch (Exception e) {
            throw new CRLException("CRL contents invalid: " + e);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m35102do(PublicKey publicKey, Signature signature) throws SignatureException, NoSuchAlgorithmException, InvalidKeyException, CRLException {
        if (!this.f31660do.m33211catch().equals(this.f31660do.m33212class().m33194catch())) {
            throw new CRLException("Signature algorithm on CertificateList does not match TBSCertList.");
        }
        signature.initVerify(publicKey);
        signature.update(getTBSCertList());
        if (!signature.verify(getSignature())) {
            throw new SignatureException("CRL does not verify with supplied public key.");
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m35103for(X509CRL x509crl) throws CRLException {
        try {
            byte[] extensionValue = x509crl.getExtensionValue(Cif.f29335throw.m32795super());
            if (extensionValue != null) {
                if (do0.m1460else(Cclass.m32796catch(extensionValue).mo5490const()).m1464break()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            throw new Cthis("Exception reading IssuingDistributionPoint", e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private Set m35104if(boolean z) {
        y90 y90VarM33200new;
        if (getVersion() != 2 || (y90VarM33200new = this.f31660do.m33212class().m33200new()) == null) {
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
    private Set m35105new() {
        Cif cifM9786case;
        HashSet hashSet = new HashSet();
        Enumeration enumerationM33216goto = this.f31660do.m33216goto();
        tg2 tg2VarM7884else = null;
        while (enumerationM33216goto.hasMoreElements()) {
            Ccase.Cif cif = (Ccase.Cif) enumerationM33216goto.nextElement();
            hashSet.add(new Cinterface(cif, this.f31663new, tg2VarM7884else));
            if (this.f31663new && cif.m33205goto() && (cifM9786case = cif.m33206new().m9786case(Cif.f29339while)) != null) {
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
        if (!(obj instanceof Cprotected)) {
            return super.equals(obj);
        }
        Cprotected cprotected = (Cprotected) obj;
        if (this.f31664try && cprotected.f31664try && cprotected.f31659case != this.f31659case) {
            return false;
        }
        return this.f31660do.equals(cprotected.f31660do);
    }

    @Override // java.security.cert.X509Extension
    public Set getCriticalExtensionOIDs() {
        return m35104if(true);
    }

    @Override // java.security.cert.X509CRL
    public byte[] getEncoded() throws CRLException {
        try {
            return this.f31660do.m32764do(ASN1Encoding.DER);
        } catch (IOException e) {
            throw new CRLException(e.toString());
        }
    }

    @Override // java.security.cert.X509Extension
    public byte[] getExtensionValue(String str) {
        Cif cifM9786case;
        y90 y90VarM33200new = this.f31660do.m33212class().m33200new();
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
        return new org.bouncycastle.jce.Ccase(tg2.m7884else(this.f31660do.m33210case().toASN1Primitive()));
    }

    @Override // java.security.cert.X509CRL
    public X500Principal getIssuerX500Principal() {
        try {
            return new X500Principal(this.f31660do.m33210case().getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override // java.security.cert.X509CRL
    public Date getNextUpdate() {
        if (this.f31660do.m33214else() != null) {
            return this.f31660do.m33214else().m7736new();
        }
        return null;
    }

    @Override // java.security.cert.X509Extension
    public Set getNonCriticalExtensionOIDs() {
        return m35104if(false);
    }

    @Override // java.security.cert.X509CRL
    public X509CRLEntry getRevokedCertificate(BigInteger bigInteger) {
        Cif cifM9786case;
        Enumeration enumerationM33216goto = this.f31660do.m33216goto();
        tg2 tg2VarM7884else = null;
        while (enumerationM33216goto.hasMoreElements()) {
            Ccase.Cif cif = (Ccase.Cif) enumerationM33216goto.nextElement();
            if (bigInteger.equals(cif.m33204else().m33044final())) {
                return new Cinterface(cif, this.f31663new, tg2VarM7884else);
            }
            if (this.f31663new && cif.m33205goto() && (cifM9786case = cif.m33206new().m9786case(Cif.f29339while)) != null) {
                tg2VarM7884else = tg2.m7884else(ug0.m8436case(cifM9786case.m33247goto()).m8440goto()[0].m7878else());
            }
        }
        return null;
    }

    @Override // java.security.cert.X509CRL
    public Set getRevokedCertificates() {
        Set setM35105new = m35105new();
        if (setM35105new.isEmpty()) {
            return null;
        }
        return Collections.unmodifiableSet(setM35105new);
    }

    @Override // java.security.cert.X509CRL
    public String getSigAlgName() {
        return this.f31662if;
    }

    @Override // java.security.cert.X509CRL
    public String getSigAlgOID() {
        return this.f31660do.m33211catch().m420new().m32795super();
    }

    @Override // java.security.cert.X509CRL
    public byte[] getSigAlgParams() {
        byte[] bArr = this.f31661for;
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
        return this.f31660do.m33209break().m33059super();
    }

    @Override // java.security.cert.X509CRL
    public byte[] getTBSCertList() throws CRLException {
        try {
            return this.f31660do.m33212class().m32764do(ASN1Encoding.DER);
        } catch (IOException e) {
            throw new CRLException(e.toString());
        }
    }

    @Override // java.security.cert.X509CRL
    public Date getThisUpdate() {
        return this.f31660do.m33213const().m7736new();
    }

    @Override // java.security.cert.X509CRL
    public int getVersion() {
        return this.f31660do.m33215final();
    }

    @Override // java.security.cert.X509Extension
    public boolean hasUnsupportedCriticalExtension() {
        Set criticalExtensionOIDs = getCriticalExtensionOIDs();
        if (criticalExtensionOIDs == null) {
            return false;
        }
        criticalExtensionOIDs.remove(Cabstract.f31582try);
        criticalExtensionOIDs.remove(Cabstract.f31571else);
        return !criticalExtensionOIDs.isEmpty();
    }

    @Override // java.security.cert.X509CRL
    public int hashCode() {
        if (!this.f31664try) {
            this.f31664try = true;
            this.f31659case = super.hashCode();
        }
        return this.f31659case;
    }

    @Override // java.security.cert.CRL
    public boolean isRevoked(Certificate certificate) {
        tg2 tg2VarM6961else;
        Cif cifM9786case;
        if (!certificate.getType().equals("X.509")) {
            throw new RuntimeException("X.509 CRL used with non X.509 Cert");
        }
        Enumeration enumerationM33216goto = this.f31660do.m33216goto();
        tg2 tg2VarM33210case = this.f31660do.m33210case();
        if (enumerationM33216goto != null) {
            X509Certificate x509Certificate = (X509Certificate) certificate;
            BigInteger serialNumber = x509Certificate.getSerialNumber();
            while (enumerationM33216goto.hasMoreElements()) {
                Ccase.Cif cifM33202try = Ccase.Cif.m33202try(enumerationM33216goto.nextElement());
                if (this.f31663new && cifM33202try.m33205goto() && (cifM9786case = cifM33202try.m33206new().m9786case(Cif.f29339while)) != null) {
                    tg2VarM33210case = tg2.m7884else(ug0.m8436case(cifM9786case.m33247goto()).m8440goto()[0].m7878else());
                }
                if (cifM33202try.m33204else().m33044final().equals(serialNumber)) {
                    if (certificate instanceof X509Certificate) {
                        tg2VarM6961else = tg2.m7884else(x509Certificate.getIssuerX500Principal().getEncoded());
                    } else {
                        try {
                            tg2VarM6961else = rg.m6956try(certificate.getEncoded()).m6961else();
                        } catch (CertificateEncodingException unused) {
                            throw new RuntimeException("Cannot process certificate");
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
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.Cprotected.toString():java.lang.String");
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey publicKey) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CRLException, NoSuchProviderException {
        Signature signature;
        try {
            signature = Signature.getInstance(getSigAlgName(), Cdo.PROVIDER_NAME);
        } catch (Exception unused) {
            signature = Signature.getInstance(getSigAlgName());
        }
        m35102do(publicKey, signature);
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey publicKey, String str) throws SignatureException, NoSuchAlgorithmException, InvalidKeyException, CRLException, NoSuchProviderException {
        m35102do(publicKey, str != null ? Signature.getInstance(getSigAlgName(), str) : Signature.getInstance(getSigAlgName()));
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey publicKey, Provider provider) throws SignatureException, NoSuchAlgorithmException, InvalidKeyException, CRLException {
        m35102do(publicKey, provider != null ? Signature.getInstance(getSigAlgName(), provider) : Signature.getInstance(getSigAlgName()));
    }
}
