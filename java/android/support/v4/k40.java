package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class k40 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    public Cgoto f3269case;

    /* renamed from: do, reason: not valid java name */
    public Cgoto f3270do;

    /* renamed from: for, reason: not valid java name */
    public Cgoto f3271for;

    /* renamed from: if, reason: not valid java name */
    public Cgoto f3272if;

    /* renamed from: new, reason: not valid java name */
    public Cgoto f3273new;

    /* renamed from: try, reason: not valid java name */
    public Cgoto f3274try;

    public k40(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i, BigInteger bigInteger5) {
        this.f3271for = new Cgoto(bigInteger);
        this.f3273new = new Cgoto(bigInteger2);
        this.f3270do = new Cgoto(bigInteger3);
        this.f3272if = new Cgoto(bigInteger4);
        this.f3274try = new Cgoto(i);
        this.f3269case = new Cgoto(bigInteger5);
    }

    public k40(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f3271for = (Cgoto) enumerationMo33076super.nextElement();
        this.f3273new = (Cgoto) enumerationMo33076super.nextElement();
        this.f3270do = (Cgoto) enumerationMo33076super.nextElement();
        this.f3272if = (Cgoto) enumerationMo33076super.nextElement();
        this.f3274try = (Cgoto) enumerationMo33076super.nextElement();
        this.f3269case = (Cgoto) enumerationMo33076super.nextElement();
    }

    /* renamed from: case, reason: not valid java name */
    public static k40 m4233case(Cimport cimport, boolean z) {
        return m4234try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static k40 m4234try(Object obj) {
        if (obj == null || (obj instanceof k40)) {
            return (k40) obj;
        }
        if (obj instanceof Csuper) {
            return new k40((Csuper) obj);
        }
        throw new IllegalArgumentException("Invalid GOST3410Parameter: " + obj.getClass().getName());
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m4235else() {
        return this.f3270do.m33043const();
    }

    /* renamed from: goto, reason: not valid java name */
    public BigInteger m4236goto() {
        return this.f3272if.m33043const();
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m4237new() {
        return this.f3271for.m33043const();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3271for);
        cimport.m3516do(this.f3273new);
        cimport.m3516do(this.f3270do);
        cimport.m3516do(this.f3272if);
        cimport.m3516do(this.f3274try);
        cimport.m3516do(this.f3269case);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
