package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class x81 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f7798do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f7799if;

    public x81(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f7798do = ccatch;
        this.f7799if = aSN1Encodable;
    }

    private x81(Csuper csuper) {
        this.f7798do = Ccatch.m32790throw(csuper.mo33075final(0));
        this.f7799if = csuper.mo33075final(1);
    }

    /* renamed from: new, reason: not valid java name */
    public static x81 m9428new(Object obj) {
        if (obj instanceof x81) {
            return (x81) obj;
        }
        if (obj != null) {
            return new x81(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static x81 m9429try(Cimport cimport, boolean z) {
        return m9428new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public Ccatch m9430case() {
        return this.f7798do;
    }

    /* renamed from: else, reason: not valid java name */
    public ASN1Encodable m9431else() {
        return this.f7799if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7798do);
        cimport.m3516do(this.f7799if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
