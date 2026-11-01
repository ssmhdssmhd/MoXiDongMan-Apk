package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class gd1 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private g10 f2097case;

    /* renamed from: do, reason: not valid java name */
    private c21 f2098do;

    /* renamed from: for, reason: not valid java name */
    private Ccase f2099for;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f2100if;

    /* renamed from: new, reason: not valid java name */
    private g10 f2101new;

    /* renamed from: try, reason: not valid java name */
    private String f2102try;

    public gd1(c21 c21Var, BigInteger bigInteger, Ccase ccase, g10 g10Var, String str, g10 g10Var2) {
        this.f2098do = c21Var;
        this.f2099for = ccase;
        this.f2102try = str;
        this.f2100if = bigInteger;
        this.f2097case = g10Var2;
        this.f2101new = g10Var;
    }

    private gd1(Csuper csuper) {
        if (csuper.size() < 1) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f2098do = c21.m716try(enumerationMo33076super.nextElement());
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimportM33063catch = Cimport.m33063catch(enumerationMo33076super.nextElement());
            int tagNo = cimportM33063catch.getTagNo();
            if (tagNo == 0) {
                this.f2100if = Cgoto.m33041class(cimportM33063catch, false).m33044final();
            } else if (tagNo == 1) {
                this.f2099for = Ccase.m32775super(cimportM33063catch, false);
            } else if (tagNo == 2) {
                this.f2101new = g10.m2503try(cimportM33063catch, true);
            } else if (tagNo == 3) {
                this.f2102try = org.bouncycastle.asn1.m.m33079class(cimportM33063catch, false).getString();
            } else {
                if (tagNo != 4) {
                    throw new IllegalArgumentException("Bad tag number: " + cimportM33063catch.getTagNo());
                }
                this.f2097case = g10.m2503try(cimportM33063catch, true);
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static gd1 m2635case(Object obj) {
        if (obj == null || (obj instanceof gd1)) {
            return (gd1) obj;
        }
        if (obj instanceof Csuper) {
            return new gd1((Csuper) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: break, reason: not valid java name */
    public g10 m2636break() {
        return this.f2097case;
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m2637else() {
        return this.f2100if;
    }

    /* renamed from: goto, reason: not valid java name */
    public c21 m2638goto() {
        return this.f2098do;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccase m2639new() {
        return this.f2099for;
    }

    /* renamed from: this, reason: not valid java name */
    public g10 m2640this() {
        return this.f2101new;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f2098do);
        if (this.f2100if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, new Cgoto(this.f2100if)));
        }
        if (this.f2099for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f2099for));
        }
        if (this.f2101new != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 2, this.f2101new));
        }
        if (this.f2102try != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 3, new org.bouncycastle.asn1.m(this.f2102try, true)));
        }
        if (this.f2097case != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 4, this.f2097case));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public String m2641try() {
        return this.f2102try;
    }
}
