package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class wy0 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private b1 f7720case;

    /* renamed from: do, reason: not valid java name */
    private int f7721do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f7722for;

    /* renamed from: if, reason: not valid java name */
    private int f7723if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f7724new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f7725try;

    public wy0(int i, int i2, se0 se0Var, pe1 pe1Var, fd1 fd1Var, b1 b1Var) {
        this.f7721do = i;
        this.f7723if = i2;
        this.f7722for = se0Var.m7390try();
        this.f7724new = pe1Var.m5994super();
        this.f7725try = fd1Var.m2250if();
        this.f7720case = b1Var;
    }

    private wy0(Csuper csuper) {
        this.f7721do = ((Cgoto) csuper.mo33075final(0)).m33044final().intValue();
        this.f7723if = ((Cgoto) csuper.mo33075final(1)).m33044final().intValue();
        this.f7722for = ((Cclass) csuper.mo33075final(2)).mo5490const();
        this.f7724new = ((Cclass) csuper.mo33075final(3)).mo5490const();
        this.f7725try = ((Cclass) csuper.mo33075final(4)).mo5490const();
        this.f7720case = b1.m418try(csuper.mo33075final(5));
    }

    /* renamed from: else, reason: not valid java name */
    public static wy0 m9307else(Object obj) {
        if (obj instanceof wy0) {
            return (wy0) obj;
        }
        if (obj != null) {
            return new wy0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public fd1 m9308break() {
        return new fd1(this.f7725try);
    }

    /* renamed from: case, reason: not valid java name */
    public pe1 m9309case() {
        return new pe1(m9313try(), this.f7724new);
    }

    /* renamed from: goto, reason: not valid java name */
    public int m9310goto() {
        return this.f7723if;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m9311new() {
        return this.f7720case;
    }

    /* renamed from: this, reason: not valid java name */
    public int m9312this() {
        return this.f7721do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(this.f7721do));
        cimport.m3516do(new Cgoto(this.f7723if));
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f7722for));
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f7724new));
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f7725try));
        cimport.m3516do(this.f7720case);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public se0 m9313try() {
        return new se0(this.f7722for);
    }
}
