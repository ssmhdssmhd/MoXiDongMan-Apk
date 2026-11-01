package android.support.v4;

import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CRL;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.util.Selector;
import org.bouncycastle.x509.X509AttributeCertificate;

/* loaded from: classes3.dex */
public class yg2 extends X509CRLSelector implements Selector {

    /* renamed from: case, reason: not valid java name */
    private X509AttributeCertificate f8216case;

    /* renamed from: do, reason: not valid java name */
    private boolean f8217do = false;

    /* renamed from: if, reason: not valid java name */
    private boolean f8219if = false;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f8218for = null;

    /* renamed from: new, reason: not valid java name */
    private byte[] f8220new = null;

    /* renamed from: try, reason: not valid java name */
    private boolean f8221try = false;

    /* renamed from: if, reason: not valid java name */
    public static yg2 m9843if(X509CRLSelector x509CRLSelector) throws IOException {
        if (x509CRLSelector == null) {
            throw new IllegalArgumentException("cannot create from null selector");
        }
        yg2 yg2Var = new yg2();
        yg2Var.setCertificateChecking(x509CRLSelector.getCertificateChecking());
        yg2Var.setDateAndTime(x509CRLSelector.getDateAndTime());
        try {
            yg2Var.setIssuerNames(x509CRLSelector.getIssuerNames());
            yg2Var.setIssuers(x509CRLSelector.getIssuers());
            yg2Var.setMaxCRLNumber(x509CRLSelector.getMaxCRL());
            yg2Var.setMinCRLNumber(x509CRLSelector.getMinCRL());
            return yg2Var;
        } catch (IOException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m9844break(boolean z) {
        this.f8217do = z;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m9845case() {
        return this.f8217do;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m9846catch(byte[] bArr) {
        this.f8220new = q3.m6371final(bArr);
    }

    /* renamed from: class, reason: not valid java name */
    public void m9847class(boolean z) {
        this.f8221try = z;
    }

    @Override // java.security.cert.X509CRLSelector, java.security.cert.CRLSelector, org.bouncycastle.util.Selector, java.security.cert.CertSelector
    public Object clone() throws IOException {
        yg2 yg2VarM9843if = m9843if(this);
        yg2VarM9843if.f8217do = this.f8217do;
        yg2VarM9843if.f8219if = this.f8219if;
        yg2VarM9843if.f8218for = this.f8218for;
        yg2VarM9843if.f8216case = this.f8216case;
        yg2VarM9843if.f8221try = this.f8221try;
        yg2VarM9843if.f8220new = q3.m6371final(this.f8220new);
        return yg2VarM9843if;
    }

    /* renamed from: const, reason: not valid java name */
    public void m9848const(BigInteger bigInteger) {
        this.f8218for = bigInteger;
    }

    /* renamed from: do, reason: not valid java name */
    public X509AttributeCertificate m9849do() {
        return this.f8216case;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m9850else() {
        return this.f8221try;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m9851for() {
        return q3.m6371final(this.f8220new);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m9852goto(X509AttributeCertificate x509AttributeCertificate) {
        this.f8216case = x509AttributeCertificate;
    }

    @Override // org.bouncycastle.util.Selector
    public boolean match(Object obj) {
        if (!(obj instanceof X509CRL)) {
            return false;
        }
        X509CRL x509crl = (X509CRL) obj;
        try {
            byte[] extensionValue = x509crl.getExtensionValue(Cif.f29332super.m32795super());
            Cgoto cgotoM33040catch = extensionValue != null ? Cgoto.m33040catch(eh2.m1921do(extensionValue)) : null;
            if (m9845case() && cgotoM33040catch == null) {
                return false;
            }
            if (m9855try() && cgotoM33040catch != null) {
                return false;
            }
            if (cgotoM33040catch != null && this.f8218for != null && cgotoM33040catch.m33043const().compareTo(this.f8218for) == 1) {
                return false;
            }
            if (this.f8221try) {
                byte[] extensionValue2 = x509crl.getExtensionValue(Cif.f29335throw.m32795super());
                byte[] bArr = this.f8220new;
                if (bArr == null) {
                    if (extensionValue2 != null) {
                        return false;
                    }
                } else if (!q3.m6362case(extensionValue2, bArr)) {
                    return false;
                }
            }
            return super.match((CRL) x509crl);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // java.security.cert.X509CRLSelector, java.security.cert.CRLSelector
    public boolean match(CRL crl) {
        return match((Object) crl);
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m9853new() {
        return this.f8218for;
    }

    /* renamed from: this, reason: not valid java name */
    public void m9854this(boolean z) {
        this.f8219if = z;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m9855try() {
        return this.f8219if;
    }
}
