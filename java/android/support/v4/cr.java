package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class cr extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private org.bouncycastle.asn1.v f856do;

    /* renamed from: if, reason: not valid java name */
    private Ccatch f857if;

    public cr(Ccatch ccatch) {
        this.f857if = ccatch;
        this.f856do = null;
    }

    public cr(Ccatch ccatch, org.bouncycastle.asn1.v vVar) {
        this.f857if = ccatch;
        this.f856do = vVar;
    }

    private cr(Csuper csuper) {
        int i = 0;
        ASN1Encodable aSN1EncodableMo33075final = csuper.mo33075final(0);
        if (aSN1EncodableMo33075final.toASN1Primitive() instanceof org.bouncycastle.asn1.v) {
            this.f856do = org.bouncycastle.asn1.v.m33177catch(aSN1EncodableMo33075final);
            i = 1;
        }
        this.f857if = Ccatch.m32790throw(csuper.mo33075final(i));
    }

    /* renamed from: case, reason: not valid java name */
    public static cr m1001case(Object obj) {
        if (obj instanceof cr) {
            return (cr) obj;
        }
        if (obj != null) {
            return new cr(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public org.bouncycastle.asn1.v m1002new() {
        return this.f856do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        org.bouncycastle.asn1.v vVar = this.f856do;
        if (vVar != null) {
            cimport.m3516do(vVar);
        }
        cimport.m3516do(this.f857if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m1003try() {
        return this.f857if;
    }
}
