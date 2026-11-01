package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;

/* loaded from: classes3.dex */
public class tn1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private g10 f6626do;

    private tn1(g10 g10Var) {
        this.f6626do = g10Var;
    }

    public tn1(String str) {
        this.f6626do = new g10(str);
    }

    /* renamed from: new, reason: not valid java name */
    public static tn1 m8006new(Object obj) {
        if (obj instanceof tn1) {
            return (tn1) obj;
        }
        if (obj != null) {
            return new tn1(g10.m2502new(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f6626do.toASN1Primitive();
    }

    /* renamed from: try, reason: not valid java name */
    public g10 m8007try() {
        return this.f6626do;
    }
}
