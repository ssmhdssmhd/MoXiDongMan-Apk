package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class fk1 extends Cbreak {

    /* renamed from: break, reason: not valid java name */
    private Csuper f1876break;

    /* renamed from: case, reason: not valid java name */
    private BigInteger f1877case;

    /* renamed from: do, reason: not valid java name */
    private int f1878do;

    /* renamed from: else, reason: not valid java name */
    private BigInteger f1879else;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f1880for;

    /* renamed from: goto, reason: not valid java name */
    private BigInteger f1881goto;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f1882if;

    /* renamed from: new, reason: not valid java name */
    private BigInteger f1883new;

    /* renamed from: this, reason: not valid java name */
    private BigInteger f1884this;

    /* renamed from: try, reason: not valid java name */
    private BigInteger f1885try;

    public fk1(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, BigInteger bigInteger8) {
        this.f1876break = null;
        this.f1878do = 0;
        this.f1882if = bigInteger;
        this.f1880for = bigInteger2;
        this.f1883new = bigInteger3;
        this.f1885try = bigInteger4;
        this.f1877case = bigInteger5;
        this.f1879else = bigInteger6;
        this.f1881goto = bigInteger7;
        this.f1884this = bigInteger8;
    }

    public fk1(Csuper csuper) {
        this.f1876break = null;
        Enumeration enumerationMo33076super = csuper.mo33076super();
        BigInteger bigIntegerM33044final = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        if (bigIntegerM33044final.intValue() != 0 && bigIntegerM33044final.intValue() != 1) {
            throw new IllegalArgumentException("wrong version for RSA private key");
        }
        this.f1878do = bigIntegerM33044final.intValue();
        this.f1882if = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        this.f1880for = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        this.f1883new = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        this.f1885try = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        this.f1877case = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        this.f1879else = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        this.f1881goto = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        this.f1884this = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        if (enumerationMo33076super.hasMoreElements()) {
            this.f1876break = (Csuper) enumerationMo33076super.nextElement();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static fk1 m2326else(Object obj) {
        if (obj instanceof fk1) {
            return (fk1) obj;
        }
        if (obj instanceof Csuper) {
            return new fk1((Csuper) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    /* renamed from: goto, reason: not valid java name */
    public static fk1 m2327goto(Cimport cimport, boolean z) {
        return m2326else(Csuper.m33130class(cimport, z));
    }

    /* renamed from: break, reason: not valid java name */
    public BigInteger m2328break() {
        return this.f1885try;
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m2329case() {
        return this.f1881goto;
    }

    /* renamed from: catch, reason: not valid java name */
    public BigInteger m2330catch() {
        return this.f1877case;
    }

    /* renamed from: class, reason: not valid java name */
    public BigInteger m2331class() {
        return this.f1883new;
    }

    /* renamed from: const, reason: not valid java name */
    public BigInteger m2332const() {
        return this.f1880for;
    }

    /* renamed from: final, reason: not valid java name */
    public int m2333final() {
        return this.f1878do;
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m2334new() {
        return this.f1884this;
    }

    /* renamed from: this, reason: not valid java name */
    public BigInteger m2335this() {
        return this.f1882if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(this.f1878do));
        cimport.m3516do(new Cgoto(m2335this()));
        cimport.m3516do(new Cgoto(m2332const()));
        cimport.m3516do(new Cgoto(m2331class()));
        cimport.m3516do(new Cgoto(m2328break()));
        cimport.m3516do(new Cgoto(m2330catch()));
        cimport.m3516do(new Cgoto(m2336try()));
        cimport.m3516do(new Cgoto(m2329case()));
        cimport.m3516do(new Cgoto(m2334new()));
        Csuper csuper = this.f1876break;
        if (csuper != null) {
            cimport.m3516do(csuper);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m2336try() {
        return this.f1879else;
    }
}
