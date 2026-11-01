package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cnew;

/* loaded from: classes3.dex */
public class k51 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    public static final int f3284case = 5;

    /* renamed from: else, reason: not valid java name */
    public static final int f3285else = 6;

    /* renamed from: for, reason: not valid java name */
    public static final int f3286for = 1;

    /* renamed from: if, reason: not valid java name */
    public static final int f3287if = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f3288new = 2;

    /* renamed from: try, reason: not valid java name */
    public static final int f3289try = 3;

    /* renamed from: do, reason: not valid java name */
    private Cnew f3290do;

    public k51(int i) {
        this(new Cnew(i));
    }

    private k51(Cnew cnew) {
        this.f3290do = cnew;
    }

    /* renamed from: new, reason: not valid java name */
    public static k51 m4253new(Object obj) {
        if (obj instanceof k51) {
            return (k51) obj;
        }
        if (obj != null) {
            return new k51(Cnew.m33093class(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f3290do;
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m4254try() {
        return this.f3290do.m33095final();
    }
}
