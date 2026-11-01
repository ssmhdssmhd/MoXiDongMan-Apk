package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cfor;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class wz0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cfor f7730do;

    /* renamed from: for, reason: not valid java name */
    private org.bouncycastle.asn1.g f7731for;

    /* renamed from: if, reason: not valid java name */
    private org.bouncycastle.asn1.v f7732if;

    /* renamed from: new, reason: not valid java name */
    private w4 f7733new;

    public wz0(Cfor cfor, org.bouncycastle.asn1.v vVar, org.bouncycastle.asn1.g gVar, w4 w4Var) {
        this.f7730do = cfor;
        this.f7732if = vVar;
        this.f7731for = gVar;
        this.f7733new = w4Var;
    }

    private wz0(Csuper csuper) {
        this.f7730do = Cfor.m33019const(csuper.mo33075final(0));
        int i = 1;
        if (1 < csuper.size() && (csuper.mo33075final(1) instanceof org.bouncycastle.asn1.v)) {
            this.f7732if = org.bouncycastle.asn1.v.m33177catch(csuper.mo33075final(1));
            i = 2;
        }
        if (i < csuper.size() && (csuper.mo33075final(i) instanceof org.bouncycastle.asn1.g)) {
            this.f7731for = org.bouncycastle.asn1.g.m33023catch(csuper.mo33075final(i));
            i++;
        }
        if (i < csuper.size()) {
            this.f7733new = w4.m9045try(csuper.mo33075final(i));
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static wz0 m9314try(Object obj) {
        if (obj instanceof wz0) {
            return (wz0) obj;
        }
        if (obj != null) {
            return new wz0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public org.bouncycastle.asn1.g m9315case() {
        return this.f7731for;
    }

    /* renamed from: else, reason: not valid java name */
    public w4 m9316else() {
        return this.f7733new;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m9317goto() {
        return this.f7730do.m33022throw();
    }

    /* renamed from: new, reason: not valid java name */
    public org.bouncycastle.asn1.v m9318new() {
        return this.f7732if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7730do);
        org.bouncycastle.asn1.v vVar = this.f7732if;
        if (vVar != null) {
            cimport.m3516do(vVar);
        }
        org.bouncycastle.asn1.g gVar = this.f7731for;
        if (gVar != null) {
            cimport.m3516do(gVar);
        }
        w4 w4Var = this.f7733new;
        if (w4Var != null) {
            cimport.m3516do(w4Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
