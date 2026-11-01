package org.bouncycastle.x509;

import android.support.v4.rg;
import android.support.v4.tg;
import android.support.v4.w5;
import java.io.IOException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.provider.Csynchronized;

/* renamed from: org.bouncycastle.x509.class, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cclass {

    /* renamed from: do, reason: not valid java name */
    private final JcaJceHelper f32704do = new w5();

    /* renamed from: for, reason: not valid java name */
    private X509Certificate f32705for;

    /* renamed from: if, reason: not valid java name */
    private X509Certificate f32706if;

    public Cclass(tg tgVar) throws CertificateParsingException {
        if (tgVar.m7869new() != null) {
            this.f32706if = new Csynchronized(tgVar.m7869new());
        }
        if (tgVar.m7868case() != null) {
            this.f32705for = new Csynchronized(tgVar.m7868case());
        }
    }

    public Cclass(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        this.f32706if = x509Certificate;
        this.f32705for = x509Certificate2;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m36443do() throws CertificateEncodingException {
        rg rgVarM6956try;
        try {
            rg rgVarM6956try2 = null;
            if (this.f32706if != null) {
                rgVarM6956try = rg.m6956try(new Celse(this.f32706if.getEncoded()).m33002break());
                if (rgVarM6956try == null) {
                    throw new CertificateEncodingException("unable to get encoding for forward");
                }
            } else {
                rgVarM6956try = null;
            }
            if (this.f32705for != null && (rgVarM6956try2 = rg.m6956try(new Celse(this.f32705for.getEncoded()).m33002break())) == null) {
                throw new CertificateEncodingException("unable to get encoding for reverse");
            }
            return new tg(rgVarM6956try, rgVarM6956try2).m32764do(ASN1Encoding.DER);
        } catch (IOException e) {
            throw new Ctry(e.toString(), e);
        } catch (IllegalArgumentException e2) {
            throw new Ctry(e2.toString(), e2);
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Cclass)) {
            return false;
        }
        Cclass cclass = (Cclass) obj;
        X509Certificate x509Certificate = this.f32706if;
        boolean zEquals = x509Certificate != null ? x509Certificate.equals(cclass.f32706if) : cclass.f32706if == null;
        X509Certificate x509Certificate2 = this.f32705for;
        X509Certificate x509Certificate3 = cclass.f32705for;
        return zEquals && (x509Certificate2 != null ? x509Certificate2.equals(x509Certificate3) : x509Certificate3 == null);
    }

    /* renamed from: for, reason: not valid java name */
    public X509Certificate m36444for() {
        return this.f32705for;
    }

    public int hashCode() {
        X509Certificate x509Certificate = this.f32706if;
        int iHashCode = x509Certificate != null ? (-1) ^ x509Certificate.hashCode() : -1;
        X509Certificate x509Certificate2 = this.f32705for;
        return x509Certificate2 != null ? (iHashCode * 17) ^ x509Certificate2.hashCode() : iHashCode;
    }

    /* renamed from: if, reason: not valid java name */
    public X509Certificate m36445if() {
        return this.f32706if;
    }
}
