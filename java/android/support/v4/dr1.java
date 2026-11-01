package android.support.v4;

import org.bouncycastle.asn1.Cfinal;

/* loaded from: classes3.dex */
public class dr1 {

    /* renamed from: do, reason: not valid java name */
    private org.bouncycastle.asn1.g f1109do;

    public dr1(org.bouncycastle.asn1.g gVar) {
        this.f1109do = gVar;
    }

    /* renamed from: do, reason: not valid java name */
    public static dr1 m1499do(Object obj) {
        if (obj instanceof dr1) {
            return (dr1) obj;
        }
        if (obj instanceof org.bouncycastle.asn1.g) {
            return new dr1(org.bouncycastle.asn1.g.m33023catch(obj));
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public Cfinal m1500for() {
        return this.f1109do.toASN1Primitive();
    }

    /* renamed from: if, reason: not valid java name */
    public org.bouncycastle.asn1.g m1501if() {
        return this.f1109do;
    }
}
