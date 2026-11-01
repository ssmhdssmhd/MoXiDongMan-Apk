package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class fv extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Cgoto f2004do;

    /* renamed from: for, reason: not valid java name */
    public Cgoto f2005for;

    /* renamed from: if, reason: not valid java name */
    public Cgoto f2006if;

    public fv(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f2004do = new Cgoto(bigInteger);
        this.f2006if = new Cgoto(bigInteger2);
        this.f2005for = new Cgoto(bigInteger3);
    }

    private fv(Csuper csuper) {
        if (csuper.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f2004do = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f2006if = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f2005for = Cgoto.m33040catch(enumerationMo33076super.nextElement());
    }

    /* renamed from: case, reason: not valid java name */
    public static fv m2432case(Cimport cimport, boolean z) {
        return m2433try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static fv m2433try(Object obj) {
        if (obj instanceof fv) {
            return (fv) obj;
        }
        if (obj != null) {
            return new fv(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m2434else() {
        return this.f2004do.m33043const();
    }

    /* renamed from: goto, reason: not valid java name */
    public BigInteger m2435goto() {
        return this.f2006if.m33043const();
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m2436new() {
        return this.f2005for.m33043const();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f2004do);
        cimport.m3516do(this.f2006if);
        cimport.m3516do(this.f2005for);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
