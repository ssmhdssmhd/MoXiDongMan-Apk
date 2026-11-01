package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cif;

/* loaded from: classes3.dex */
public class b5 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private m[] f341do;

    public b5(m mVar) {
        this(new m[]{mVar});
    }

    public b5(Ccatch ccatch, tg0 tg0Var) {
        this(new m(ccatch, tg0Var));
    }

    private b5(Csuper csuper) {
        if (csuper.size() < 1) {
            throw new IllegalArgumentException("sequence may not be empty");
        }
        this.f341do = new m[csuper.size()];
        for (int i = 0; i != csuper.size(); i++) {
            this.f341do[i] = m.m4813case(csuper.mo33075final(i));
        }
    }

    public b5(m[] mVarArr) {
        m[] mVarArr2 = new m[mVarArr.length];
        this.f341do = mVarArr2;
        System.arraycopy(mVarArr, 0, mVarArr2, 0, mVarArr.length);
    }

    /* renamed from: case, reason: not valid java name */
    public static b5 m443case(Object obj) {
        if (obj instanceof b5) {
            return (b5) obj;
        }
        if (obj != null) {
            return new b5(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public static b5 m444new(y90 y90Var) {
        return m443case(y90Var.m9791this(Cif.f29319finally));
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        int i = 0;
        while (true) {
            m[] mVarArr = this.f341do;
            if (i == mVarArr.length) {
                return new org.bouncycastle.asn1.n(cimport);
            }
            cimport.m3516do(mVarArr[i]);
            i++;
        }
    }

    public String toString() {
        return "AuthorityInformationAccess: Oid(" + this.f341do[0].m4815try().m32795super() + ")";
    }

    /* renamed from: try, reason: not valid java name */
    public m[] m445try() {
        return this.f341do;
    }
}
