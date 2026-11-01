package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cnew;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class lo1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccase f3726do;

    /* renamed from: if, reason: not valid java name */
    private af f3727if;

    public lo1(Ccase ccase, af afVar) {
        this.f3726do = ccase;
        this.f3727if = afVar;
    }

    private lo1(Csuper csuper) {
        this.f3726do = Ccase.m32773final(csuper.mo33075final(0));
        if (csuper.size() > 1) {
            this.f3727if = af.m191new(Cnew.m33094const((Cimport) csuper.mo33075final(1), true));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static lo1 m4723new(Object obj) {
        if (obj instanceof lo1) {
            return (lo1) obj;
        }
        if (obj != null) {
            return new lo1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static lo1 m4724try(Cimport cimport, boolean z) {
        return m4723new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public af m4725case() {
        return this.f3727if;
    }

    /* renamed from: else, reason: not valid java name */
    public Ccase m4726else() {
        return this.f3726do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3726do);
        if (this.f3727if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f3727if));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
