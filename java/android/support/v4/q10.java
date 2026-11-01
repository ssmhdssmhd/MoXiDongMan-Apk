package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class q10 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public r10 f5230do;

    /* renamed from: for, reason: not valid java name */
    public ug0 f5231for;

    /* renamed from: if, reason: not valid java name */
    public ll1 f5232if;

    public q10(r10 r10Var, ll1 ll1Var, ug0 ug0Var) {
        this.f5230do = r10Var;
        this.f5232if = ll1Var;
        this.f5231for = ug0Var;
    }

    public q10(Csuper csuper) {
        for (int i = 0; i != csuper.size(); i++) {
            Cimport cimportM33063catch = Cimport.m33063catch(csuper.mo33075final(i));
            int tagNo = cimportM33063catch.getTagNo();
            if (tagNo == 0) {
                this.f5230do = r10.m6727case(cimportM33063catch, true);
            } else if (tagNo == 1) {
                this.f5232if = new ll1(Cinstanceof.m33069return(cimportM33063catch, false));
            } else {
                if (tagNo != 2) {
                    throw new IllegalArgumentException("Unknown tag encountered in structure: " + cimportM33063catch.getTagNo());
                }
                this.f5231for = ug0.m8437else(cimportM33063catch, false);
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static q10 m6305else(Object obj) {
        if (obj == null || (obj instanceof q10)) {
            return (q10) obj;
        }
        if (obj instanceof Csuper) {
            return new q10((Csuper) obj);
        }
        throw new IllegalArgumentException("Invalid DistributionPoint: " + obj.getClass().getName());
    }

    /* renamed from: goto, reason: not valid java name */
    public static q10 m6306goto(Cimport cimport, boolean z) {
        return m6305else(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    private void m6307new(StringBuffer stringBuffer, String str, String str2, String str3) {
        stringBuffer.append("    ");
        stringBuffer.append(str2);
        stringBuffer.append(":");
        stringBuffer.append(str);
        stringBuffer.append("    ");
        stringBuffer.append("    ");
        stringBuffer.append(str3);
        stringBuffer.append(str);
    }

    /* renamed from: case, reason: not valid java name */
    public r10 m6308case() {
        return this.f5230do;
    }

    /* renamed from: this, reason: not valid java name */
    public ll1 m6309this() {
        return this.f5232if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f5230do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(0, this.f5230do));
        }
        if (this.f5232if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f5232if));
        }
        if (this.f5231for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 2, this.f5231for));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    public String toString() {
        String strM36360new = Cfor.m36360new();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("DistributionPoint: [");
        stringBuffer.append(strM36360new);
        r10 r10Var = this.f5230do;
        if (r10Var != null) {
            m6307new(stringBuffer, strM36360new, "distributionPoint", r10Var.toString());
        }
        ll1 ll1Var = this.f5232if;
        if (ll1Var != null) {
            m6307new(stringBuffer, strM36360new, "reasons", ll1Var.toString());
        }
        ug0 ug0Var = this.f5231for;
        if (ug0Var != null) {
            m6307new(stringBuffer, strM36360new, "cRLIssuer", ug0Var.toString());
        }
        stringBuffer.append("]");
        stringBuffer.append(strM36360new);
        return stringBuffer.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public ug0 m6310try() {
        return this.f5231for;
    }
}
