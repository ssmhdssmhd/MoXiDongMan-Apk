package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class v42 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f7092do;

    public v42(x42 x42Var) {
        this.f7092do = new org.bouncycastle.asn1.n(x42Var);
    }

    private v42(Csuper csuper) {
        this.f7092do = csuper;
    }

    public v42(s42[] s42VarArr) {
        this(new x42(s42VarArr));
    }

    /* renamed from: new, reason: not valid java name */
    public static v42 m8750new(Object obj) {
        if (obj instanceof v42) {
            return (v42) obj;
        }
        if (obj != null) {
            return new v42(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f7092do;
    }

    /* renamed from: try, reason: not valid java name */
    public x42[] m8751try() {
        x42[] x42VarArr = new x42[this.f7092do.size()];
        Enumeration enumerationMo33076super = this.f7092do.mo33076super();
        int i = 0;
        while (enumerationMo33076super.hasMoreElements()) {
            x42VarArr[i] = x42.m9392new(enumerationMo33076super.nextElement());
            i++;
        }
        return x42VarArr;
    }
}
