package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class w4 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cthrow f7394do;

    public w4(Cimport cimport) {
        this.f7394do = new org.bouncycastle.asn1.e0(cimport);
    }

    private w4(Cthrow cthrow) {
        this.f7394do = cthrow;
    }

    /* renamed from: case, reason: not valid java name */
    public static w4 m9044case(Cimport cimport, boolean z) {
        return m9045try(Cthrow.m33152const(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static w4 m9045try(Object obj) {
        if (obj instanceof w4) {
            return (w4) obj;
        }
        if (obj != null) {
            return new w4(Cthrow.m33151class(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public p4[] m9046new() {
        int size = this.f7394do.size();
        p4[] p4VarArr = new p4[size];
        for (int i = 0; i != size; i++) {
            p4VarArr[i] = p4.m5872else(this.f7394do.m33158super(i));
        }
        return p4VarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f7394do;
    }
}
