package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class j60 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Cgoto f3014do;

    /* renamed from: if, reason: not valid java name */
    public Cgoto f3015if;

    public j60(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f3014do = new Cgoto(bigInteger);
        this.f3015if = new Cgoto(bigInteger2);
    }

    private j60(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f3014do = (Cgoto) enumerationMo33076super.nextElement();
        this.f3015if = (Cgoto) enumerationMo33076super.nextElement();
    }

    /* renamed from: try, reason: not valid java name */
    public static j60 m3733try(Object obj) {
        if (obj instanceof j60) {
            return (j60) obj;
        }
        if (obj != null) {
            return new j60(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m3734case() {
        return this.f3014do.m33043const();
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m3735new() {
        return this.f3015if.m33043const();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3014do);
        cimport.m3516do(this.f3015if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
