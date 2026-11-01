package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;

/* loaded from: classes3.dex */
public class dr extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Cclass f1106do;

    private dr(Cclass cclass) {
        this.f1106do = cclass;
    }

    public dr(byte[] bArr) {
        this(new org.bouncycastle.asn1.j(bArr));
    }

    /* renamed from: new, reason: not valid java name */
    public static dr m1495new(Object obj) {
        if (obj instanceof dr) {
            return (dr) obj;
        }
        if (obj != null) {
            return new dr(Cclass.m32796catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f1106do;
    }

    /* renamed from: try, reason: not valid java name */
    public Cclass m1496try() {
        return this.f1106do;
    }
}
