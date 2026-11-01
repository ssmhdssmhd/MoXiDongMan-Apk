package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class j51 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public k51 f2973do;

    /* renamed from: if, reason: not valid java name */
    public on1 f2974if;

    public j51(k51 k51Var, on1 on1Var) {
        this.f2973do = k51Var;
        this.f2974if = on1Var;
    }

    private j51(Csuper csuper) {
        this.f2973do = k51.m4253new(csuper.mo33075final(0));
        if (csuper.size() == 2) {
            this.f2974if = on1.m5719try((Cimport) csuper.mo33075final(1), true);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static j51 m3727new(Object obj) {
        if (obj instanceof j51) {
            return (j51) obj;
        }
        if (obj != null) {
            return new j51(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static j51 m3728try(Cimport cimport, boolean z) {
        return m3727new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public on1 m3729case() {
        return this.f2974if;
    }

    /* renamed from: else, reason: not valid java name */
    public k51 m3730else() {
        return this.f2973do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f2973do);
        if (this.f2974if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f2974if));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
