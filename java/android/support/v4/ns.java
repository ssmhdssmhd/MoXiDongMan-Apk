package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ns extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f4318do;

    private ns(Csuper csuper) {
        Csuper csuper2 = (Csuper) csuper.mo33075final(0);
        this.f4318do = csuper2;
        Enumeration enumerationMo33076super = csuper2.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            ps.m6215case(enumerationMo33076super.nextElement());
        }
    }

    public ns(ps[] psVarArr) {
        this.f4318do = new org.bouncycastle.asn1.n(psVarArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static ns m5361try(Object obj) {
        if (obj instanceof ns) {
            return (ns) obj;
        }
        if (obj != null) {
            return new ns(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public ps[] m5362new() {
        int size = this.f4318do.size();
        ps[] psVarArr = new ps[size];
        for (int i = 0; i < size; i++) {
            psVarArr[i] = ps.m6215case(this.f4318do.mo33075final(i));
        }
        return psVarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.n(this.f4318do);
    }
}
