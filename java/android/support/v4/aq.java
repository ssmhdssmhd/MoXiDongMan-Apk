package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class aq extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f227do;

    private aq(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            os.m5744try(enumerationMo33076super.nextElement());
        }
        this.f227do = csuper;
    }

    public aq(os[] osVarArr) {
        this.f227do = new org.bouncycastle.asn1.n(osVarArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static aq m313try(Object obj) {
        if (obj instanceof aq) {
            return (aq) obj;
        }
        if (obj != null) {
            return new aq(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public os[] m314new() {
        int size = this.f227do.size();
        os[] osVarArr = new os[size];
        for (int i = 0; i < size; i++) {
            osVarArr[i] = os.m5744try(this.f227do.mo33075final(i));
        }
        return osVarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f227do;
    }
}
