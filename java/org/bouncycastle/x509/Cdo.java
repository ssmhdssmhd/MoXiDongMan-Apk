package org.bouncycastle.x509;

import android.support.v4.b1;
import android.support.v4.co0;
import android.support.v4.q3;
import android.support.v4.q51;
import android.support.v4.rj0;
import android.support.v4.tg0;
import android.support.v4.ug0;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.cert.CertSelector;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.n;
import org.bouncycastle.jce.Ccase;
import org.bouncycastle.jce.Cnew;
import org.bouncycastle.util.Selector;

/* renamed from: org.bouncycastle.x509.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements CertSelector, Selector {

    /* renamed from: do, reason: not valid java name */
    public final rj0 f32709do;

    public Cdo(int i, String str, String str2, byte[] bArr) {
        this.f32709do = new rj0(new q51(i, new Ccatch(str2), new b1(new Ccatch(str)), q3.m6371final(bArr)));
    }

    public Cdo(X509Certificate x509Certificate) throws CertificateParsingException {
        try {
            this.f32709do = new rj0(new co0(m36453do(Cnew.m34949if(x509Certificate)), new Cgoto(x509Certificate.getSerialNumber())));
        } catch (Exception e) {
            throw new CertificateParsingException(e.getMessage());
        }
    }

    public Cdo(X500Principal x500Principal) {
        this(Cthrow.m36591for(x500Principal));
    }

    public Cdo(X500Principal x500Principal, BigInteger bigInteger) {
        this(Cthrow.m36591for(x500Principal), bigInteger);
    }

    public Cdo(Csuper csuper) {
        this.f32709do = rj0.m6998case(csuper);
    }

    public Cdo(Ccase ccase) {
        this.f32709do = new rj0(m36453do(ccase));
    }

    public Cdo(Ccase ccase, BigInteger bigInteger) {
        this.f32709do = new rj0(new co0(ug0.m8436case(new n(new tg0(ccase))), new Cgoto(bigInteger)));
    }

    /* renamed from: case, reason: not valid java name */
    private Object[] m36451case(tg0[] tg0VarArr) {
        ArrayList arrayList = new ArrayList(tg0VarArr.length);
        for (int i = 0; i != tg0VarArr.length; i++) {
            if (tg0VarArr[i].getTagNo() == 4) {
                try {
                    arrayList.add(new X500Principal(tg0VarArr[i].m7878else().toASN1Primitive().getEncoded()));
                } catch (IOException unused) {
                    throw new RuntimeException("badly formed Name object");
                }
            }
        }
        return arrayList.toArray(new Object[arrayList.size()]);
    }

    /* renamed from: catch, reason: not valid java name */
    private boolean m36452catch(Ccase ccase, ug0 ug0Var) {
        tg0[] tg0VarArrM8440goto = ug0Var.m8440goto();
        for (int i = 0; i != tg0VarArrM8440goto.length; i++) {
            tg0 tg0Var = tg0VarArrM8440goto[i];
            if (tg0Var.getTagNo() == 4) {
                try {
                    if (new Ccase(tg0Var.m7878else().toASN1Primitive().getEncoded()).equals(ccase)) {
                        return true;
                    }
                } catch (IOException unused) {
                    continue;
                }
            }
        }
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    private ug0 m36453do(Ccase ccase) {
        return ug0.m8436case(new n(new tg0(ccase)));
    }

    /* renamed from: this, reason: not valid java name */
    private Principal[] m36454this(ug0 ug0Var) {
        Object[] objArrM36451case = m36451case(ug0Var.m8440goto());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i != objArrM36451case.length; i++) {
            if (objArrM36451case[i] instanceof Principal) {
                arrayList.add(objArrM36451case[i]);
            }
        }
        return (Principal[]) arrayList.toArray(new Principal[arrayList.size()]);
    }

    /* renamed from: break, reason: not valid java name */
    public BigInteger m36455break() {
        if (this.f32709do.m7001new() != null) {
            return this.f32709do.m7001new().m984goto().m33044final();
        }
        return null;
    }

    @Override // java.security.cert.CertSelector, org.bouncycastle.util.Selector
    public Object clone() {
        return new Cdo((Csuper) this.f32709do.toASN1Primitive());
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m36456else() {
        if (this.f32709do.m6999else() != null) {
            return this.f32709do.m6999else().m6415goto().m33057const();
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Cdo) {
            return this.f32709do.equals(((Cdo) obj).f32709do);
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public int m36457for() {
        if (this.f32709do.m6999else() != null) {
            return this.f32709do.m6999else().m6418try().m33095final().intValue();
        }
        return -1;
    }

    /* renamed from: goto, reason: not valid java name */
    public String m36458goto() {
        if (this.f32709do.m6999else() == null) {
            return null;
        }
        this.f32709do.m6999else().m6417this().m32795super();
        return null;
    }

    public int hashCode() {
        return this.f32709do.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public String m36459if() {
        if (this.f32709do.m6999else() != null) {
            return this.f32709do.m6999else().m6416new().m420new().m32795super();
        }
        return null;
    }

    @Override // org.bouncycastle.util.Selector
    public boolean match(Object obj) {
        if (obj instanceof X509Certificate) {
            return match((Certificate) obj);
        }
        return false;
    }

    @Override // java.security.cert.CertSelector
    public boolean match(Certificate certificate) throws NoSuchAlgorithmException, NoSuchProviderException {
        if (!(certificate instanceof X509Certificate)) {
            return false;
        }
        X509Certificate x509Certificate = (X509Certificate) certificate;
        if (this.f32709do.m7001new() != null) {
            return this.f32709do.m7001new().m984goto().m33044final().equals(x509Certificate.getSerialNumber()) && m36452catch(Cnew.m34949if(x509Certificate), this.f32709do.m7001new().m982case());
        }
        if (this.f32709do.m7002try() != null && m36452catch(Cnew.m34948for(x509Certificate), this.f32709do.m7002try())) {
            return true;
        }
        if (this.f32709do.m6999else() != null) {
            MessageDigest messageDigest = MessageDigest.getInstance(m36459if(), org.bouncycastle.jce.provider.Cdo.PROVIDER_NAME);
            int iM36457for = m36457for();
            if (iM36457for == 0) {
                messageDigest.update(certificate.getPublicKey().getEncoded());
            } else if (iM36457for == 1) {
                messageDigest.update(certificate.getEncoded());
            }
            q3.m6362case(messageDigest.digest(), m36456else());
        }
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    public Principal[] m36460new() {
        if (this.f32709do.m7002try() != null) {
            return m36454this(this.f32709do.m7002try());
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public Principal[] m36461try() {
        if (this.f32709do.m7001new() != null) {
            return m36454this(this.f32709do.m7001new().m982case());
        }
        return null;
    }
}
