package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class vx1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f7354do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f7355if;

    public vx1(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f7354do = ccatch;
        this.f7355if = aSN1Encodable;
    }

    private vx1(Csuper csuper) {
        this.f7354do = Ccatch.m32790throw(csuper.mo33075final(0));
        this.f7355if = csuper.mo33075final(1);
    }

    /* renamed from: new, reason: not valid java name */
    public static vx1 m8995new(Object obj) {
        if (obj instanceof vx1) {
            return (vx1) obj;
        }
        if (obj != null) {
            return new vx1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m8996case() {
        return this.f7355if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7354do);
        cimport.m3516do(this.f7355if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m8997try() {
        return new Ccatch(this.f7354do.m32795super());
    }
}
