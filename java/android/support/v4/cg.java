package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class cg extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public b1 f769do;

    /* renamed from: for, reason: not valid java name */
    public Cclass f770for;

    /* renamed from: if, reason: not valid java name */
    public Cclass f771if;

    /* renamed from: new, reason: not valid java name */
    public Cgoto f772new;

    public cg(b1 b1Var, Cclass cclass, Cclass cclass2, Cgoto cgoto) {
        this.f769do = b1Var;
        this.f771if = cclass;
        this.f770for = cclass2;
        this.f772new = cgoto;
    }

    private cg(Csuper csuper) {
        this.f769do = b1.m418try(csuper.mo33075final(0));
        this.f771if = (Cclass) csuper.mo33075final(1);
        this.f770for = (Cclass) csuper.mo33075final(2);
        this.f772new = (Cgoto) csuper.mo33075final(3);
    }

    /* renamed from: case, reason: not valid java name */
    public static cg m903case(Cimport cimport, boolean z) {
        return m904try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static cg m904try(Object obj) {
        if (obj instanceof cg) {
            return (cg) obj;
        }
        if (obj != null) {
            return new cg(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public Cclass m905else() {
        return this.f770for;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cclass m906goto() {
        return this.f771if;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m907new() {
        return this.f769do;
    }

    /* renamed from: this, reason: not valid java name */
    public Cgoto m908this() {
        return this.f772new;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f769do);
        cimport.m3516do(this.f771if);
        cimport.m3516do(this.f770for);
        cimport.m3516do(this.f772new);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
