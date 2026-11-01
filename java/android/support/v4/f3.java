package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class f3 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f1679do;

    public f3(e3 e3Var) {
        this.f1679do = new org.bouncycastle.asn1.n(e3Var);
    }

    private f3(Csuper csuper) {
        Cimport cimport = new Cimport();
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            cimport.m3516do(e3.m1635case(enumerationMo33076super.nextElement()));
        }
        this.f1679do = new org.bouncycastle.asn1.n(cimport);
    }

    public f3(e3[] e3VarArr) {
        this.f1679do = new org.bouncycastle.asn1.n(e3VarArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static f3 m2125case(Object obj) {
        if (obj instanceof f3) {
            return (f3) obj;
        }
        if (obj != null) {
            return new f3(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public f3 m2126new(e3 e3Var) {
        Cimport cimport = new Cimport();
        for (int i = 0; i != this.f1679do.size(); i++) {
            cimport.m3516do(this.f1679do.mo33075final(i));
        }
        cimport.m3516do(e3Var);
        return new f3(new org.bouncycastle.asn1.n(cimport));
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f1679do;
    }

    /* renamed from: try, reason: not valid java name */
    public e3[] m2127try() {
        int size = this.f1679do.size();
        e3[] e3VarArr = new e3[size];
        for (int i = 0; i != size; i++) {
            e3VarArr[i] = e3.m1635case(this.f1679do.mo33075final(i));
        }
        return e3VarArr;
    }
}
