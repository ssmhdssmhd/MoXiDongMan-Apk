package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class nn1 extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private ASN1Encodable f4273do;

    public nn1(tg2 tg2Var) {
        this.f4273do = tg2Var;
    }

    public nn1(Cclass cclass) {
        this.f4273do = cclass;
    }

    /* renamed from: new, reason: not valid java name */
    public static nn1 m5279new(Object obj) {
        if (obj instanceof nn1) {
            return (nn1) obj;
        }
        if (obj instanceof org.bouncycastle.asn1.j) {
            return new nn1((org.bouncycastle.asn1.j) obj);
        }
        if (!(obj instanceof Cimport)) {
            return new nn1(tg2.m7884else(obj));
        }
        Cimport cimport = (Cimport) obj;
        return cimport.getTagNo() == 1 ? new nn1(tg2.m7885goto(cimport, true)) : new nn1(Cclass.m32797class(cimport, true));
    }

    /* renamed from: try, reason: not valid java name */
    public static nn1 m5280try(Cimport cimport, boolean z) {
        return m5279new(cimport.m33065const());
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m5281case() {
        ASN1Encodable aSN1Encodable = this.f4273do;
        if (aSN1Encodable instanceof Cclass) {
            return ((Cclass) aSN1Encodable).mo5490const();
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public tg2 m5282else() {
        ASN1Encodable aSN1Encodable = this.f4273do;
        if (aSN1Encodable instanceof Cclass) {
            return null;
        }
        return tg2.m7884else(aSN1Encodable);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f4273do instanceof Cclass ? new org.bouncycastle.asn1.u(true, 2, this.f4273do) : new org.bouncycastle.asn1.u(true, 1, this.f4273do);
    }
}
