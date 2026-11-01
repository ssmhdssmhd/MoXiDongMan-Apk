package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ps extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private r81 f5179do;

    /* renamed from: if, reason: not valid java name */
    private ms f5180if;

    public ps(r81 r81Var) {
        this(r81Var, null);
    }

    public ps(r81 r81Var, ms msVar) {
        this.f5179do = r81Var;
        this.f5180if = msVar;
    }

    private ps(Csuper csuper) {
        if (csuper.size() < 1 || csuper.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        this.f5179do = r81.m6846case(csuper.mo33075final(0));
        if (csuper.size() > 1) {
            this.f5180if = ms.m4991else(csuper.mo33075final(1));
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static ps m6215case(Object obj) {
        if (obj instanceof ps) {
            return (ps) obj;
        }
        if (obj != null) {
            return new ps(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public r81 m6216new() {
        return this.f5179do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f5179do.toASN1Primitive());
        ms msVar = this.f5180if;
        if (msVar != null) {
            cimport.m3516do(msVar.toASN1Primitive());
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public ms m6217try() {
        return this.f5180if;
    }
}
