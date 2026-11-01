package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class pf0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cclass f4949do;

    /* renamed from: if, reason: not valid java name */
    private Ccatch f4950if;

    private pf0(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f4949do = (Cclass) enumerationMo33076super.nextElement();
        this.f4950if = (Ccatch) enumerationMo33076super.nextElement();
    }

    public pf0(byte[] bArr, Ccatch ccatch) {
        this.f4949do = new org.bouncycastle.asn1.j(bArr);
        this.f4950if = ccatch;
    }

    /* renamed from: case, reason: not valid java name */
    public static pf0 m6000case(Object obj) {
        if (obj instanceof pf0) {
            return (pf0) obj;
        }
        if (obj != null) {
            return new pf0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static pf0 m6001else(Cimport cimport, boolean z) {
        return m6000case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m6002new() {
        return this.f4950if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4949do);
        cimport.m3516do(this.f4950if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m6003try() {
        return q3.m6371final(this.f4949do.mo5490const());
    }
}
