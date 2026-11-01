package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;

/* loaded from: classes3.dex */
public class p0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private g10 f4817do;

    private p0(g10 g10Var) {
        this.f4817do = g10Var;
    }

    public p0(String str) {
        this(new g10(str));
    }

    /* renamed from: try, reason: not valid java name */
    public static p0 m5827try(Object obj) {
        if (obj instanceof p0) {
            return (p0) obj;
        }
        if (obj != null) {
            return new p0(g10.m2502new(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public g10 m5828new() {
        return this.f4817do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f4817do.toASN1Primitive();
    }
}
