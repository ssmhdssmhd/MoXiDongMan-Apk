package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class or1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f4723do;

    /* renamed from: for, reason: not valid java name */
    private Cthrow f4724for;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f4725if;

    public or1(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f4723do = ccatch;
        this.f4725if = aSN1Encodable;
        this.f4724for = null;
    }

    public or1(Ccatch ccatch, ASN1Encodable aSN1Encodable, Cthrow cthrow) {
        this.f4723do = ccatch;
        this.f4725if = aSN1Encodable;
        this.f4724for = cthrow;
    }

    private or1(Csuper csuper) {
        this.f4723do = (Ccatch) csuper.mo33075final(0);
        this.f4725if = ((Cimport) csuper.mo33075final(1)).m33065const();
        if (csuper.size() == 3) {
            this.f4724for = (Cthrow) csuper.mo33075final(2);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static or1 m5740else(Object obj) {
        if (obj instanceof or1) {
            return (or1) obj;
        }
        if (obj != null) {
            return new or1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m5741case() {
        return this.f4725if;
    }

    /* renamed from: new, reason: not valid java name */
    public Cthrow m5742new() {
        return this.f4724for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4723do);
        cimport.m3516do(new org.bouncycastle.asn1.f0(true, 0, this.f4725if));
        Cthrow cthrow = this.f4724for;
        if (cthrow != null) {
            cimport.m3516do(cthrow);
        }
        return new org.bouncycastle.asn1.d0(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m5743try() {
        return this.f4723do;
    }
}
