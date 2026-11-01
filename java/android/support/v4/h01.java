package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class h01 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public org.bouncycastle.asn1.m f2287do;

    /* renamed from: for, reason: not valid java name */
    public Cgoto f2288for;

    /* renamed from: if, reason: not valid java name */
    public Cgoto f2289if;

    public h01(String str, int i, int i2) {
        this.f2287do = new org.bouncycastle.asn1.m(str, true);
        this.f2289if = new Cgoto(i);
        this.f2288for = new Cgoto(i2);
    }

    private h01(Csuper csuper) {
        if (csuper.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f2287do = org.bouncycastle.asn1.m.m33078catch(enumerationMo33076super.nextElement());
        this.f2289if = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f2288for = Cgoto.m33040catch(enumerationMo33076super.nextElement());
    }

    /* renamed from: else, reason: not valid java name */
    public static h01 m2843else(Object obj) {
        if (obj == null || (obj instanceof h01)) {
            return (h01) obj;
        }
        if (obj instanceof Csuper) {
            return new h01(Csuper.m33129catch(obj));
        }
        throw new IllegalArgumentException("unknown object in getInstance");
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m2844case() {
        return this.f2288for.m33044final();
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m2845new() {
        return this.f2289if.m33044final();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f2287do);
        cimport.m3516do(this.f2289if);
        cimport.m3516do(this.f2288for);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public String m2846try() {
        return this.f2287do.getString();
    }
}
