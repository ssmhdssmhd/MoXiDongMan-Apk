package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class a5 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private er[] f44do;

    /* renamed from: if, reason: not valid java name */
    private boolean f45if;

    private a5(Csuper csuper) {
        this.f45if = true;
        this.f44do = new er[csuper.size()];
        int i = 0;
        while (true) {
            er[] erVarArr = this.f44do;
            if (i == erVarArr.length) {
                this.f45if = csuper instanceof Cpackage;
                return;
            } else {
                erVarArr[i] = er.m1996case(csuper.mo33075final(i));
                i++;
            }
        }
    }

    public a5(er[] erVarArr) {
        this.f45if = true;
        this.f44do = m40new(erVarArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static a5 m39case(Object obj) {
        if (obj instanceof a5) {
            return (a5) obj;
        }
        if (obj != null) {
            return new a5(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private er[] m40new(er[] erVarArr) {
        int length = erVarArr.length;
        er[] erVarArr2 = new er[length];
        System.arraycopy(erVarArr, 0, erVarArr2, 0, length);
        return erVarArr2;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        int i = 0;
        while (true) {
            er[] erVarArr = this.f44do;
            if (i == erVarArr.length) {
                break;
            }
            cimport.m3516do(erVarArr[i]);
            i++;
        }
        return this.f45if ? new Cpackage(cimport) : new org.bouncycastle.asn1.d0(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public er[] m41try() {
        return m40new(this.f44do);
    }
}
