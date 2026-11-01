package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class os extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private ns f4726do;

    /* renamed from: for, reason: not valid java name */
    private y81 f4727for;

    /* renamed from: if, reason: not valid java name */
    private m61 f4728if;

    public os(ns nsVar, m61 m61Var, y81 y81Var) {
        this.f4726do = nsVar;
        this.f4728if = m61Var;
        this.f4727for = y81Var;
    }

    private os(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimport = (Cimport) enumerationMo33076super.nextElement();
            int tagNo = cimport.getTagNo();
            if (tagNo == 0) {
                this.f4726do = ns.m5361try(cimport.m33065const());
            } else if (tagNo == 1) {
                this.f4728if = m61.m4854new(cimport.m33065const());
            } else {
                if (tagNo != 2) {
                    throw new IllegalArgumentException("illegal tag");
                }
                this.f4727for = y81.m9772new(cimport.m33065const());
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static os m5744try(Object obj) {
        if (obj instanceof os) {
            return (os) obj;
        }
        if (obj != null) {
            return new os(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public m61 m5745case() {
        return this.f4728if;
    }

    /* renamed from: else, reason: not valid java name */
    public y81 m5746else() {
        return this.f4727for;
    }

    /* renamed from: new, reason: not valid java name */
    public ns m5747new() {
        return this.f4726do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f4726do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f4726do.toASN1Primitive()));
        }
        if (this.f4728if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, this.f4728if.toASN1Primitive()));
        }
        if (this.f4727for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 2, this.f4727for.toASN1Primitive()));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
