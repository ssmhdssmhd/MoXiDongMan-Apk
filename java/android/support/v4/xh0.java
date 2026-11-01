package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class xh0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final vh0 f7937do;

    /* renamed from: if, reason: not valid java name */
    private final yh0 f7938if;

    public xh0(vh0 vh0Var, yh0 yh0Var) {
        this.f7937do = vh0Var;
        this.f7938if = yh0Var;
    }

    private xh0(Csuper csuper) {
        this.f7937do = vh0.m8859try(csuper.mo33075final(0));
        this.f7938if = yh0.m9857else(Cimport.m33063catch(csuper.mo33075final(1)), false);
    }

    /* renamed from: new, reason: not valid java name */
    public static xh0 m9509new(Object obj) {
        if (obj instanceof xh0) {
            return (xh0) obj;
        }
        if (obj != null) {
            return new xh0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public yh0 m9510case() {
        return this.f7938if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7937do);
        if (this.f7938if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f7938if));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public vh0 m9511try() {
        return this.f7937do;
    }
}
