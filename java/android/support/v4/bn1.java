package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class bn1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public cg f496do;

    /* renamed from: if, reason: not valid java name */
    public y90 f497if;

    public bn1(cg cgVar, y90 y90Var) {
        this.f496do = cgVar;
        this.f497if = y90Var;
    }

    private bn1(Csuper csuper) {
        this.f496do = cg.m904try(csuper.mo33075final(0));
        if (csuper.size() == 2) {
            this.f497if = y90.m9783catch((Cimport) csuper.mo33075final(1), true);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static bn1 m597new(Object obj) {
        if (obj instanceof bn1) {
            return (bn1) obj;
        }
        if (obj != null) {
            return new bn1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static bn1 m598try(Cimport cimport, boolean z) {
        return m597new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public cg m599case() {
        return this.f496do;
    }

    /* renamed from: else, reason: not valid java name */
    public y90 m600else() {
        return this.f497if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f496do);
        if (this.f497if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f497if));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
