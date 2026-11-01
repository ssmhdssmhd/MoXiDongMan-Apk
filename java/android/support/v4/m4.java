package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class m4 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f3832do;

    /* renamed from: if, reason: not valid java name */
    private Cthrow f3833if;

    public m4(Ccatch ccatch, Cthrow cthrow) {
        this.f3832do = ccatch;
        this.f3833if = cthrow;
    }

    public m4(Csuper csuper) {
        this.f3832do = (Ccatch) csuper.mo33075final(0);
        this.f3833if = (Cthrow) csuper.mo33075final(1);
    }

    /* renamed from: else, reason: not valid java name */
    public static m4 m4834else(Object obj) {
        if (obj == null || (obj instanceof m4)) {
            return (m4) obj;
        }
        if (obj instanceof Csuper) {
            return new m4((Csuper) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable[] m4835case() {
        return this.f3833if.m33157public();
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m4836new() {
        return this.f3832do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3832do);
        cimport.m3516do(this.f3833if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cthrow m4837try() {
        return this.f3833if;
    }
}
