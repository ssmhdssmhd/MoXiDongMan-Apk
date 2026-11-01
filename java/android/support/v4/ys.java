package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ys extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f8323do;

    private ys(Csuper csuper) {
        this.f8323do = csuper;
    }

    public ys(p4[] p4VarArr) {
        this.f8323do = new org.bouncycastle.asn1.n(p4VarArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static ys m9933case(Cimport cimport, boolean z) {
        return m9934try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static ys m9934try(Object obj) {
        if (obj instanceof ys) {
            return (ys) obj;
        }
        if (obj != null) {
            return new ys(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public p4[] m9935new() {
        int size = this.f8323do.size();
        p4[] p4VarArr = new p4[size];
        for (int i = 0; i != size; i++) {
            p4VarArr[i] = p4.m5872else(this.f8323do.mo33075final(i));
        }
        return p4VarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f8323do;
    }
}
