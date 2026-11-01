package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class kr0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f3456do;

    /* renamed from: for, reason: not valid java name */
    private b1 f3457for;

    /* renamed from: if, reason: not valid java name */
    private nl1 f3458if;

    /* renamed from: new, reason: not valid java name */
    private Cclass f3459new;

    public kr0(nl1 nl1Var, b1 b1Var, Cclass cclass) {
        this.f3456do = nl1Var.toASN1Primitive() instanceof Cimport ? new Cgoto(2L) : new Cgoto(0L);
        this.f3458if = nl1Var;
        this.f3457for = b1Var;
        this.f3459new = cclass;
    }

    public kr0(Csuper csuper) {
        this.f3456do = (Cgoto) csuper.mo33075final(0);
        this.f3458if = nl1.m5269try(csuper.mo33075final(1));
        this.f3457for = b1.m418try(csuper.mo33075final(2));
        this.f3459new = (Cclass) csuper.mo33075final(3);
    }

    /* renamed from: try, reason: not valid java name */
    public static kr0 m4474try(Object obj) {
        if (obj instanceof kr0) {
            return (kr0) obj;
        }
        if (obj != null) {
            return new kr0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m4475case() {
        return this.f3457for;
    }

    /* renamed from: else, reason: not valid java name */
    public nl1 m4476else() {
        return this.f3458if;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cgoto m4477goto() {
        return this.f3456do;
    }

    /* renamed from: new, reason: not valid java name */
    public Cclass m4478new() {
        return this.f3459new;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3456do);
        cimport.m3516do(this.f3458if);
        cimport.m3516do(this.f3457for);
        cimport.m3516do(this.f3459new);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
