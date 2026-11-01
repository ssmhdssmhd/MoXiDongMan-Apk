package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Ctry;

/* loaded from: classes3.dex */
public class fb1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private tg0 f1752do;

    /* renamed from: for, reason: not valid java name */
    private Ctry f1753for;

    /* renamed from: if, reason: not valid java name */
    private ab1 f1754if;

    public fb1(ab1 ab1Var, Ctry ctry) {
        this.f1754if = ab1Var;
        this.f1753for = ctry;
    }

    public fb1(tg0 tg0Var, Ctry ctry) {
        this.f1752do = tg0Var;
        this.f1753for = ctry;
    }

    private fb1(Csuper csuper) {
        ASN1Encodable aSN1EncodableMo33075final = csuper.mo33075final(0);
        if (aSN1EncodableMo33075final instanceof Cimport) {
            Cimport cimport = (Cimport) aSN1EncodableMo33075final;
            if (cimport.getTagNo() != 0) {
                throw new IllegalArgumentException("Unknown authInfo tag: " + cimport.getTagNo());
            }
            this.f1752do = tg0.m7877try(cimport.m33065const());
        } else {
            this.f1754if = ab1.m123try(aSN1EncodableMo33075final);
        }
        this.f1753for = Ctry.m33291case(csuper.mo33075final(1));
    }

    /* renamed from: new, reason: not valid java name */
    public static fb1 m2239new(Object obj) {
        if (obj instanceof fb1) {
            return (fb1) obj;
        }
        if (obj != null) {
            return new fb1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ab1 m2240case() {
        return this.f1754if;
    }

    /* renamed from: else, reason: not valid java name */
    public tg0 m2241else() {
        return this.f1752do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f1752do != null ? new org.bouncycastle.asn1.u(false, 0, this.f1752do) : this.f1754if);
        cimport.m3516do(this.f1753for);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ctry m2242try() {
        return this.f1753for;
    }
}
