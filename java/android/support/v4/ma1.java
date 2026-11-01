package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cthis;

/* loaded from: classes3.dex */
public class ma1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cthis f3869do;

    public ma1() {
        this.f3869do = org.bouncycastle.asn1.h.f29080do;
    }

    private ma1(Cthis cthis) {
        this.f3869do = cthis;
    }

    /* renamed from: new, reason: not valid java name */
    public static ma1 m4883new(Object obj) {
        if (obj == null || (obj instanceof ma1)) {
            return (ma1) obj;
        }
        if (obj instanceof Cthis) {
            return new ma1((Cthis) obj);
        }
        throw new IllegalArgumentException("Invalid object: " + obj.getClass().getName());
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f3869do;
    }
}
