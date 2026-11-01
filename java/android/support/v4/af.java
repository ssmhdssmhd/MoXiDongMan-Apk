package android.support.v4;

import java.math.BigInteger;
import java.util.Hashtable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cnew;

/* loaded from: classes3.dex */
public class af extends Cbreak {

    /* renamed from: break, reason: not valid java name */
    public static final int f119break = 9;

    /* renamed from: case, reason: not valid java name */
    public static final int f120case = 4;

    /* renamed from: catch, reason: not valid java name */
    public static final int f121catch = 10;

    /* renamed from: class, reason: not valid java name */
    public static final int f122class = 0;

    /* renamed from: const, reason: not valid java name */
    public static final int f123const = 1;

    /* renamed from: else, reason: not valid java name */
    public static final int f124else = 5;

    /* renamed from: final, reason: not valid java name */
    public static final int f125final = 2;

    /* renamed from: for, reason: not valid java name */
    public static final int f126for = 1;

    /* renamed from: goto, reason: not valid java name */
    public static final int f127goto = 6;

    /* renamed from: if, reason: not valid java name */
    public static final int f128if = 0;

    /* renamed from: import, reason: not valid java name */
    public static final int f129import = 6;

    /* renamed from: native, reason: not valid java name */
    public static final int f130native = 8;

    /* renamed from: new, reason: not valid java name */
    public static final int f131new = 2;

    /* renamed from: public, reason: not valid java name */
    public static final int f132public = 9;

    /* renamed from: return, reason: not valid java name */
    public static final int f133return = 10;

    /* renamed from: super, reason: not valid java name */
    public static final int f135super = 3;

    /* renamed from: this, reason: not valid java name */
    public static final int f137this = 8;

    /* renamed from: throw, reason: not valid java name */
    public static final int f138throw = 4;

    /* renamed from: try, reason: not valid java name */
    public static final int f139try = 3;

    /* renamed from: while, reason: not valid java name */
    public static final int f140while = 5;

    /* renamed from: do, reason: not valid java name */
    private Cnew f141do;

    /* renamed from: static, reason: not valid java name */
    private static final String[] f134static = {"unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    /* renamed from: switch, reason: not valid java name */
    private static final Hashtable f136switch = new Hashtable();

    private af(int i) {
        this.f141do = new Cnew(i);
    }

    /* renamed from: case, reason: not valid java name */
    public static af m190case(int i) {
        Integer numM3072for = hn0.m3072for(i);
        Hashtable hashtable = f136switch;
        if (!hashtable.containsKey(numM3072for)) {
            hashtable.put(numM3072for, new af(i));
        }
        return (af) hashtable.get(numM3072for);
    }

    /* renamed from: new, reason: not valid java name */
    public static af m191new(Object obj) {
        if (obj instanceof af) {
            return (af) obj;
        }
        if (obj != null) {
            return m190case(Cnew.m33093class(obj).m33095final().intValue());
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f141do;
    }

    public String toString() {
        int iIntValue = m192try().intValue();
        return "CRLReason: " + ((iIntValue < 0 || iIntValue > 10) ? "invalid" : f134static[iIntValue]);
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m192try() {
        return this.f141do.m33095final();
    }
}
