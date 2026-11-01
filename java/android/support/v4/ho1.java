package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ho1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f2444do;

    public ho1(eo1 eo1Var) {
        this.f2444do = new org.bouncycastle.asn1.n(eo1Var);
    }

    private ho1(Csuper csuper) {
        this.f2444do = csuper;
    }

    public ho1(eo1[] eo1VarArr) {
        Cimport cimport = new Cimport();
        for (int i = 0; i != eo1VarArr.length; i++) {
            cimport.m3516do(eo1VarArr[i]);
        }
        this.f2444do = new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: new, reason: not valid java name */
    public static ho1 m3076new(Object obj) {
        if (obj instanceof ho1) {
            return (ho1) obj;
        }
        if (obj != null) {
            return new ho1(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f2444do;
    }

    /* renamed from: try, reason: not valid java name */
    public eo1[] m3077try() {
        int size = this.f2444do.size();
        eo1[] eo1VarArr = new eo1[size];
        for (int i = 0; i != size; i++) {
            eo1VarArr[i] = eo1.m1965case(this.f2444do.mo33075final(i));
        }
        return eo1VarArr;
    }
}
