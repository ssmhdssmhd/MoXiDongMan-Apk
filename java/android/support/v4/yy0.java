package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class yy0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final int f8367do;

    /* renamed from: for, reason: not valid java name */
    private final qe0 f8368for;

    /* renamed from: if, reason: not valid java name */
    private final int f8369if;

    /* renamed from: new, reason: not valid java name */
    private final b1 f8370new;

    public yy0(int i, int i2, qe0 qe0Var, b1 b1Var) {
        this.f8367do = i;
        this.f8369if = i2;
        this.f8368for = new qe0(qe0Var.mo401if());
        this.f8370new = b1Var;
    }

    private yy0(Csuper csuper) {
        this.f8367do = ((Cgoto) csuper.mo33075final(0)).m33044final().intValue();
        this.f8369if = ((Cgoto) csuper.mo33075final(1)).m33044final().intValue();
        this.f8368for = new qe0(((Cclass) csuper.mo33075final(2)).mo5490const());
        this.f8370new = b1.m418try(csuper.mo33075final(3));
    }

    /* renamed from: case, reason: not valid java name */
    public static yy0 m9993case(Object obj) {
        if (obj instanceof yy0) {
            return (yy0) obj;
        }
        if (obj != null) {
            return new yy0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public int m9994else() {
        return this.f8367do;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m9995goto() {
        return this.f8369if;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m9996new() {
        return this.f8370new;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(this.f8367do));
        cimport.m3516do(new Cgoto(this.f8369if));
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f8368for.mo401if()));
        cimport.m3516do(this.f8370new);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public qe0 m9997try() {
        return this.f8368for;
    }
}
