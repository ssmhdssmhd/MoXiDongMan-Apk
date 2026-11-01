package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class sp1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final fr f6222do;

    /* renamed from: if, reason: not valid java name */
    private final fr f6223if;

    public sp1(fr frVar) {
        this.f6222do = null;
        this.f6223if = frVar;
    }

    public sp1(fr frVar, fr frVar2) {
        this.f6222do = frVar;
        this.f6223if = frVar2;
    }

    private sp1(Csuper csuper) {
        ASN1Encodable aSN1EncodableMo33075final;
        if (csuper.mo33075final(0) instanceof Cimport) {
            this.f6222do = fr.m2389else(Cimport.m33063catch(csuper.mo33075final(0)), true);
            aSN1EncodableMo33075final = csuper.mo33075final(1);
        } else {
            this.f6222do = null;
            aSN1EncodableMo33075final = csuper.mo33075final(0);
        }
        this.f6223if = fr.m2388case(aSN1EncodableMo33075final);
    }

    /* renamed from: new, reason: not valid java name */
    public static sp1 m7544new(Object obj) {
        if (obj instanceof sp1) {
            return (sp1) obj;
        }
        if (obj != null) {
            return new sp1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public fr m7545case() {
        return this.f6223if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f6222do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f6222do));
        }
        cimport.m3516do(this.f6223if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public fr m7546try() {
        return this.f6222do;
    }
}
