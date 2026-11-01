package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class p4 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f4841do;

    /* renamed from: if, reason: not valid java name */
    private Cthrow f4842if;

    public p4(Ccatch ccatch, Cthrow cthrow) {
        this.f4841do = ccatch;
        this.f4842if = cthrow;
    }

    private p4(Csuper csuper) {
        this.f4841do = (Ccatch) csuper.mo33075final(0);
        this.f4842if = (Cthrow) csuper.mo33075final(1);
    }

    /* renamed from: else, reason: not valid java name */
    public static p4 m5872else(Object obj) {
        if (obj instanceof p4) {
            return (p4) obj;
        }
        if (obj != null) {
            return new p4(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable[] m5873case() {
        return this.f4842if.m33157public();
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m5874new() {
        return this.f4841do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4841do);
        cimport.m3516do(this.f4842if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cthrow m5875try() {
        return this.f4842if;
    }
}
