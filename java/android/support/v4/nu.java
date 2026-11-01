package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class nu extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Cgoto f4327do;

    /* renamed from: for, reason: not valid java name */
    public Cgoto f4328for;

    /* renamed from: if, reason: not valid java name */
    public Cgoto f4329if;

    public nu(BigInteger bigInteger, BigInteger bigInteger2, int i) {
        this.f4327do = new Cgoto(bigInteger);
        this.f4329if = new Cgoto(bigInteger2);
        this.f4328for = i != 0 ? new Cgoto(i) : null;
    }

    private nu(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f4327do = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f4329if = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f4328for = enumerationMo33076super.hasMoreElements() ? (Cgoto) enumerationMo33076super.nextElement() : null;
    }

    /* renamed from: try, reason: not valid java name */
    public static nu m5370try(Object obj) {
        if (obj instanceof nu) {
            return (nu) obj;
        }
        if (obj != null) {
            return new nu(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m5371case() {
        Cgoto cgoto = this.f4328for;
        if (cgoto == null) {
            return null;
        }
        return cgoto.m33043const();
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m5372else() {
        return this.f4327do.m33043const();
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m5373new() {
        return this.f4329if.m33043const();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4327do);
        cimport.m3516do(this.f4329if);
        if (m5371case() != null) {
            cimport.m3516do(this.f4328for);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
