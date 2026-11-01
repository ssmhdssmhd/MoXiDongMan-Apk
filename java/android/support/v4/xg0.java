package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class xg0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final b1 f7932do;

    /* renamed from: if, reason: not valid java name */
    private final b1 f7933if;

    public xg0(b1 b1Var, b1 b1Var2) {
        this.f7932do = b1Var;
        this.f7933if = b1Var2;
    }

    private xg0(Csuper csuper) {
        if (csuper.size() != 2) {
            throw new IllegalArgumentException("ASN.1 SEQUENCE should be of length 2");
        }
        this.f7932do = b1.m418try(csuper.mo33075final(0));
        this.f7933if = b1.m418try(csuper.mo33075final(1));
    }

    /* renamed from: try, reason: not valid java name */
    public static xg0 m9504try(Object obj) {
        if (obj instanceof xg0) {
            return (xg0) obj;
        }
        if (obj != null) {
            return new xg0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m9505case() {
        return this.f7932do;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m9506new() {
        return this.f7933if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7932do);
        cimport.m3516do(this.f7933if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
