package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class x42 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f7770do;

    private x42(Csuper csuper) {
        this.f7770do = csuper;
    }

    public x42(s42[] s42VarArr) {
        this.f7770do = new org.bouncycastle.asn1.n(s42VarArr);
    }

    /* renamed from: new, reason: not valid java name */
    public static x42 m9392new(Object obj) {
        if (obj instanceof x42) {
            return (x42) obj;
        }
        if (obj != null) {
            return new x42(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f7770do;
    }

    /* renamed from: try, reason: not valid java name */
    public s42[] m9393try() {
        s42[] s42VarArr = new s42[this.f7770do.size()];
        Enumeration enumerationMo33076super = this.f7770do.mo33076super();
        int i = 0;
        while (enumerationMo33076super.hasMoreElements()) {
            s42VarArr[i] = s42.m7263new(enumerationMo33076super.nextElement());
            i++;
        }
        return s42VarArr;
    }
}
