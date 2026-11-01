package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ik1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private BigInteger f2797do;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f2798if;

    public ik1(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f2797do = bigInteger;
        this.f2798if = bigInteger2;
    }

    public ik1(Csuper csuper) {
        if (csuper.size() == 2) {
            Enumeration enumerationMo33076super = csuper.mo33076super();
            this.f2797do = Cgoto.m33040catch(enumerationMo33076super.nextElement()).m33043const();
            this.f2798if = Cgoto.m33040catch(enumerationMo33076super.nextElement()).m33043const();
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static ik1 m3503new(Object obj) {
        if (obj == null || (obj instanceof ik1)) {
            return (ik1) obj;
        }
        if (obj instanceof Csuper) {
            return new ik1((Csuper) obj);
        }
        throw new IllegalArgumentException("Invalid RSAPublicKeyStructure: " + obj.getClass().getName());
    }

    /* renamed from: try, reason: not valid java name */
    public static ik1 m3504try(Cimport cimport, boolean z) {
        return m3503new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m3505case() {
        return this.f2797do;
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m3506else() {
        return this.f2798if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(m3505case()));
        cimport.m3516do(new Cgoto(m3506else()));
        return new org.bouncycastle.asn1.n(cimport);
    }
}
