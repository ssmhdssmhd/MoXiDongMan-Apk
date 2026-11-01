package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class z10 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Cgoto f8417do;

    /* renamed from: for, reason: not valid java name */
    private final Cgoto f8418for;

    /* renamed from: if, reason: not valid java name */
    private final Cgoto f8419if;

    /* renamed from: new, reason: not valid java name */
    private final Cgoto f8420new;

    /* renamed from: try, reason: not valid java name */
    private final fe2 f8421try;

    public z10(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, fe2 fe2Var) {
        if (bigInteger == null) {
            throw new IllegalArgumentException("'p' cannot be null");
        }
        if (bigInteger2 == null) {
            throw new IllegalArgumentException("'g' cannot be null");
        }
        if (bigInteger3 == null) {
            throw new IllegalArgumentException("'q' cannot be null");
        }
        this.f8417do = new Cgoto(bigInteger);
        this.f8419if = new Cgoto(bigInteger2);
        this.f8418for = new Cgoto(bigInteger3);
        this.f8420new = bigInteger4 != null ? new Cgoto(bigInteger4) : null;
        this.f8421try = fe2Var;
    }

    private z10(Csuper csuper) {
        if (csuper.size() < 3 || csuper.size() > 5) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f8417do = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f8419if = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f8418for = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        ASN1Encodable aSN1EncodableM10012goto = m10012goto(enumerationMo33076super);
        if (aSN1EncodableM10012goto == null || !(aSN1EncodableM10012goto instanceof Cgoto)) {
            this.f8420new = null;
        } else {
            this.f8420new = Cgoto.m33040catch(aSN1EncodableM10012goto);
            aSN1EncodableM10012goto = m10012goto(enumerationMo33076super);
        }
        if (aSN1EncodableM10012goto != null) {
            this.f8421try = fe2.m2261new(aSN1EncodableM10012goto.toASN1Primitive());
        } else {
            this.f8421try = null;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static z10 m10011case(Cimport cimport, boolean z) {
        return m10013try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: goto, reason: not valid java name */
    private static ASN1Encodable m10012goto(Enumeration enumeration) {
        if (enumeration.hasMoreElements()) {
            return (ASN1Encodable) enumeration.nextElement();
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static z10 m10013try(Object obj) {
        if (obj instanceof z10) {
            return (z10) obj;
        }
        if (obj != null) {
            return new z10(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public BigInteger m10014break() {
        return this.f8418for.m33043const();
    }

    /* renamed from: catch, reason: not valid java name */
    public fe2 m10015catch() {
        return this.f8421try;
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m10016else() {
        Cgoto cgoto = this.f8420new;
        if (cgoto == null) {
            return null;
        }
        return cgoto.m33043const();
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m10017new() {
        return this.f8419if.m33043const();
    }

    /* renamed from: this, reason: not valid java name */
    public BigInteger m10018this() {
        return this.f8417do.m33043const();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8417do);
        cimport.m3516do(this.f8419if);
        cimport.m3516do(this.f8418for);
        Cgoto cgoto = this.f8420new;
        if (cgoto != null) {
            cimport.m3516do(cgoto);
        }
        fe2 fe2Var = this.f8421try;
        if (fe2Var != null) {
            cimport.m3516do(fe2Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
