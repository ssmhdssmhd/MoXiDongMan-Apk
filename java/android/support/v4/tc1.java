package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class tc1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f6477do;

    /* renamed from: for, reason: not valid java name */
    private b1 f6478for;

    /* renamed from: if, reason: not valid java name */
    private b1 f6479if;

    /* renamed from: new, reason: not valid java name */
    private Cclass f6480new;

    public tc1(b1 b1Var, b1 b1Var2, Cclass cclass) {
        this.f6477do = new Cgoto(0L);
        this.f6479if = b1Var;
        this.f6478for = b1Var2;
        this.f6480new = cclass;
    }

    public tc1(b1 b1Var, Cclass cclass) {
        this.f6477do = new Cgoto(0L);
        this.f6478for = b1Var;
        this.f6480new = cclass;
    }

    public tc1(Csuper csuper) {
        ASN1Encodable aSN1EncodableMo33075final;
        this.f6477do = (Cgoto) csuper.mo33075final(0);
        if (csuper.mo33075final(1) instanceof Cimport) {
            this.f6479if = b1.m417case((Cimport) csuper.mo33075final(1), false);
            this.f6478for = b1.m418try(csuper.mo33075final(2));
            aSN1EncodableMo33075final = csuper.mo33075final(3);
        } else {
            this.f6478for = b1.m418try(csuper.mo33075final(1));
            aSN1EncodableMo33075final = csuper.mo33075final(2);
        }
        this.f6480new = (Cclass) aSN1EncodableMo33075final;
    }

    /* renamed from: case, reason: not valid java name */
    public static tc1 m7803case(Cimport cimport, boolean z) {
        return m7804try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static tc1 m7804try(Object obj) {
        if (obj instanceof tc1) {
            return (tc1) obj;
        }
        if (obj != null) {
            return new tc1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public b1 m7805else() {
        return this.f6479if;
    }

    /* renamed from: goto, reason: not valid java name */
    public b1 m7806goto() {
        return this.f6478for;
    }

    /* renamed from: new, reason: not valid java name */
    public Cclass m7807new() {
        return this.f6480new;
    }

    /* renamed from: this, reason: not valid java name */
    public Cgoto m7808this() {
        return this.f6477do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6477do);
        if (this.f6479if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f6479if));
        }
        cimport.m3516do(this.f6478for);
        cimport.m3516do(this.f6480new);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
