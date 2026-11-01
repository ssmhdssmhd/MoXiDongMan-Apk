package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class mq0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f3997do;

    /* renamed from: for, reason: not valid java name */
    private b1 f3998for;

    /* renamed from: if, reason: not valid java name */
    private lq0 f3999if;

    /* renamed from: new, reason: not valid java name */
    private Cclass f4000new;

    public mq0(lq0 lq0Var, b1 b1Var, Cclass cclass) {
        this.f3997do = new Cgoto(4L);
        this.f3999if = lq0Var;
        this.f3998for = b1Var;
        this.f4000new = cclass;
    }

    public mq0(Csuper csuper) {
        this.f3997do = (Cgoto) csuper.mo33075final(0);
        this.f3999if = lq0.m4734try(csuper.mo33075final(1));
        this.f3998for = b1.m418try(csuper.mo33075final(2));
        this.f4000new = (Cclass) csuper.mo33075final(3);
    }

    /* renamed from: case, reason: not valid java name */
    public static mq0 m4976case(Cimport cimport, boolean z) {
        return m4977try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static mq0 m4977try(Object obj) {
        if (obj instanceof mq0) {
            return (mq0) obj;
        }
        if (obj != null) {
            return new mq0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public lq0 m4978else() {
        return this.f3999if;
    }

    /* renamed from: goto, reason: not valid java name */
    public b1 m4979goto() {
        return this.f3998for;
    }

    /* renamed from: new, reason: not valid java name */
    public Cclass m4980new() {
        return this.f4000new;
    }

    /* renamed from: this, reason: not valid java name */
    public Cgoto m4981this() {
        return this.f3997do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3997do);
        cimport.m3516do(this.f3999if);
        cimport.m3516do(this.f3998for);
        cimport.m3516do(this.f4000new);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
