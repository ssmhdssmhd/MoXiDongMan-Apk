package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ek1 extends Cbreak {

    /* renamed from: break, reason: not valid java name */
    private Csuper f1516break;

    /* renamed from: case, reason: not valid java name */
    private BigInteger f1517case;

    /* renamed from: do, reason: not valid java name */
    private BigInteger f1518do;

    /* renamed from: else, reason: not valid java name */
    private BigInteger f1519else;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f1520for;

    /* renamed from: goto, reason: not valid java name */
    private BigInteger f1521goto;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f1522if;

    /* renamed from: new, reason: not valid java name */
    private BigInteger f1523new;

    /* renamed from: this, reason: not valid java name */
    private BigInteger f1524this;

    /* renamed from: try, reason: not valid java name */
    private BigInteger f1525try;

    public ek1(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, BigInteger bigInteger8) {
        this.f1516break = null;
        this.f1518do = BigInteger.valueOf(0L);
        this.f1522if = bigInteger;
        this.f1520for = bigInteger2;
        this.f1523new = bigInteger3;
        this.f1525try = bigInteger4;
        this.f1517case = bigInteger5;
        this.f1519else = bigInteger6;
        this.f1521goto = bigInteger7;
        this.f1524this = bigInteger8;
    }

    private ek1(Csuper csuper) {
        this.f1516break = null;
        Enumeration enumerationMo33076super = csuper.mo33076super();
        BigInteger bigIntegerM33044final = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        if (bigIntegerM33044final.intValue() != 0 && bigIntegerM33044final.intValue() != 1) {
            throw new IllegalArgumentException("wrong version for RSA private key");
        }
        this.f1518do = bigIntegerM33044final;
        this.f1522if = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        this.f1520for = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        this.f1523new = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        this.f1525try = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        this.f1517case = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        this.f1519else = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        this.f1521goto = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        this.f1524this = ((Cgoto) enumerationMo33076super.nextElement()).m33044final();
        if (enumerationMo33076super.hasMoreElements()) {
            this.f1516break = (Csuper) enumerationMo33076super.nextElement();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static ek1 m1930else(Object obj) {
        if (obj instanceof ek1) {
            return (ek1) obj;
        }
        if (obj != null) {
            return new ek1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public static ek1 m1931goto(Cimport cimport, boolean z) {
        return m1930else(Csuper.m33130class(cimport, z));
    }

    /* renamed from: break, reason: not valid java name */
    public BigInteger m1932break() {
        return this.f1525try;
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m1933case() {
        return this.f1521goto;
    }

    /* renamed from: catch, reason: not valid java name */
    public BigInteger m1934catch() {
        return this.f1517case;
    }

    /* renamed from: class, reason: not valid java name */
    public BigInteger m1935class() {
        return this.f1523new;
    }

    /* renamed from: const, reason: not valid java name */
    public BigInteger m1936const() {
        return this.f1520for;
    }

    /* renamed from: final, reason: not valid java name */
    public BigInteger m1937final() {
        return this.f1518do;
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m1938new() {
        return this.f1524this;
    }

    /* renamed from: this, reason: not valid java name */
    public BigInteger m1939this() {
        return this.f1522if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(this.f1518do));
        cimport.m3516do(new Cgoto(m1939this()));
        cimport.m3516do(new Cgoto(m1936const()));
        cimport.m3516do(new Cgoto(m1935class()));
        cimport.m3516do(new Cgoto(m1932break()));
        cimport.m3516do(new Cgoto(m1934catch()));
        cimport.m3516do(new Cgoto(m1940try()));
        cimport.m3516do(new Cgoto(m1933case()));
        cimport.m3516do(new Cgoto(m1938new()));
        Csuper csuper = this.f1516break;
        if (csuper != null) {
            cimport.m3516do(csuper);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m1940try() {
        return this.f1519else;
    }
}
