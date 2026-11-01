package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ny1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Object[] f4371do;

    public ny1(q4 q4Var) {
        this.f4371do = new Object[]{q4Var};
    }

    private ny1(Csuper csuper) {
        this.f4371do = new Object[csuper.size()];
        Enumeration enumerationMo33076super = csuper.mo33076super();
        int i = 0;
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimportM33063catch = Cimport.m33063catch(enumerationMo33076super.nextElement());
            if (cimportM33063catch.getTagNo() == 0) {
                Csuper csuperM33130class = Csuper.m33130class(cimportM33063catch, true);
                int size = csuperM33130class.size();
                n4[] n4VarArr = new n4[size];
                for (int i2 = 0; i2 != size; i2++) {
                    n4VarArr[i2] = n4.m5080else(csuperM33130class.mo33075final(i2));
                }
                this.f4371do[i] = n4VarArr;
            } else {
                if (cimportM33063catch.getTagNo() != 1) {
                    throw new IllegalArgumentException("illegal tag: " + cimportM33063catch.getTagNo());
                }
                this.f4371do[i] = q4.m6399try(Csuper.m33130class(cimportM33063catch, true));
            }
            i++;
        }
    }

    public ny1(n4[] n4VarArr) {
        this.f4371do = new Object[]{n4VarArr};
    }

    /* renamed from: new, reason: not valid java name */
    public static ny1 m5417new(Object obj) {
        if (obj instanceof ny1) {
            return (ny1) obj;
        }
        if (obj != null) {
            return new ny1(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        int i = 0;
        while (true) {
            Object[] objArr = this.f4371do;
            if (i == objArr.length) {
                return new org.bouncycastle.asn1.n(cimport);
            }
            cimport.m3516do(objArr[i] instanceof n4[] ? new org.bouncycastle.asn1.u(0, new org.bouncycastle.asn1.n((n4[]) this.f4371do[i])) : new org.bouncycastle.asn1.u(1, (q4) this.f4371do[i]));
            i++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public Object[] m5418try() {
        Object[] objArr = this.f4371do;
        int length = objArr.length;
        Object[] objArr2 = new Object[length];
        System.arraycopy(objArr, 0, objArr2, 0, length);
        return objArr2;
    }
}
