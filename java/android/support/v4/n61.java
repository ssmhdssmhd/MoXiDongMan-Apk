package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class n61 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private l61 f4127do;

    /* renamed from: if, reason: not valid java name */
    private r81 f4128if;

    public n61(l61 l61Var) {
        this(l61Var, null);
    }

    public n61(l61 l61Var, r81 r81Var) {
        this.f4127do = l61Var;
        this.f4128if = r81Var;
    }

    private n61(Csuper csuper) {
        if (csuper.size() < 1 || csuper.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        this.f4127do = l61.m4602new(csuper.mo33075final(0));
        if (csuper.size() > 1) {
            this.f4128if = r81.m6846case(csuper.mo33075final(1));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static n61 m5108new(Object obj) {
        if (obj instanceof n61) {
            return (n61) obj;
        }
        if (obj != null) {
            return new n61(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public r81 m5109case() {
        return this.f4128if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4127do);
        r81 r81Var = this.f4128if;
        if (r81Var != null) {
            cimport.m3516do(r81Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public l61 m5110try() {
        return this.f4127do;
    }
}
