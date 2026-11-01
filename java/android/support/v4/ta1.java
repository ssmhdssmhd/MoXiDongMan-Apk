package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ta1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f6459do;

    public ta1(sa1 sa1Var) {
        this.f6459do = new org.bouncycastle.asn1.n(sa1Var);
    }

    private ta1(Csuper csuper) {
        this.f6459do = csuper;
    }

    public ta1(sa1[] sa1VarArr) {
        Cimport cimport = new Cimport();
        for (sa1 sa1Var : sa1VarArr) {
            cimport.m3516do(sa1Var);
        }
        this.f6459do = new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: new, reason: not valid java name */
    public static ta1 m7797new(Object obj) {
        if (obj instanceof ta1) {
            return (ta1) obj;
        }
        if (obj != null) {
            return new ta1(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f6459do;
    }

    /* renamed from: try, reason: not valid java name */
    public sa1[] m7798try() {
        int size = this.f6459do.size();
        sa1[] sa1VarArr = new sa1[size];
        for (int i = 0; i != size; i++) {
            sa1VarArr[i] = sa1.m7347goto(this.f6459do.mo33075final(i));
        }
        return sa1VarArr;
    }
}
