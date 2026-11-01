package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class og1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private qa1 f4606do;

    /* renamed from: if, reason: not valid java name */
    private la1 f4607if;

    public og1(qa1 qa1Var, la1 la1Var) {
        this.f4606do = qa1Var;
        this.f4607if = la1Var;
    }

    private og1(Csuper csuper) {
        this.f4606do = qa1.m6450else(csuper.mo33075final(0));
        this.f4607if = la1.m4630case(csuper.mo33075final(1));
    }

    /* renamed from: case, reason: not valid java name */
    public static og1 m5638case(Object obj) {
        if (obj instanceof og1) {
            return (og1) obj;
        }
        if (obj != null) {
            return new og1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public la1 m5639new() {
        return this.f4607if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4606do);
        cimport.m3516do(this.f4607if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public qa1 m5640try() {
        return this.f4606do;
    }
}
