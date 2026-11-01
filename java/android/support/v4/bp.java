package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class bp extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f501do;

    /* renamed from: if, reason: not valid java name */
    private Csuper f502if;

    public bp(Ccatch ccatch) {
        this.f501do = ccatch;
    }

    public bp(Ccatch ccatch, Csuper csuper) {
        this.f501do = ccatch;
        this.f502if = csuper;
    }

    private bp(Csuper csuper) {
        this.f501do = (Ccatch) csuper.mo33075final(0);
        if (csuper.size() > 1) {
            this.f502if = (Csuper) csuper.mo33075final(1);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static bp m604case(Object obj) {
        return (obj == null || (obj instanceof bp)) ? (bp) obj : new bp(Csuper.m33129catch(obj));
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m605new() {
        return this.f501do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f501do);
        Csuper csuper = this.f502if;
        if (csuper != null) {
            cimport.m3516do(csuper);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Csuper m606try() {
        return this.f502if;
    }
}
