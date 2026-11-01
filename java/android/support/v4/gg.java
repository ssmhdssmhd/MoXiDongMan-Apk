package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;

/* loaded from: classes3.dex */
public class gg extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f2114do;

    private gg(Ccatch ccatch) {
        this.f2114do = ccatch;
    }

    /* renamed from: try, reason: not valid java name */
    public static gg m2663try(Object obj) {
        if (obj instanceof gg) {
            return (gg) obj;
        }
        if (obj != null) {
            return new gg(Ccatch.m32790throw(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public String m2664new() {
        return this.f2114do.m32795super();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f2114do;
    }
}
