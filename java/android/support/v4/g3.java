package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class g3 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f2046do;

    public g3(f3 f3Var) {
        this.f2046do = new org.bouncycastle.asn1.n(f3Var);
    }

    private g3(Csuper csuper) throws IllegalArgumentException {
        Cimport cimport = new Cimport();
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            cimport.m3516do(f3.m2125case(enumerationMo33076super.nextElement()));
        }
        this.f2046do = new org.bouncycastle.asn1.n(cimport);
    }

    public g3(f3[] f3VarArr) {
        this.f2046do = new org.bouncycastle.asn1.n(f3VarArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static g3 m2554case(Object obj) {
        if (obj instanceof f3) {
            return (g3) obj;
        }
        if (obj != null) {
            return new g3(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public g3 m2555new(f3 f3Var) {
        Cimport cimport = new Cimport();
        for (int i = 0; i != this.f2046do.size(); i++) {
            cimport.m3516do(this.f2046do.mo33075final(i));
        }
        cimport.m3516do(f3Var);
        return new g3(new org.bouncycastle.asn1.n(cimport));
    }

    public int size() {
        return this.f2046do.size();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f2046do;
    }

    /* renamed from: try, reason: not valid java name */
    public f3[] m2556try() {
        int size = this.f2046do.size();
        f3[] f3VarArr = new f3[size];
        for (int i = 0; i != size; i++) {
            f3VarArr[i] = f3.m2125case(this.f2046do.mo33075final(i));
        }
        return f3VarArr;
    }
}
