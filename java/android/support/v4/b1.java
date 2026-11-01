package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class b1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f306do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f307if;

    public b1(Ccatch ccatch) {
        this.f306do = ccatch;
    }

    public b1(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f306do = ccatch;
        this.f307if = aSN1Encodable;
    }

    private b1(Csuper csuper) {
        if (csuper.size() >= 1 && csuper.size() <= 2) {
            this.f306do = Ccatch.m32790throw(csuper.mo33075final(0));
            this.f307if = csuper.size() == 2 ? csuper.mo33075final(1) : null;
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static b1 m417case(Cimport cimport, boolean z) {
        return m418try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static b1 m418try(Object obj) {
        if (obj instanceof b1) {
            return (b1) obj;
        }
        if (obj != null) {
            return new b1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public ASN1Encodable m419else() {
        return this.f307if;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m420new() {
        return this.f306do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f306do);
        ASN1Encodable aSN1Encodable = this.f307if;
        if (aSN1Encodable != null) {
            cimport.m3516do(aSN1Encodable);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
