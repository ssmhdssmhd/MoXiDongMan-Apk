package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class oy1 extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private ASN1Encodable f4806do;

    public oy1(bo0 bo0Var) {
        this.f4806do = bo0Var;
    }

    public oy1(Cclass cclass) {
        this.f4806do = new org.bouncycastle.asn1.u(false, 0, cclass);
    }

    public oy1(Cfinal cfinal) {
        this.f4806do = cfinal;
    }

    /* renamed from: try, reason: not valid java name */
    public static oy1 m5818try(Object obj) {
        if (obj == null || (obj instanceof oy1)) {
            return (oy1) obj;
        }
        if (obj instanceof bo0) {
            return new oy1((bo0) obj);
        }
        if (obj instanceof Cclass) {
            return new oy1((Cclass) obj);
        }
        if (obj instanceof Cfinal) {
            return new oy1((Cfinal) obj);
        }
        throw new IllegalArgumentException("Illegal object in SignerIdentifier: " + obj.getClass().getName());
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m5819case() {
        return this.f4806do instanceof Cimport;
    }

    /* renamed from: new, reason: not valid java name */
    public ASN1Encodable m5820new() {
        ASN1Encodable aSN1Encodable = this.f4806do;
        return aSN1Encodable instanceof Cimport ? Cclass.m32797class((Cimport) aSN1Encodable, false) : aSN1Encodable;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f4806do.toASN1Primitive();
    }
}
