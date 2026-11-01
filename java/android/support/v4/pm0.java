package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class pm0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f5113do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f5114if;

    public pm0(Ccatch ccatch) {
        this.f5113do = ccatch;
        this.f5114if = null;
    }

    public pm0(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f5113do = ccatch;
        this.f5114if = aSN1Encodable;
    }

    private pm0(Csuper csuper) {
        this.f5113do = Ccatch.m32790throw(csuper.mo33075final(0));
        if (csuper.size() > 1) {
            this.f5114if = csuper.mo33075final(1);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static pm0 m6117case(Object obj) {
        if (obj instanceof pm0) {
            return (pm0) obj;
        }
        if (obj != null) {
            return new pm0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m6118new() {
        return this.f5113do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f5113do);
        ASN1Encodable aSN1Encodable = this.f5114if;
        if (aSN1Encodable != null) {
            cimport.m3516do(aSN1Encodable);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public ASN1Encodable m6119try() {
        return this.f5114if;
    }
}
