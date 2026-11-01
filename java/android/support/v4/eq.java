package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class eq extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f1552do;

    /* renamed from: for, reason: not valid java name */
    private fr f1553for;

    /* renamed from: if, reason: not valid java name */
    private b1 f1554if;

    public eq(b1 b1Var, fr frVar) {
        this.f1552do = new Cgoto(0L);
        this.f1554if = b1Var;
        this.f1553for = frVar;
    }

    private eq(Csuper csuper) {
        this.f1552do = (Cgoto) csuper.mo33075final(0);
        this.f1554if = b1.m418try(csuper.mo33075final(1));
        this.f1553for = fr.m2388case(csuper.mo33075final(2));
    }

    /* renamed from: case, reason: not valid java name */
    public static eq m1977case(Object obj) {
        if (obj instanceof eq) {
            return (eq) obj;
        }
        if (obj != null) {
            return new eq(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static eq m1978else(Cimport cimport, boolean z) {
        return m1977case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: goto, reason: not valid java name */
    public Cgoto m1979goto() {
        return this.f1552do;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m1980new() {
        return this.f1554if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f1552do);
        cimport.m3516do(this.f1554if);
        cimport.m3516do(this.f1553for);
        return new Cpackage(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public fr m1981try() {
        return this.f1553for;
    }
}
