package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class cg1 extends Cbreak implements ASN1Choice {

    /* renamed from: case, reason: not valid java name */
    public static final int f776case = 3;

    /* renamed from: for, reason: not valid java name */
    public static final int f777for = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f778new = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f779try = 2;

    /* renamed from: do, reason: not valid java name */
    private int f780do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f781if;

    public cg1() {
        this.f780do = 0;
        this.f781if = org.bouncycastle.asn1.h.f29080do;
    }

    public cg1(int i, db1 db1Var) {
        this.f780do = i;
        this.f781if = db1Var;
    }

    public cg1(eb1 eb1Var) {
        this.f780do = 1;
        this.f781if = eb1Var;
    }

    private cg1(Cimport cimport) {
        ASN1Encodable aSN1EncodableM1763case;
        int tagNo = cimport.getTagNo();
        this.f780do = tagNo;
        if (tagNo == 0) {
            aSN1EncodableM1763case = org.bouncycastle.asn1.h.f29080do;
        } else if (tagNo == 1) {
            aSN1EncodableM1763case = eb1.m1763case(cimport, false);
        } else {
            if (tagNo != 2 && tagNo != 3) {
                throw new IllegalArgumentException("unknown tag: " + this.f780do);
            }
            aSN1EncodableM1763case = db1.m1213try(cimport, true);
        }
        this.f781if = aSN1EncodableM1763case;
    }

    /* renamed from: new, reason: not valid java name */
    public static cg1 m914new(Object obj) {
        if (obj == null || (obj instanceof cg1)) {
            return (cg1) obj;
        }
        if (obj instanceof Cimport) {
            return new cg1((Cimport) obj);
        }
        throw new IllegalArgumentException("Invalid object: " + obj.getClass().getName());
    }

    /* renamed from: case, reason: not valid java name */
    public int m915case() {
        return this.f780do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.u(false, this.f780do, this.f781if);
    }

    /* renamed from: try, reason: not valid java name */
    public ASN1Encodable m916try() {
        return this.f781if;
    }
}
