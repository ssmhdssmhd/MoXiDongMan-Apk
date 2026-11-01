package org.bouncycastle.jcajce;

import android.support.v4.q3;
import java.math.BigInteger;
import java.security.cert.CRL;
import java.security.cert.CRLSelector;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509Certificate;
import java.util.Collection;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.util.Selector;

/* renamed from: org.bouncycastle.jcajce.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo<T extends CRL> implements Selector<T> {

    /* renamed from: case, reason: not valid java name */
    private final boolean f30933case;

    /* renamed from: do, reason: not valid java name */
    private final CRLSelector f30934do;

    /* renamed from: for, reason: not valid java name */
    private final boolean f30935for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f30936if;

    /* renamed from: new, reason: not valid java name */
    private final BigInteger f30937new;

    /* renamed from: try, reason: not valid java name */
    private final byte[] f30938try;

    /* renamed from: org.bouncycastle.jcajce.do$for, reason: invalid class name */
    public static class Cfor extends X509CRLSelector {

        /* renamed from: do, reason: not valid java name */
        private final Cdo f30939do;

        public Cfor(Cdo cdo) {
            this.f30939do = cdo;
            if (cdo.f30934do instanceof X509CRLSelector) {
                X509CRLSelector x509CRLSelector = (X509CRLSelector) cdo.f30934do;
                setCertificateChecking(x509CRLSelector.getCertificateChecking());
                setDateAndTime(x509CRLSelector.getDateAndTime());
                setIssuers(x509CRLSelector.getIssuers());
                setMinCRLNumber(x509CRLSelector.getMinCRL());
                setMaxCRLNumber(x509CRLSelector.getMaxCRL());
            }
        }

        @Override // java.security.cert.X509CRLSelector, java.security.cert.CRLSelector
        public boolean match(CRL crl) {
            Cdo cdo = this.f30939do;
            return cdo == null ? crl != null : cdo.match(crl);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.do$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final CRLSelector f30941do;

        /* renamed from: if, reason: not valid java name */
        private boolean f30943if = false;

        /* renamed from: for, reason: not valid java name */
        private boolean f30942for = false;

        /* renamed from: new, reason: not valid java name */
        private BigInteger f30944new = null;

        /* renamed from: try, reason: not valid java name */
        private byte[] f30945try = null;

        /* renamed from: case, reason: not valid java name */
        private boolean f30940case = false;

        public Cif(CRLSelector cRLSelector) {
            this.f30941do = (CRLSelector) cRLSelector.clone();
        }

        /* renamed from: break, reason: not valid java name */
        public void m34563break(byte[] bArr) {
            this.f30945try = q3.m6371final(bArr);
        }

        /* renamed from: catch, reason: not valid java name */
        public void m34564catch(boolean z) {
            this.f30940case = z;
        }

        /* renamed from: class, reason: not valid java name */
        public void m34565class(BigInteger bigInteger) {
            this.f30944new = bigInteger;
        }

        /* renamed from: else, reason: not valid java name */
        public Cdo<? extends CRL> m34566else() {
            return new Cdo<>(this);
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m34567goto(boolean z) {
            this.f30942for = z;
            return this;
        }

        /* renamed from: this, reason: not valid java name */
        public Cif m34568this(boolean z) {
            this.f30943if = z;
            return this;
        }
    }

    private Cdo(Cif cif) {
        this.f30934do = cif.f30941do;
        this.f30936if = cif.f30943if;
        this.f30935for = cif.f30942for;
        this.f30937new = cif.f30944new;
        this.f30938try = cif.f30945try;
        this.f30933case = cif.f30940case;
    }

    /* renamed from: if, reason: not valid java name */
    public static Collection<? extends CRL> m34550if(Cdo cdo, CertStore certStore) throws CertStoreException {
        return certStore.getCRLs(new Cfor(cdo));
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m34551case() {
        return this.f30935for;
    }

    @Override // org.bouncycastle.util.Selector, java.security.cert.CertSelector
    public Object clone() {
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m34552else() {
        return this.f30936if;
    }

    /* renamed from: for, reason: not valid java name */
    public X509Certificate m34553for() {
        CRLSelector cRLSelector = this.f30934do;
        if (cRLSelector instanceof X509CRLSelector) {
            return ((X509CRLSelector) cRLSelector).getCertificateChecking();
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m34554goto() {
        return this.f30933case;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0067, code lost:
    
        if (android.support.v4.q3.m6362case(r0, r1) == false) goto L32;
     */
    @Override // org.bouncycastle.util.Selector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean match(CRL crl) {
        if (crl instanceof X509CRL) {
            X509CRL x509crl = (X509CRL) crl;
            try {
                byte[] extensionValue = x509crl.getExtensionValue(org.bouncycastle.asn1.x509.Cif.f29332super.m32795super());
                Cgoto cgotoM33040catch = extensionValue != null ? Cgoto.m33040catch(Cclass.m32796catch(extensionValue).mo5490const()) : null;
                if (m34552else() && cgotoM33040catch == null) {
                    return false;
                }
                if (m34551case() && cgotoM33040catch != null) {
                    return false;
                }
                if (cgotoM33040catch != null && this.f30937new != null && cgotoM33040catch.m33043const().compareTo(this.f30937new) == 1) {
                    return false;
                }
                if (this.f30933case) {
                    byte[] extensionValue2 = x509crl.getExtensionValue(org.bouncycastle.asn1.x509.Cif.f29335throw.m32795super());
                    byte[] bArr = this.f30938try;
                    if (bArr == null) {
                        if (extensionValue2 != null) {
                            return false;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return this.f30934do.match(crl);
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m34555new() {
        return q3.m6371final(this.f30938try);
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m34556try() {
        return this.f30937new;
    }
}
