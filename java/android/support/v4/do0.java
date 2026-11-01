package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cfor;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class do0 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private boolean f1088case;

    /* renamed from: do, reason: not valid java name */
    private r10 f1089do;

    /* renamed from: else, reason: not valid java name */
    private Csuper f1090else;

    /* renamed from: for, reason: not valid java name */
    private boolean f1091for;

    /* renamed from: if, reason: not valid java name */
    private boolean f1092if;

    /* renamed from: new, reason: not valid java name */
    private ll1 f1093new;

    /* renamed from: try, reason: not valid java name */
    private boolean f1094try;

    public do0(r10 r10Var, boolean z, boolean z2) {
        this(r10Var, false, false, null, z, z2);
    }

    public do0(r10 r10Var, boolean z, boolean z2, ll1 ll1Var, boolean z3, boolean z4) {
        this.f1089do = r10Var;
        this.f1094try = z3;
        this.f1088case = z4;
        this.f1091for = z2;
        this.f1092if = z;
        this.f1093new = ll1Var;
        Cimport cimport = new Cimport();
        if (r10Var != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, r10Var));
        }
        if (z) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, Cfor.m33021super(true)));
        }
        if (z2) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 2, Cfor.m33021super(true)));
        }
        if (ll1Var != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 3, ll1Var));
        }
        if (z3) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 4, Cfor.m33021super(true)));
        }
        if (z4) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 5, Cfor.m33021super(true)));
        }
        this.f1090else = new org.bouncycastle.asn1.n(cimport);
    }

    private do0(Csuper csuper) {
        this.f1090else = csuper;
        for (int i = 0; i != csuper.size(); i++) {
            Cimport cimportM33063catch = Cimport.m33063catch(csuper.mo33075final(i));
            int tagNo = cimportM33063catch.getTagNo();
            if (tagNo == 0) {
                this.f1089do = r10.m6727case(cimportM33063catch, true);
            } else if (tagNo == 1) {
                this.f1092if = Cfor.m33020final(cimportM33063catch, false).m33022throw();
            } else if (tagNo == 2) {
                this.f1091for = Cfor.m33020final(cimportM33063catch, false).m33022throw();
            } else if (tagNo == 3) {
                this.f1093new = new ll1(Cinstanceof.m33069return(cimportM33063catch, false));
            } else if (tagNo == 4) {
                this.f1094try = Cfor.m33020final(cimportM33063catch, false).m33022throw();
            } else {
                if (tagNo != 5) {
                    throw new IllegalArgumentException("unknown tag in IssuingDistributionPoint");
                }
                this.f1088case = Cfor.m33020final(cimportM33063catch, false).m33022throw();
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static do0 m1460else(Object obj) {
        if (obj instanceof do0) {
            return (do0) obj;
        }
        if (obj != null) {
            return new do0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public static do0 m1461goto(Cimport cimport, boolean z) {
        return m1460else(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    private void m1462new(StringBuffer stringBuffer, String str, String str2, String str3) {
        stringBuffer.append("    ");
        stringBuffer.append(str2);
        stringBuffer.append(":");
        stringBuffer.append(str);
        stringBuffer.append("    ");
        stringBuffer.append("    ");
        stringBuffer.append(str3);
        stringBuffer.append(str);
    }

    /* renamed from: try, reason: not valid java name */
    private String m1463try(boolean z) {
        return z ? freemarker.core.b2.f23511if : freemarker.core.b2.f23510do;
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m1464break() {
        return this.f1094try;
    }

    /* renamed from: case, reason: not valid java name */
    public r10 m1465case() {
        return this.f1089do;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m1466catch() {
        return this.f1088case;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m1467class() {
        return this.f1091for;
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m1468const() {
        return this.f1092if;
    }

    /* renamed from: this, reason: not valid java name */
    public ll1 m1469this() {
        return this.f1093new;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f1090else;
    }

    public String toString() {
        String strM36360new = org.bouncycastle.util.Cfor.m36360new();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("IssuingDistributionPoint: [");
        stringBuffer.append(strM36360new);
        r10 r10Var = this.f1089do;
        if (r10Var != null) {
            m1462new(stringBuffer, strM36360new, "distributionPoint", r10Var.toString());
        }
        boolean z = this.f1092if;
        if (z) {
            m1462new(stringBuffer, strM36360new, "onlyContainsUserCerts", m1463try(z));
        }
        boolean z2 = this.f1091for;
        if (z2) {
            m1462new(stringBuffer, strM36360new, "onlyContainsCACerts", m1463try(z2));
        }
        ll1 ll1Var = this.f1093new;
        if (ll1Var != null) {
            m1462new(stringBuffer, strM36360new, "onlySomeReasons", ll1Var.toString());
        }
        boolean z3 = this.f1088case;
        if (z3) {
            m1462new(stringBuffer, strM36360new, "onlyContainsAttributeCerts", m1463try(z3));
        }
        boolean z4 = this.f1094try;
        if (z4) {
            m1462new(stringBuffer, strM36360new, "indirectCRL", m1463try(z4));
        }
        stringBuffer.append("]");
        stringBuffer.append(strM36360new);
        return stringBuffer.toString();
    }
}
