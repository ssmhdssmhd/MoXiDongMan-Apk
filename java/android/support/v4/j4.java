package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class j4 extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    public ASN1Encodable f2965do;

    /* renamed from: if, reason: not valid java name */
    public Cfinal f2966if;

    public j4(sd2 sd2Var) {
        this.f2965do = sd2Var;
        this.f2966if = new org.bouncycastle.asn1.u(false, 0, this.f2965do);
    }

    public j4(ug0 ug0Var) {
        this.f2965do = ug0Var;
        this.f2966if = ug0Var.toASN1Primitive();
    }

    /* renamed from: new, reason: not valid java name */
    public static j4 m3715new(Object obj) {
        if (obj == null || (obj instanceof j4)) {
            return (j4) obj;
        }
        if (obj instanceof sd2) {
            return new j4(sd2.m7367try(obj));
        }
        if (obj instanceof ug0) {
            return new j4((ug0) obj);
        }
        if (obj instanceof Cimport) {
            return new j4(sd2.m7366case((Cimport) obj, false));
        }
        if (obj instanceof Csuper) {
            return new j4(ug0.m8436case(obj));
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    /* renamed from: try, reason: not valid java name */
    public static j4 m3716try(Cimport cimport, boolean z) {
        return m3715new(cimport.m33065const());
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m3717case() {
        return this.f2965do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f2966if;
    }
}
