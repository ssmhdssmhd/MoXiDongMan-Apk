package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class hz0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final int f2565do;

    /* renamed from: for, reason: not valid java name */
    private final qe0 f2566for;

    /* renamed from: if, reason: not valid java name */
    private final int f2567if;

    public hz0(int i, int i2, qe0 qe0Var) {
        this.f2565do = i;
        this.f2567if = i2;
        this.f2566for = new qe0(qe0Var);
    }

    private hz0(Csuper csuper) {
        this.f2565do = ((Cgoto) csuper.mo33075final(0)).m33044final().intValue();
        this.f2567if = ((Cgoto) csuper.mo33075final(1)).m33044final().intValue();
        this.f2566for = new qe0(((Cclass) csuper.mo33075final(2)).mo5490const());
    }

    /* renamed from: try, reason: not valid java name */
    public static hz0 m3176try(Object obj) {
        if (obj instanceof hz0) {
            return (hz0) obj;
        }
        if (obj != null) {
            return new hz0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public int m3177case() {
        return this.f2565do;
    }

    /* renamed from: else, reason: not valid java name */
    public int m3178else() {
        return this.f2567if;
    }

    /* renamed from: new, reason: not valid java name */
    public qe0 m3179new() {
        return new qe0(this.f2566for);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(this.f2565do));
        cimport.m3516do(new Cgoto(this.f2567if));
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f2566for.mo401if()));
        return new org.bouncycastle.asn1.n(cimport);
    }
}
