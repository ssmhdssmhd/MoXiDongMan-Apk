package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ol1 extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    public ASN1Encodable f4668do;

    public ol1(kr0 kr0Var) {
        this.f4668do = kr0Var;
    }

    public ol1(mq0 mq0Var) {
        this.f4668do = new org.bouncycastle.asn1.u(false, 2, mq0Var);
    }

    public ol1(tc1 tc1Var) {
        this.f4668do = new org.bouncycastle.asn1.u(false, 3, tc1Var);
    }

    public ol1(vq0 vq0Var) {
        this.f4668do = new org.bouncycastle.asn1.u(false, 1, vq0Var);
    }

    public ol1(x81 x81Var) {
        this.f4668do = new org.bouncycastle.asn1.u(false, 4, x81Var);
    }

    public ol1(Cfinal cfinal) {
        this.f4668do = cfinal;
    }

    /* renamed from: case, reason: not valid java name */
    private mq0 m5710case(Cimport cimport) {
        return mq0.m4976case(cimport, cimport.m33066final());
    }

    /* renamed from: try, reason: not valid java name */
    public static ol1 m5711try(Object obj) {
        if (obj == null || (obj instanceof ol1)) {
            return (ol1) obj;
        }
        if (obj instanceof Csuper) {
            return new ol1((Csuper) obj);
        }
        if (obj instanceof Cimport) {
            return new ol1((Cimport) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    /* renamed from: else, reason: not valid java name */
    public Cgoto m5712else() {
        ASN1Encodable aSN1Encodable = this.f4668do;
        if (!(aSN1Encodable instanceof Cimport)) {
            return kr0.m4474try(aSN1Encodable).m4477goto();
        }
        Cimport cimport = (Cimport) aSN1Encodable;
        int tagNo = cimport.getTagNo();
        if (tagNo == 1) {
            return vq0.m8934try(cimport, false).m8935break();
        }
        if (tagNo == 2) {
            return m5710case(cimport).m4981this();
        }
        if (tagNo == 3) {
            return tc1.m7803case(cimport, false).m7808this();
        }
        if (tagNo == 4) {
            return new Cgoto(0L);
        }
        throw new IllegalStateException("unknown tag");
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m5713goto() {
        return this.f4668do instanceof Cimport;
    }

    /* renamed from: new, reason: not valid java name */
    public ASN1Encodable m5714new() {
        ASN1Encodable aSN1Encodable = this.f4668do;
        if (!(aSN1Encodable instanceof Cimport)) {
            return kr0.m4474try(aSN1Encodable);
        }
        Cimport cimport = (Cimport) aSN1Encodable;
        int tagNo = cimport.getTagNo();
        if (tagNo == 1) {
            return vq0.m8934try(cimport, false);
        }
        if (tagNo == 2) {
            return m5710case(cimport);
        }
        if (tagNo == 3) {
            return tc1.m7803case(cimport, false);
        }
        if (tagNo == 4) {
            return x81.m9429try(cimport, false);
        }
        throw new IllegalStateException("unknown tag");
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f4668do.toASN1Primitive();
    }
}
