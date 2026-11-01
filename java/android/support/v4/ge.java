package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ge extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private se f2103do;

    /* renamed from: for, reason: not valid java name */
    private se f2104for;

    /* renamed from: if, reason: not valid java name */
    private se f2105if;

    public ge(se seVar, se seVar2, se seVar3) {
        this.f2103do = seVar;
        this.f2105if = seVar2;
        this.f2104for = seVar3;
    }

    private ge(Csuper csuper) {
        this.f2103do = se.m7371new(csuper.mo33075final(0));
        this.f2105if = se.m7371new(csuper.mo33075final(1));
        this.f2104for = se.m7371new(csuper.mo33075final(2));
    }

    /* renamed from: new, reason: not valid java name */
    public static ge m2642new(Object obj) {
        if (obj instanceof ge) {
            return (ge) obj;
        }
        if (obj != null) {
            return new ge(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public se m2643case() {
        return this.f2105if;
    }

    /* renamed from: else, reason: not valid java name */
    public se m2644else() {
        return this.f2103do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f2103do);
        cimport.m3516do(this.f2105if);
        cimport.m3516do(this.f2104for);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public se m2645try() {
        return this.f2104for;
    }
}
