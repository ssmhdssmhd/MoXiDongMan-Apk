package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class mg extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private int f3911do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f3912if;

    public mg() {
        this.f3911do = 0;
        this.f3912if = org.bouncycastle.asn1.h.f29080do;
    }

    public mg(int i, ASN1Encodable aSN1Encodable) {
        this.f3911do = i;
        this.f3912if = aSN1Encodable;
    }

    public mg(lo1 lo1Var) {
        this.f3911do = 1;
        this.f3912if = lo1Var;
    }

    private mg(Cimport cimport) {
        ASN1Encodable aSN1EncodableM4724try;
        this.f3911do = cimport.getTagNo();
        int tagNo = cimport.getTagNo();
        if (tagNo == 0) {
            aSN1EncodableM4724try = org.bouncycastle.asn1.h.f29080do;
        } else if (tagNo != 1) {
            if (tagNo != 2) {
                throw new IllegalArgumentException("Unknown tag encountered: " + cimport.getTagNo());
            }
            aSN1EncodableM4724try = org.bouncycastle.asn1.h.f29080do;
        } else {
            aSN1EncodableM4724try = lo1.m4724try(cimport, false);
        }
        this.f3912if = aSN1EncodableM4724try;
    }

    /* renamed from: new, reason: not valid java name */
    public static mg m4925new(Object obj) {
        if (obj == null || (obj instanceof mg)) {
            return (mg) obj;
        }
        if (obj instanceof Cimport) {
            return new mg((Cimport) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    /* renamed from: try, reason: not valid java name */
    public static mg m4926try(Cimport cimport, boolean z) {
        return m4925new(cimport.m33065const());
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m4927case() {
        return this.f3912if;
    }

    public int getTagNo() {
        return this.f3911do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.u(false, this.f3911do, this.f3912if);
    }
}
