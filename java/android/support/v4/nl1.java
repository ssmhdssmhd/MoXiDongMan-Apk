package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class nl1 extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private ASN1Encodable f4259do;

    public nl1(bo0 bo0Var) {
        this.f4259do = bo0Var;
    }

    public nl1(Cclass cclass) {
        this.f4259do = new org.bouncycastle.asn1.u(false, 0, cclass);
    }

    public nl1(Cfinal cfinal) {
        this.f4259do = cfinal;
    }

    /* renamed from: try, reason: not valid java name */
    public static nl1 m5269try(Object obj) {
        if (obj == null || (obj instanceof nl1)) {
            return (nl1) obj;
        }
        if (obj instanceof bo0) {
            return new nl1((bo0) obj);
        }
        if (obj instanceof Cclass) {
            return new nl1((Cclass) obj);
        }
        if (obj instanceof Cfinal) {
            return new nl1((Cfinal) obj);
        }
        throw new IllegalArgumentException("Illegal object in RecipientIdentifier: " + obj.getClass().getName());
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m5270case() {
        return this.f4259do instanceof Cimport;
    }

    /* renamed from: new, reason: not valid java name */
    public ASN1Encodable m5271new() {
        ASN1Encodable aSN1Encodable = this.f4259do;
        return aSN1Encodable instanceof Cimport ? Cclass.m32797class((Cimport) aSN1Encodable, false) : bo0.m601new(aSN1Encodable);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f4259do.toASN1Primitive();
    }
}
