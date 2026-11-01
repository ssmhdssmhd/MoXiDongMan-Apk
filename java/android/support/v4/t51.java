package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class t51 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final ASN1Encodable f6421do;

    /* renamed from: if, reason: not valid java name */
    private final v51 f6422if;

    public t51(l70 l70Var, v51 v51Var) {
        this.f6421do = l70Var;
        this.f6422if = v51Var;
    }

    public t51(u51 u51Var, v51 v51Var) {
        this.f6421do = u51Var;
        this.f6422if = v51Var;
    }

    private t51(Csuper csuper) {
        if (csuper.size() != 2) {
            throw new IllegalArgumentException("malformed sequence");
        }
        ASN1Encodable aSN1EncodableMo33075final = csuper.mo33075final(0);
        if (!(aSN1EncodableMo33075final instanceof l70) && !(aSN1EncodableMo33075final instanceof u51)) {
            Csuper csuperM33129catch = Csuper.m33129catch(aSN1EncodableMo33075final);
            aSN1EncodableMo33075final = csuperM33129catch.size() == 2 ? l70.m4605case(csuperM33129catch) : u51.m8246case(csuperM33129catch);
        }
        this.f6421do = aSN1EncodableMo33075final;
        this.f6422if = v51.m8752new(csuper.mo33075final(1));
    }

    /* renamed from: new, reason: not valid java name */
    public static t51 m7728new(Object obj) {
        if (obj instanceof t51) {
            return (t51) obj;
        }
        if (obj != null) {
            return new t51(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m7729case() {
        return this.f6421do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6421do);
        cimport.m3516do(this.f6422if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public v51 m7730try() {
        return this.f6422if;
    }
}
