package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class n81 extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private ASN1Encodable f4142do;

    public n81(bo0 bo0Var) {
        this.f4142do = bo0Var;
    }

    public n81(p81 p81Var) {
        this.f4142do = new org.bouncycastle.asn1.u(false, 1, p81Var);
    }

    public n81(w22 w22Var) {
        this.f4142do = new org.bouncycastle.asn1.u(false, 0, w22Var);
    }

    public n81(Cclass cclass) {
        this(new w22(cclass.mo5490const()));
    }

    public n81(Cfinal cfinal) {
        this.f4142do = cfinal;
    }

    /* renamed from: case, reason: not valid java name */
    public static n81 m5123case(Cimport cimport, boolean z) {
        if (z) {
            return m5124try(cimport.m33065const());
        }
        throw new IllegalArgumentException("Can't implicitly tag OriginatorIdentifierOrKey");
    }

    /* renamed from: try, reason: not valid java name */
    public static n81 m5124try(Object obj) {
        if (obj == null || (obj instanceof n81)) {
            return (n81) obj;
        }
        if ((obj instanceof bo0) || (obj instanceof Csuper)) {
            return new n81(bo0.m601new(obj));
        }
        if (obj instanceof Cimport) {
            Cimport cimport = (Cimport) obj;
            if (cimport.getTagNo() == 0) {
                return new n81(w22.m9021case(cimport, false));
            }
            if (cimport.getTagNo() == 1) {
                return new n81(p81.m5913case(cimport, false));
            }
        }
        throw new IllegalArgumentException("Invalid OriginatorIdentifierOrKey: " + obj.getClass().getName());
    }

    /* renamed from: else, reason: not valid java name */
    public bo0 m5125else() {
        ASN1Encodable aSN1Encodable = this.f4142do;
        if (aSN1Encodable instanceof bo0) {
            return (bo0) aSN1Encodable;
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public p81 m5126goto() {
        ASN1Encodable aSN1Encodable = this.f4142do;
        if ((aSN1Encodable instanceof Cimport) && ((Cimport) aSN1Encodable).getTagNo() == 1) {
            return p81.m5913case((Cimport) this.f4142do, false);
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public ASN1Encodable m5127new() {
        return this.f4142do;
    }

    /* renamed from: this, reason: not valid java name */
    public w22 m5128this() {
        ASN1Encodable aSN1Encodable = this.f4142do;
        if ((aSN1Encodable instanceof Cimport) && ((Cimport) aSN1Encodable).getTagNo() == 0) {
            return w22.m9021case((Cimport) this.f4142do, false);
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f4142do.toASN1Primitive();
    }
}
