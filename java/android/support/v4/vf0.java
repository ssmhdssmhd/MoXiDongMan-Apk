package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class vf0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public int f7166do;

    /* renamed from: for, reason: not valid java name */
    public Cgoto f7167for;

    /* renamed from: if, reason: not valid java name */
    public Cgoto f7168if;

    /* renamed from: new, reason: not valid java name */
    public Cgoto f7169new;

    public vf0(int i, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f7166do = i;
        this.f7168if = new Cgoto(bigInteger);
        this.f7167for = new Cgoto(bigInteger2);
        this.f7169new = new Cgoto(bigInteger3);
    }

    public vf0(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f7166do = ((Cgoto) enumerationMo33076super.nextElement()).m33044final().intValue();
        this.f7168if = (Cgoto) enumerationMo33076super.nextElement();
        this.f7167for = (Cgoto) enumerationMo33076super.nextElement();
        this.f7169new = (Cgoto) enumerationMo33076super.nextElement();
    }

    /* renamed from: case, reason: not valid java name */
    public static vf0 m8843case(Cimport cimport, boolean z) {
        return m8844try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static vf0 m8844try(Object obj) {
        if (obj == null || (obj instanceof vf0)) {
            return (vf0) obj;
        }
        if (obj instanceof Csuper) {
            return new vf0((Csuper) obj);
        }
        throw new IllegalArgumentException("Invalid GOST3410Parameter: " + obj.getClass().getName());
    }

    /* renamed from: break, reason: not valid java name */
    public BigInteger m8845break() {
        return this.f7167for.m33043const();
    }

    /* renamed from: else, reason: not valid java name */
    public int m8846else() {
        return this.f7166do;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m8847goto() {
        return this.f7166do;
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m8848new() {
        return this.f7169new.m33043const();
    }

    /* renamed from: this, reason: not valid java name */
    public BigInteger m8849this() {
        return this.f7168if.m33043const();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(this.f7166do));
        cimport.m3516do(this.f7168if);
        cimport.m3516do(this.f7167for);
        cimport.m3516do(this.f7169new);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
