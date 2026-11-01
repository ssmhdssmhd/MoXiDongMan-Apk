package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class kw1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Ccatch f3493do;

    /* renamed from: if, reason: not valid java name */
    private final Cclass f3494if;

    public kw1(Ccatch ccatch, byte[] bArr) {
        this.f3493do = ccatch;
        this.f3494if = new org.bouncycastle.asn1.j(q3.m6371final(bArr));
    }

    private kw1(Csuper csuper) {
        this.f3493do = Ccatch.m32790throw(csuper.mo33075final(0));
        this.f3494if = Cclass.m32796catch(csuper.mo33075final(1));
    }

    /* renamed from: new, reason: not valid java name */
    public static kw1 m4525new(Object obj) {
        if (obj instanceof kw1) {
            return (kw1) obj;
        }
        if (obj != null) {
            return new kw1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m4526case() {
        return q3.m6371final(this.f3494if.mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3493do);
        cimport.m3516do(this.f3494if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m4527try() {
        return this.f3493do;
    }
}
