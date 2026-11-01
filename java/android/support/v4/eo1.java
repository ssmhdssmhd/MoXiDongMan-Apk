package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class eo1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private og f1545do;

    /* renamed from: if, reason: not valid java name */
    private y90 f1546if;

    public eo1(og ogVar) {
        this.f1545do = ogVar;
    }

    public eo1(og ogVar, fh2 fh2Var) {
        this.f1545do = ogVar;
        this.f1546if = y90.m9782break(fh2Var.toASN1Primitive());
    }

    public eo1(og ogVar, y90 y90Var) {
        this.f1545do = ogVar;
        this.f1546if = y90Var;
    }

    private eo1(Csuper csuper) {
        this.f1545do = og.m5627try(csuper.mo33075final(0));
        if (csuper.size() > 1) {
            this.f1546if = y90.m9782break(csuper.mo33075final(1));
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static eo1 m1965case(Object obj) {
        if (obj instanceof eo1) {
            return (eo1) obj;
        }
        if (obj != null) {
            return new eo1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public og m1966new() {
        return this.f1545do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f1545do);
        y90 y90Var = this.f1546if;
        if (y90Var != null) {
            cimport.m3516do(y90Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public y90 m1967try() {
        return this.f1546if;
    }
}
