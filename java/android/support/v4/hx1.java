package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cnew;

/* loaded from: classes3.dex */
public class hx1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cnew f2556do;

    /* renamed from: if, reason: not valid java name */
    public static final hx1 f2553if = new hx1(1);

    /* renamed from: for, reason: not valid java name */
    public static final hx1 f2552for = new hx1(2);

    /* renamed from: new, reason: not valid java name */
    public static final hx1 f2554new = new hx1(3);

    /* renamed from: try, reason: not valid java name */
    public static final hx1 f2555try = new hx1(4);

    public hx1(int i) {
        this.f2556do = new Cnew(i);
    }

    private hx1(Cnew cnew) {
        this.f2556do = cnew;
    }

    /* renamed from: new, reason: not valid java name */
    public static hx1 m3153new(Object obj) {
        if (obj instanceof hx1) {
            return (hx1) obj;
        }
        if (obj != null) {
            return new hx1(Cnew.m33093class(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static hx1 m3154try(Cimport cimport, boolean z) {
        return m3153new(Cnew.m33094const(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m3155case() {
        return this.f2556do.m33095final();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f2556do;
    }

    public String toString() {
        int iIntValue = this.f2556do.m33095final().intValue();
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(iIntValue);
        sb.append(iIntValue == f2553if.m3155case().intValue() ? "(CPD)" : iIntValue == f2552for.m3155case().intValue() ? "(VSD)" : iIntValue == f2554new.m3155case().intValue() ? "(VPKC)" : iIntValue == f2555try.m3155case().intValue() ? "(CCPD)" : "?");
        return sb.toString();
    }
}
