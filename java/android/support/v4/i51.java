package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class i51 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public y32 f2628do;

    /* renamed from: if, reason: not valid java name */
    public xx1 f2629if;

    public i51(y32 y32Var, xx1 xx1Var) {
        this.f2628do = y32Var;
        this.f2629if = xx1Var;
    }

    private i51(Csuper csuper) {
        this.f2628do = y32.m9738new(csuper.mo33075final(0));
        if (csuper.size() == 2) {
            this.f2629if = xx1.m9612case((Cimport) csuper.mo33075final(1), true);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static i51 m3276new(Object obj) {
        if (obj instanceof i51) {
            return (i51) obj;
        }
        if (obj != null) {
            return new i51(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static i51 m3277try(Cimport cimport, boolean z) {
        return m3276new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public xx1 m3278case() {
        return this.f2629if;
    }

    /* renamed from: else, reason: not valid java name */
    public y32 m3279else() {
        return this.f2628do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f2628do);
        if (this.f2629if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f2629if));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
