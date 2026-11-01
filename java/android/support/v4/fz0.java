package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class fz0 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private byte[] f2017case;

    /* renamed from: do, reason: not valid java name */
    private int f2018do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f2019else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f2020for;

    /* renamed from: if, reason: not valid java name */
    private int f2021if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f2022new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f2023try;

    public fz0(int i, int i2, se0 se0Var, pe1 pe1Var, fd1 fd1Var, fd1 fd1Var2, qe0 qe0Var) {
        this.f2018do = i;
        this.f2021if = i2;
        this.f2020for = se0Var.m7390try();
        this.f2022new = pe1Var.m5994super();
        this.f2023try = qe0Var.mo401if();
        this.f2017case = fd1Var.m2250if();
        this.f2019else = fd1Var2.m2250if();
    }

    private fz0(Csuper csuper) {
        this.f2018do = ((Cgoto) csuper.mo33075final(0)).m33044final().intValue();
        this.f2021if = ((Cgoto) csuper.mo33075final(1)).m33044final().intValue();
        this.f2020for = ((Cclass) csuper.mo33075final(2)).mo5490const();
        this.f2022new = ((Cclass) csuper.mo33075final(3)).mo5490const();
        this.f2017case = ((Cclass) csuper.mo33075final(4)).mo5490const();
        this.f2019else = ((Cclass) csuper.mo33075final(5)).mo5490const();
        this.f2023try = ((Cclass) csuper.mo33075final(6)).mo5490const();
    }

    /* renamed from: case, reason: not valid java name */
    public static fz0 m2491case(Object obj) {
        if (obj instanceof fz0) {
            return (fz0) obj;
        }
        if (obj != null) {
            return new fz0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public fd1 m2492break() {
        return new fd1(this.f2019else);
    }

    /* renamed from: catch, reason: not valid java name */
    public qe0 m2493catch() {
        return new qe0(this.f2023try);
    }

    /* renamed from: else, reason: not valid java name */
    public int m2494else() {
        return this.f2021if;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m2495goto() {
        return this.f2018do;
    }

    /* renamed from: new, reason: not valid java name */
    public se0 m2496new() {
        return new se0(this.f2020for);
    }

    /* renamed from: this, reason: not valid java name */
    public fd1 m2497this() {
        return new fd1(this.f2017case);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(this.f2018do));
        cimport.m3516do(new Cgoto(this.f2021if));
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f2020for));
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f2022new));
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f2017case));
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f2019else));
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f2023try));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public pe1 m2498try() {
        return new pe1(m2496new(), this.f2022new);
    }
}
