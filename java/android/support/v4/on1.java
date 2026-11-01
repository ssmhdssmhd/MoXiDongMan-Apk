package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class on1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Ccatch f4702do;

    /* renamed from: if, reason: not valid java name */
    public Cclass f4703if;

    public on1(Ccatch ccatch, Cclass cclass) {
        this.f4702do = ccatch;
        this.f4703if = cclass;
    }

    public on1(Csuper csuper) {
        this.f4702do = (Ccatch) csuper.mo33075final(0);
        this.f4703if = (Cclass) csuper.mo33075final(1);
    }

    /* renamed from: new, reason: not valid java name */
    public static on1 m5718new(Object obj) {
        if (obj instanceof on1) {
            return (on1) obj;
        }
        if (obj != null) {
            return new on1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static on1 m5719try(Cimport cimport, boolean z) {
        return m5718new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public Cclass m5720case() {
        return this.f4703if;
    }

    /* renamed from: else, reason: not valid java name */
    public Ccatch m5721else() {
        return this.f4702do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4702do);
        cimport.m3516do(this.f4703if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
