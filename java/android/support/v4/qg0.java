package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class qg0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f5398do;

    public qg0(pm0 pm0Var) {
        this.f5398do = new org.bouncycastle.asn1.n(pm0Var);
    }

    private qg0(Csuper csuper) {
        this.f5398do = csuper;
    }

    public qg0(pm0[] pm0VarArr) {
        Cimport cimport = new Cimport();
        for (pm0 pm0Var : pm0VarArr) {
            cimport.m3516do(pm0Var);
        }
        this.f5398do = new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: new, reason: not valid java name */
    public static qg0 m6554new(Object obj) {
        if (obj instanceof qg0) {
            return (qg0) obj;
        }
        if (obj != null) {
            return new qg0(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f5398do;
    }

    /* renamed from: try, reason: not valid java name */
    public pm0[] m6555try() {
        int size = this.f5398do.size();
        pm0[] pm0VarArr = new pm0[size];
        for (int i = 0; i != size; i++) {
            pm0VarArr[i] = pm0.m6117case(this.f5398do.mo33075final(i));
        }
        return pm0VarArr;
    }
}
