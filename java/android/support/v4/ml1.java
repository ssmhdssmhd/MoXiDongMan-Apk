package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ml1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private uq0 f3939do;

    /* renamed from: if, reason: not valid java name */
    private Cclass f3940if;

    public ml1(uq0 uq0Var, Cclass cclass) {
        this.f3939do = uq0Var;
        this.f3940if = cclass;
    }

    private ml1(Csuper csuper) {
        this.f3939do = uq0.m8589new(csuper.mo33075final(0));
        this.f3940if = (Cclass) csuper.mo33075final(1);
    }

    /* renamed from: case, reason: not valid java name */
    public static ml1 m4941case(Object obj) {
        if (obj instanceof ml1) {
            return (ml1) obj;
        }
        if (obj != null) {
            return new ml1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static ml1 m4942else(Cimport cimport, boolean z) {
        return m4941case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public Cclass m4943new() {
        return this.f3940if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3939do);
        cimport.m3516do(this.f3940if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public uq0 m4944try() {
        return this.f3939do;
    }
}
