package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class r10 extends Cbreak implements ASN1Choice {

    /* renamed from: for, reason: not valid java name */
    public static final int f5580for = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f5581new = 1;

    /* renamed from: do, reason: not valid java name */
    public ASN1Encodable f5582do;

    /* renamed from: if, reason: not valid java name */
    public int f5583if;

    public r10(int i, ASN1Encodable aSN1Encodable) {
        this.f5583if = i;
        this.f5582do = aSN1Encodable;
    }

    public r10(ug0 ug0Var) {
        this(0, ug0Var);
    }

    public r10(Cimport cimport) {
        int tagNo = cimport.getTagNo();
        this.f5583if = tagNo;
        this.f5582do = tagNo == 0 ? ug0.m8437else(cimport, false) : Cthrow.m33152const(cimport, false);
    }

    /* renamed from: case, reason: not valid java name */
    public static r10 m6727case(Cimport cimport, boolean z) {
        return m6729try(Cimport.m33064class(cimport, true));
    }

    /* renamed from: new, reason: not valid java name */
    private void m6728new(StringBuffer stringBuffer, String str, String str2, String str3) {
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
    public static r10 m6729try(Object obj) {
        if (obj == null || (obj instanceof r10)) {
            return (r10) obj;
        }
        if (obj instanceof Cimport) {
            return new r10((Cimport) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    /* renamed from: else, reason: not valid java name */
    public ASN1Encodable m6730else() {
        return this.f5582do;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m6731goto() {
        return this.f5583if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.u(false, this.f5583if, this.f5582do);
    }

    public String toString() {
        String string;
        String str;
        String strM36360new = Cfor.m36360new();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("DistributionPointName: [");
        stringBuffer.append(strM36360new);
        if (this.f5583if == 0) {
            string = this.f5582do.toString();
            str = "fullName";
        } else {
            string = this.f5582do.toString();
            str = "nameRelativeToCRLIssuer";
        }
        m6728new(stringBuffer, strM36360new, str, string);
        stringBuffer.append("]");
        stringBuffer.append(strM36360new);
        return stringBuffer.toString();
    }
}
