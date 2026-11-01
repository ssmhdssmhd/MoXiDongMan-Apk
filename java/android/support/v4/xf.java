package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class xf extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f7901do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f7902if;

    public xf(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f7901do = ccatch;
        this.f7902if = aSN1Encodable;
    }

    private xf(Csuper csuper) {
        this.f7901do = (Ccatch) csuper.mo33075final(0);
        this.f7902if = ((org.bouncycastle.asn1.u) csuper.mo33075final(1)).m33065const();
    }

    /* renamed from: case, reason: not valid java name */
    public static xf m9486case(Object obj) {
        if (obj instanceof xf) {
            return (xf) obj;
        }
        if (obj != null) {
            return new xf(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m9487new() {
        return this.f7901do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7901do);
        cimport.m3516do(new org.bouncycastle.asn1.u(0, this.f7902if));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public ASN1Encodable m9488try() {
        return this.f7902if;
    }
}
