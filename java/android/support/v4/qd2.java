package android.support.v4;

import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cnative;
import org.bouncycastle.asn1.x509.Ctry;

/* loaded from: classes3.dex */
public class qd2 {

    /* renamed from: case, reason: not valid java name */
    public t62 f5345case;

    /* renamed from: do, reason: not valid java name */
    public org.bouncycastle.asn1.u f5346do = new org.bouncycastle.asn1.u(true, 0, new Cgoto(0));

    /* renamed from: else, reason: not valid java name */
    public tg2 f5347else;

    /* renamed from: for, reason: not valid java name */
    public b1 f5348for;

    /* renamed from: goto, reason: not valid java name */
    public Ctry f5349goto;

    /* renamed from: if, reason: not valid java name */
    public Cgoto f5350if;

    /* renamed from: new, reason: not valid java name */
    public tg2 f5351new;

    /* renamed from: try, reason: not valid java name */
    public t62 f5352try;

    /* renamed from: break, reason: not valid java name */
    public void m6498break(tg2 tg2Var) {
        this.f5347else = tg2Var;
    }

    /* renamed from: case, reason: not valid java name */
    public void m6499case(Cgoto cgoto) {
        this.f5350if = cgoto;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m6500catch(org.bouncycastle.asn1.x509.Cgoto cgoto) {
        this.f5347else = tg2.m7884else(cgoto.toASN1Primitive());
    }

    /* renamed from: class, reason: not valid java name */
    public void m6501class(Ctry ctry) {
        this.f5349goto = ctry;
    }

    /* renamed from: do, reason: not valid java name */
    public w32 m6502do() {
        if (this.f5350if == null || this.f5348for == null || this.f5351new == null || this.f5352try == null || this.f5345case == null || this.f5347else == null || this.f5349goto == null) {
            throw new IllegalStateException("not all mandatory fields set in V1 TBScertificate generator");
        }
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f5350if);
        cimport.m3516do(this.f5348for);
        cimport.m3516do(this.f5351new);
        Cimport cimport2 = new Cimport();
        cimport2.m3516do(this.f5352try);
        cimport2.m3516do(this.f5345case);
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        cimport.m3516do(this.f5347else);
        cimport.m3516do(this.f5349goto);
        return w32.m9030case(new org.bouncycastle.asn1.n(cimport));
    }

    /* renamed from: else, reason: not valid java name */
    public void m6503else(b1 b1Var) {
        this.f5348for = b1Var;
    }

    /* renamed from: for, reason: not valid java name */
    public void m6504for(Cnative cnative) {
        this.f5345case = new t62(cnative);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m6505goto(t62 t62Var) {
        this.f5352try = t62Var;
    }

    /* renamed from: if, reason: not valid java name */
    public void m6506if(t62 t62Var) {
        this.f5345case = t62Var;
    }

    /* renamed from: new, reason: not valid java name */
    public void m6507new(tg2 tg2Var) {
        this.f5351new = tg2Var;
    }

    /* renamed from: this, reason: not valid java name */
    public void m6508this(Cnative cnative) {
        this.f5352try = new t62(cnative);
    }

    /* renamed from: try, reason: not valid java name */
    public void m6509try(org.bouncycastle.asn1.x509.Cgoto cgoto) {
        this.f5351new = tg2.m7884else(cgoto.toASN1Primitive());
    }
}
