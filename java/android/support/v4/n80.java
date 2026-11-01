package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class n80 extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private b72 f4141do;

    public n80(b72 b72Var) {
        this.f4141do = b72Var;
    }

    private n80(Cimport cimport) {
        if (cimport.getTagNo() == 0) {
            this.f4141do = b72.m460case(cimport, false);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static n80 m5121new(Object obj) {
        if (obj == null || (obj instanceof n80)) {
            return (n80) obj;
        }
        if (obj instanceof Cimport) {
            return new n80(Cimport.m33063catch(obj));
        }
        throw new IllegalArgumentException("unknown object in getInstance");
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        if (this.f4141do != null) {
            return new org.bouncycastle.asn1.u(false, 0, this.f4141do);
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public b72 m5122try() {
        return this.f4141do;
    }
}
