package org.bouncycastle.x509;

import android.support.v4.j4;
import android.support.v4.sd2;
import android.support.v4.tg0;
import android.support.v4.ug0;
import java.io.IOException;
import java.security.Principal;
import java.security.cert.CertSelector;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.n;
import org.bouncycastle.jce.Ccase;
import org.bouncycastle.util.Selector;

/* renamed from: org.bouncycastle.x509.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements CertSelector, Selector {

    /* renamed from: do, reason: not valid java name */
    public final ASN1Encodable f32743do;

    public Cif(j4 j4Var) {
        this.f32743do = j4Var.m3717case();
    }

    public Cif(X500Principal x500Principal) throws IOException {
        this(new Ccase(x500Principal.getEncoded()));
    }

    public Cif(Ccase ccase) {
        this.f32743do = new sd2(ug0.m8436case(new n(new tg0(ccase))));
    }

    /* renamed from: do, reason: not valid java name */
    private Object[] m36518do() {
        ASN1Encodable aSN1Encodable = this.f32743do;
        tg0[] tg0VarArrM8440goto = (aSN1Encodable instanceof sd2 ? ((sd2) aSN1Encodable).m7368else() : (ug0) aSN1Encodable).m8440goto();
        ArrayList arrayList = new ArrayList(tg0VarArrM8440goto.length);
        for (int i = 0; i != tg0VarArrM8440goto.length; i++) {
            if (tg0VarArrM8440goto[i].getTagNo() == 4) {
                try {
                    arrayList.add(new X500Principal(tg0VarArrM8440goto[i].m7878else().toASN1Primitive().getEncoded()));
                } catch (IOException unused) {
                    throw new RuntimeException("badly formed Name object");
                }
            }
        }
        return arrayList.toArray(new Object[arrayList.size()]);
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m36519for(X500Principal x500Principal, ug0 ug0Var) {
        tg0[] tg0VarArrM8440goto = ug0Var.m8440goto();
        for (int i = 0; i != tg0VarArrM8440goto.length; i++) {
            tg0 tg0Var = tg0VarArrM8440goto[i];
            if (tg0Var.getTagNo() == 4) {
                try {
                    if (new X500Principal(tg0Var.m7878else().toASN1Primitive().getEncoded()).equals(x500Principal)) {
                        return true;
                    }
                } catch (IOException unused) {
                    continue;
                }
            }
        }
        return false;
    }

    @Override // java.security.cert.CertSelector, org.bouncycastle.util.Selector
    public Object clone() {
        return new Cif(j4.m3715new(this.f32743do));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Cif) {
            return this.f32743do.equals(((Cif) obj).f32743do);
        }
        return false;
    }

    public int hashCode() {
        return this.f32743do.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public Principal[] m36520if() {
        Object[] objArrM36518do = m36518do();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i != objArrM36518do.length; i++) {
            if (objArrM36518do[i] instanceof Principal) {
                arrayList.add(objArrM36518do[i]);
            }
        }
        return (Principal[]) arrayList.toArray(new Principal[arrayList.size()]);
    }

    @Override // org.bouncycastle.util.Selector
    public boolean match(Object obj) {
        if (obj instanceof X509Certificate) {
            return match((Certificate) obj);
        }
        return false;
    }

    @Override // java.security.cert.CertSelector
    public boolean match(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            return false;
        }
        X509Certificate x509Certificate = (X509Certificate) certificate;
        ASN1Encodable aSN1Encodable = this.f32743do;
        if (aSN1Encodable instanceof sd2) {
            sd2 sd2Var = (sd2) aSN1Encodable;
            if (sd2Var.m7370new() != null) {
                return sd2Var.m7370new().m984goto().m33044final().equals(x509Certificate.getSerialNumber()) && m36519for(x509Certificate.getIssuerX500Principal(), sd2Var.m7370new().m982case());
            }
            if (m36519for(x509Certificate.getSubjectX500Principal(), sd2Var.m7368else())) {
                return true;
            }
        } else {
            if (m36519for(x509Certificate.getSubjectX500Principal(), (ug0) aSN1Encodable)) {
                return true;
            }
        }
        return false;
    }
}
