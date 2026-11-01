package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class gk1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private BigInteger f2157do;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f2158if;

    public gk1(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f2157do = bigInteger;
        this.f2158if = bigInteger2;
    }

    private gk1(Csuper csuper) {
        if (csuper.size() == 2) {
            Enumeration enumerationMo33076super = csuper.mo33076super();
            this.f2157do = Cgoto.m33040catch(enumerationMo33076super.nextElement()).m33043const();
            this.f2158if = Cgoto.m33040catch(enumerationMo33076super.nextElement()).m33043const();
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static gk1 m2719new(Object obj) {
        if (obj instanceof gk1) {
            return (gk1) obj;
        }
        if (obj != null) {
            return new gk1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static gk1 m2720try(Cimport cimport, boolean z) {
        return m2719new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m2721case() {
        return this.f2157do;
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m2722else() {
        return this.f2158if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(m2721case()));
        cimport.m3516do(new Cgoto(m2722else()));
        return new org.bouncycastle.asn1.n(cimport);
    }
}
