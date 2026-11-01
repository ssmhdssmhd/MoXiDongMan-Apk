package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cfor;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class ka1 extends Cbreak implements ASN1Choice {

    /* renamed from: for, reason: not valid java name */
    public static final int f3343for = 1;

    /* renamed from: if, reason: not valid java name */
    public static final int f3344if = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f3345new = 2;

    /* renamed from: do, reason: not valid java name */
    private ASN1Encodable f3346do;

    public ka1(k70 k70Var) {
        this.f3346do = k70Var;
    }

    public ka1(Cclass cclass) {
        this.f3346do = cclass;
    }

    private ka1(Cimport cimport) {
        ASN1Encodable aSN1EncodableM4278new;
        int tagNo = cimport.getTagNo();
        if (tagNo == 0) {
            aSN1EncodableM4278new = k70.m4278new(cimport.m33065const());
        } else if (tagNo == 1) {
            aSN1EncodableM4278new = Cclass.m32797class(cimport, false);
        } else {
            if (tagNo != 2) {
                throw new IllegalArgumentException("unknown tag number: " + cimport.getTagNo());
            }
            aSN1EncodableM4278new = Cfor.m33020final(cimport, false);
        }
        this.f3346do = aSN1EncodableM4278new;
    }

    public ka1(boolean z) {
        this.f3346do = Cfor.m33021super(z);
    }

    /* renamed from: new, reason: not valid java name */
    public static ka1 m4336new(Object obj) {
        if (obj == null || (obj instanceof ka1)) {
            return (ka1) obj;
        }
        if (obj instanceof Cimport) {
            return new ka1((Cimport) obj);
        }
        throw new IllegalArgumentException("unknown object: " + obj);
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m4337case() {
        return this.f3346do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        ASN1Encodable aSN1Encodable = this.f3346do;
        return aSN1Encodable instanceof k70 ? new org.bouncycastle.asn1.u(true, 0, this.f3346do) : aSN1Encodable instanceof Cclass ? new org.bouncycastle.asn1.u(false, 1, this.f3346do) : new org.bouncycastle.asn1.u(false, 2, this.f3346do);
    }

    /* renamed from: try, reason: not valid java name */
    public int m4338try() {
        ASN1Encodable aSN1Encodable = this.f3346do;
        if (aSN1Encodable instanceof k70) {
            return 0;
        }
        return aSN1Encodable instanceof Cclass ? 1 : 2;
    }
}
