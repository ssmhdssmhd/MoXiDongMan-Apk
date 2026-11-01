package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cinstanceof;

/* loaded from: classes3.dex */
public class rd2 {

    /* renamed from: break, reason: not valid java name */
    private Ccase f5754break;

    /* renamed from: else, reason: not valid java name */
    private Cinstanceof f5757else;

    /* renamed from: for, reason: not valid java name */
    private j4 f5758for;

    /* renamed from: goto, reason: not valid java name */
    private y90 f5759goto;

    /* renamed from: if, reason: not valid java name */
    private rj0 f5760if;

    /* renamed from: new, reason: not valid java name */
    private b1 f5761new;

    /* renamed from: this, reason: not valid java name */
    private Ccase f5762this;

    /* renamed from: try, reason: not valid java name */
    private Cgoto f5763try;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f5756do = new Cgoto(1);

    /* renamed from: case, reason: not valid java name */
    private Cimport f5755case = new Cimport();

    /* renamed from: break, reason: not valid java name */
    public void m6923break(Cgoto cgoto) {
        this.f5763try = cgoto;
    }

    /* renamed from: case, reason: not valid java name */
    public void m6924case(fh2 fh2Var) {
        this.f5759goto = y90.m9782break(fh2Var.toASN1Primitive());
    }

    /* renamed from: catch, reason: not valid java name */
    public void m6925catch(b1 b1Var) {
        this.f5761new = b1Var;
    }

    /* renamed from: class, reason: not valid java name */
    public void m6926class(Ccase ccase) {
        this.f5762this = ccase;
    }

    /* renamed from: do, reason: not valid java name */
    public void m6927do(n4 n4Var) {
        this.f5755case.m3516do(n4Var);
    }

    /* renamed from: else, reason: not valid java name */
    public void m6928else(rj0 rj0Var) {
        this.f5760if = rj0Var;
    }

    /* renamed from: for, reason: not valid java name */
    public r4 m6929for() {
        if (this.f5763try == null || this.f5761new == null || this.f5758for == null || this.f5762this == null || this.f5754break == null || this.f5760if == null || this.f5755case == null) {
            throw new IllegalStateException("not all mandatory fields set in V2 AttributeCertificateInfo generator");
        }
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f5756do);
        cimport.m3516do(this.f5760if);
        cimport.m3516do(this.f5758for);
        cimport.m3516do(this.f5761new);
        cimport.m3516do(this.f5763try);
        cimport.m3516do(new k4(this.f5762this, this.f5754break));
        cimport.m3516do(new org.bouncycastle.asn1.n(this.f5755case));
        Cinstanceof cinstanceof = this.f5757else;
        if (cinstanceof != null) {
            cimport.m3516do(cinstanceof);
        }
        y90 y90Var = this.f5759goto;
        if (y90Var != null) {
            cimport.m3516do(y90Var);
        }
        return r4.m6738goto(new org.bouncycastle.asn1.n(cimport));
    }

    /* renamed from: goto, reason: not valid java name */
    public void m6930goto(j4 j4Var) {
        this.f5758for = j4Var;
    }

    /* renamed from: if, reason: not valid java name */
    public void m6931if(String str, ASN1Encodable aSN1Encodable) {
        this.f5755case.m3516do(new n4(new Ccatch(str), new org.bouncycastle.asn1.q(aSN1Encodable)));
    }

    /* renamed from: new, reason: not valid java name */
    public void m6932new(Ccase ccase) {
        this.f5754break = ccase;
    }

    /* renamed from: this, reason: not valid java name */
    public void m6933this(Cinstanceof cinstanceof) {
        this.f5757else = cinstanceof;
    }

    /* renamed from: try, reason: not valid java name */
    public void m6934try(y90 y90Var) {
        this.f5759goto = y90Var;
    }
}
