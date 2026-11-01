package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class n4 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f4111do;

    /* renamed from: if, reason: not valid java name */
    private Cthrow f4112if;

    public n4(Ccatch ccatch, Cthrow cthrow) {
        this.f4111do = ccatch;
        this.f4112if = cthrow;
    }

    private n4(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f4111do = Ccatch.m32790throw(csuper.mo33075final(0));
            this.f4112if = Cthrow.m33151class(csuper.mo33075final(1));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static n4 m5080else(Object obj) {
        if (obj instanceof n4) {
            return (n4) obj;
        }
        if (obj != null) {
            return new n4(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable[] m5081case() {
        return this.f4112if.m33157public();
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m5082new() {
        return new Ccatch(this.f4111do.m32795super());
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4111do);
        cimport.m3516do(this.f4112if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cthrow m5083try() {
        return this.f4112if;
    }
}
