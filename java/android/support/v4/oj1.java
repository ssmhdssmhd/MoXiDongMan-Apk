package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class oj1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cthrow f4647do;

    public oj1(u4 u4Var) {
        this.f4647do = new org.bouncycastle.asn1.q(u4Var);
    }

    public oj1(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        Cimport cimport = new Cimport();
        cimport.m3516do(ccatch);
        cimport.m3516do(aSN1Encodable);
        this.f4647do = new org.bouncycastle.asn1.q(new org.bouncycastle.asn1.n(cimport));
    }

    private oj1(Cthrow cthrow) {
        this.f4647do = cthrow;
    }

    public oj1(u4[] u4VarArr) {
        this.f4647do = new org.bouncycastle.asn1.q(u4VarArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static oj1 m5671try(Object obj) {
        if (obj instanceof oj1) {
            return (oj1) obj;
        }
        if (obj != null) {
            return new oj1(Cthrow.m33151class(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public u4[] m5672case() {
        int size = this.f4647do.size();
        u4[] u4VarArr = new u4[size];
        for (int i = 0; i != size; i++) {
            u4VarArr[i] = u4.m8230new(this.f4647do.m33158super(i));
        }
        return u4VarArr;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m5673else() {
        return this.f4647do.size() > 1;
    }

    /* renamed from: new, reason: not valid java name */
    public u4 m5674new() {
        if (this.f4647do.size() == 0) {
            return null;
        }
        return u4.m8230new(this.f4647do.m33158super(0));
    }

    public int size() {
        return this.f4647do.size();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f4647do;
    }
}
