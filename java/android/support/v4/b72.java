package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class b72 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private y62[] f369do;

    public b72(y62 y62Var) {
        this.f369do = new y62[]{y62Var};
    }

    private b72(Csuper csuper) {
        this.f369do = new y62[csuper.size()];
        Enumeration enumerationMo33076super = csuper.mo33076super();
        int i = 0;
        while (enumerationMo33076super.hasMoreElements()) {
            this.f369do[i] = y62.m9763case(enumerationMo33076super.nextElement());
            i++;
        }
    }

    public b72(y62[] y62VarArr) {
        this.f369do = m461new(y62VarArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static b72 m460case(Cimport cimport, boolean z) {
        return m462try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    private y62[] m461new(y62[] y62VarArr) {
        int length = y62VarArr.length;
        y62[] y62VarArr2 = new y62[length];
        System.arraycopy(y62VarArr, 0, y62VarArr2, 0, length);
        return y62VarArr2;
    }

    /* renamed from: try, reason: not valid java name */
    public static b72 m462try(Object obj) {
        if (obj instanceof b72) {
            return (b72) obj;
        }
        if (obj != null) {
            return new b72(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public y62[] m463else() {
        return m461new(this.f369do);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        int i = 0;
        while (true) {
            y62[] y62VarArr = this.f369do;
            if (i == y62VarArr.length) {
                return new org.bouncycastle.asn1.n(cimport);
            }
            cimport.m3516do(y62VarArr[i]);
            i++;
        }
    }
}
