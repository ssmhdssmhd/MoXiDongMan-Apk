package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class xq0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private b1 f8014do;

    public xq0(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f8014do = new b1(ccatch, aSN1Encodable);
    }

    private xq0(Csuper csuper) {
        this.f8014do = b1.m418try(csuper);
    }

    /* renamed from: try, reason: not valid java name */
    public static xq0 m9563try(Object obj) {
        if (obj instanceof xq0) {
            return (xq0) obj;
        }
        if (obj != null) {
            return new xq0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m9564case() {
        return this.f8014do.m419else();
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m9565new() {
        return this.f8014do.m420new();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f8014do.toASN1Primitive();
    }
}
