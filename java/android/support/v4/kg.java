package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class kg extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f3378do;

    /* renamed from: for, reason: not valid java name */
    private pr f3379for;

    /* renamed from: if, reason: not valid java name */
    private og f3380if;

    public kg(int i, og ogVar, pr prVar) {
        this(new Cgoto(i), ogVar, prVar);
    }

    public kg(Cgoto cgoto, og ogVar, pr prVar) {
        this.f3378do = cgoto;
        this.f3380if = ogVar;
        this.f3379for = prVar;
    }

    private kg(Csuper csuper) {
        this.f3378do = new Cgoto(Cgoto.m33040catch(csuper.mo33075final(0)).m33044final());
        this.f3380if = og.m5627try(csuper.mo33075final(1));
        if (csuper.size() > 2) {
            this.f3379for = pr.m6194new(csuper.mo33075final(2));
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static kg m4397else(Object obj) {
        if (obj instanceof kg) {
            return (kg) obj;
        }
        if (obj != null) {
            return new kg(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public pr m4398case() {
        return this.f3379for;
    }

    /* renamed from: new, reason: not valid java name */
    public Cgoto m4399new() {
        return this.f3378do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3378do);
        cimport.m3516do(this.f3380if);
        pr prVar = this.f3379for;
        if (prVar != null) {
            cimport.m3516do(prVar);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public og m4400try() {
        return this.f3380if;
    }
}
