package org.bouncycastle.jcajce.provider.asymmetric.x509;

import android.support.v4.Cwhile;
import android.support.v4.af;
import android.support.v4.tg0;
import android.support.v4.tg2;
import android.support.v4.ug0;
import android.support.v4.y90;
import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CRLException;
import java.security.cert.X509CRLEntry;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cnew;
import org.bouncycastle.asn1.x509.Ccase;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.x509.case, reason: invalid class name */
/* loaded from: classes3.dex */
class Ccase extends X509CRLEntry {

    /* renamed from: do, reason: not valid java name */
    private Ccase.Cif f31257do;

    /* renamed from: for, reason: not valid java name */
    private int f31258for;

    /* renamed from: if, reason: not valid java name */
    private tg2 f31259if;

    /* renamed from: new, reason: not valid java name */
    private boolean f31260new;

    public Ccase(Ccase.Cif cif) {
        this.f31257do = cif;
        this.f31259if = null;
    }

    public Ccase(Ccase.Cif cif, boolean z, tg2 tg2Var) {
        this.f31257do = cif;
        this.f31259if = m34758for(z, tg2Var);
    }

    /* renamed from: do, reason: not valid java name */
    private Cif m34757do(Ccatch ccatch) {
        y90 y90VarM33206new = this.f31257do.m33206new();
        if (y90VarM33206new != null) {
            return y90VarM33206new.m9786case(ccatch);
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    private tg2 m34758for(boolean z, tg2 tg2Var) {
        if (!z) {
            return null;
        }
        Cif cifM34757do = m34757do(Cif.f29339while);
        if (cifM34757do == null) {
            return tg2Var;
        }
        try {
            tg0[] tg0VarArrM8440goto = ug0.m8436case(cifM34757do.m33247goto()).m8440goto();
            for (int i = 0; i < tg0VarArrM8440goto.length; i++) {
                if (tg0VarArrM8440goto[i].getTagNo() == 4) {
                    return tg2.m7884else(tg0VarArrM8440goto[i].m7878else());
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    private Set m34759if(boolean z) {
        y90 y90VarM33206new = this.f31257do.m33206new();
        if (y90VarM33206new == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Enumeration enumerationM9788const = y90VarM33206new.m9788const();
        while (enumerationM9788const.hasMoreElements()) {
            Ccatch ccatch = (Ccatch) enumerationM9788const.nextElement();
            if (z == y90VarM33206new.m9786case(ccatch).m33248this()) {
                hashSet.add(ccatch.m32795super());
            }
        }
        return hashSet;
    }

    @Override // java.security.cert.X509CRLEntry
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof Ccase ? this.f31257do.equals(((Ccase) obj).f31257do) : super.equals(this);
    }

    @Override // java.security.cert.X509CRLEntry
    public X500Principal getCertificateIssuer() {
        if (this.f31259if == null) {
            return null;
        }
        try {
            return new X500Principal(this.f31259if.getEncoded());
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.cert.X509Extension
    public Set getCriticalExtensionOIDs() {
        return m34759if(true);
    }

    @Override // java.security.cert.X509CRLEntry
    public byte[] getEncoded() throws CRLException {
        try {
            return this.f31257do.m32764do(ASN1Encoding.DER);
        } catch (IOException e) {
            throw new CRLException(e.toString());
        }
    }

    @Override // java.security.cert.X509Extension
    public byte[] getExtensionValue(String str) {
        Cif cifM34757do = m34757do(new Ccatch(str));
        if (cifM34757do == null) {
            return null;
        }
        try {
            return cifM34757do.m33246case().getEncoded();
        } catch (Exception e) {
            throw new IllegalStateException("Exception encoding: " + e.toString());
        }
    }

    @Override // java.security.cert.X509Extension
    public Set getNonCriticalExtensionOIDs() {
        return m34759if(false);
    }

    @Override // java.security.cert.X509CRLEntry
    public Date getRevocationDate() {
        return this.f31257do.m33203case().m7736new();
    }

    @Override // java.security.cert.X509CRLEntry
    public BigInteger getSerialNumber() {
        return this.f31257do.m33204else().m33044final();
    }

    @Override // java.security.cert.X509CRLEntry
    public boolean hasExtensions() {
        return this.f31257do.m33206new() != null;
    }

    @Override // java.security.cert.X509Extension
    public boolean hasUnsupportedCriticalExtension() {
        Set criticalExtensionOIDs = getCriticalExtensionOIDs();
        return (criticalExtensionOIDs == null || criticalExtensionOIDs.isEmpty()) ? false : true;
    }

    @Override // java.security.cert.X509CRLEntry
    public int hashCode() {
        if (!this.f31260new) {
            this.f31258for = super.hashCode();
            this.f31260new = true;
        }
        return this.f31258for;
    }

    @Override // java.security.cert.X509CRLEntry
    public String toString() {
        Object objM8436case;
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = Cfor.m36360new();
        stringBuffer.append("      userCertificate: ");
        stringBuffer.append(getSerialNumber());
        stringBuffer.append(strM36360new);
        stringBuffer.append("       revocationDate: ");
        stringBuffer.append(getRevocationDate());
        stringBuffer.append(strM36360new);
        stringBuffer.append("       certificateIssuer: ");
        stringBuffer.append(getCertificateIssuer());
        stringBuffer.append(strM36360new);
        y90 y90VarM33206new = this.f31257do.m33206new();
        if (y90VarM33206new != null) {
            Enumeration enumerationM9788const = y90VarM33206new.m9788const();
            if (enumerationM9788const.hasMoreElements()) {
                String str = "   crlEntryExtensions:";
                loop0: while (true) {
                    stringBuffer.append(str);
                    while (true) {
                        stringBuffer.append(strM36360new);
                        while (enumerationM9788const.hasMoreElements()) {
                            Ccatch ccatch = (Ccatch) enumerationM9788const.nextElement();
                            Cif cifM9786case = y90VarM33206new.m9786case(ccatch);
                            if (cifM9786case.m33246case() != null) {
                                Celse celse = new Celse(cifM9786case.m33246case().mo5490const());
                                stringBuffer.append("                       critical(");
                                stringBuffer.append(cifM9786case.m33248this());
                                stringBuffer.append(") ");
                                try {
                                    if (ccatch.equals(Cif.f29312class)) {
                                        objM8436case = af.m191new(Cnew.m33093class(celse.m33002break()));
                                    } else if (ccatch.equals(Cif.f29339while)) {
                                        stringBuffer.append("Certificate issuer: ");
                                        objM8436case = ug0.m8436case(celse.m33002break());
                                    } else {
                                        stringBuffer.append(ccatch.m32795super());
                                        stringBuffer.append(" value = ");
                                        stringBuffer.append(Cwhile.m9155for(celse.m33002break()));
                                        stringBuffer.append(strM36360new);
                                    }
                                    stringBuffer.append(objM8436case);
                                    stringBuffer.append(strM36360new);
                                } catch (Exception unused) {
                                    stringBuffer.append(ccatch.m32795super());
                                    stringBuffer.append(" value = ");
                                    str = "*****";
                                }
                            }
                        }
                    }
                }
            }
        }
        return stringBuffer.toString();
    }
}
