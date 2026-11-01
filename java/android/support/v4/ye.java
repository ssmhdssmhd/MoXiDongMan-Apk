package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class ye extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Csuper f8193do;

    private ye(Csuper csuper) {
        this.f8193do = null;
        this.f8193do = csuper;
    }

    public ye(q10[] q10VarArr) {
        this.f8193do = null;
        Cimport cimport = new Cimport();
        for (int i = 0; i != q10VarArr.length; i++) {
            cimport.m3516do(q10VarArr[i]);
        }
        this.f8193do = new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: case, reason: not valid java name */
    public static ye m9822case(Object obj) {
        if (obj instanceof ye) {
            return (ye) obj;
        }
        if (obj != null) {
            return new ye(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static ye m9823else(Cimport cimport, boolean z) {
        return m9822case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public static ye m9824new(y90 y90Var) {
        return m9822case(y90Var.m9791this(Cif.f29323native));
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f8193do;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = Cfor.m36360new();
        stringBuffer.append("CRLDistPoint:");
        stringBuffer.append(strM36360new);
        q10[] q10VarArrM9825try = m9825try();
        for (int i = 0; i != q10VarArrM9825try.length; i++) {
            stringBuffer.append("    ");
            stringBuffer.append(q10VarArrM9825try[i]);
            stringBuffer.append(strM36360new);
        }
        return stringBuffer.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public q10[] m9825try() {
        q10[] q10VarArr = new q10[this.f8193do.size()];
        for (int i = 0; i != this.f8193do.size(); i++) {
            q10VarArr[i] = q10.m6305else(this.f8193do.mo33075final(i));
        }
        return q10VarArr;
    }
}
