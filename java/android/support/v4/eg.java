package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class eg extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private se f1456do;

    /* renamed from: if, reason: not valid java name */
    private q70 f1457if;

    public eg(q70 q70Var) {
        if (q70Var == null) {
            throw new IllegalArgumentException("'encryptedCert' cannot be null");
        }
        this.f1457if = q70Var;
    }

    public eg(se seVar) {
        if (seVar == null) {
            throw new IllegalArgumentException("'certificate' cannot be null");
        }
        this.f1456do = seVar;
    }

    private eg(Cimport cimport) {
        if (cimport.getTagNo() == 0) {
            this.f1456do = se.m7371new(cimport.m33065const());
        } else {
            if (cimport.getTagNo() == 1) {
                this.f1457if = q70.m6423else(cimport.m33065const());
                return;
            }
            throw new IllegalArgumentException("unknown tag: " + cimport.getTagNo());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static eg m1873case(Object obj) {
        if (obj instanceof eg) {
            return (eg) obj;
        }
        if (obj instanceof Cimport) {
            return new eg((Cimport) obj);
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public se m1874new() {
        return this.f1456do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f1456do != null ? new org.bouncycastle.asn1.u(true, 0, this.f1456do) : new org.bouncycastle.asn1.u(true, 1, this.f1457if);
    }

    /* renamed from: try, reason: not valid java name */
    public q70 m1875try() {
        return this.f1457if;
    }
}
