package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class w81 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Ccatch f7414do;

    /* renamed from: if, reason: not valid java name */
    private final ASN1Encodable f7415if;

    public w81(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f7414do = ccatch;
        this.f7415if = aSN1Encodable;
    }

    private w81(Csuper csuper) {
        this.f7414do = Ccatch.m32790throw(csuper.mo33075final(0));
        this.f7415if = Cimport.m33063catch(csuper.mo33075final(1)).m33065const();
    }

    /* renamed from: new, reason: not valid java name */
    public static w81 m9095new(Object obj) {
        if (obj instanceof w81) {
            return (w81) obj;
        }
        if (obj != null) {
            return new w81(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m9096case() {
        return this.f7415if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7414do);
        cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f7415if));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m9097try() {
        return this.f7414do;
    }
}
