package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class kv extends ev {

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f3486new = BigInteger.valueOf(1);

    /* renamed from: try, reason: not valid java name */
    private static final BigInteger f3487try = BigInteger.valueOf(2);

    /* renamed from: for, reason: not valid java name */
    private BigInteger f3488for;

    public kv(BigInteger bigInteger, hv hvVar) {
        super(false, hvVar);
        this.f3488for = m4513new(bigInteger, hvVar);
    }

    /* renamed from: new, reason: not valid java name */
    private BigInteger m4513new(BigInteger bigInteger, hv hvVar) {
        if (hvVar == null) {
            return bigInteger;
        }
        BigInteger bigInteger2 = f3487try;
        if (bigInteger2.compareTo(bigInteger) > 0 || hvVar.m3129if().subtract(bigInteger2).compareTo(bigInteger) < 0 || !f3486new.equals(bigInteger.modPow(hvVar.m3128for(), hvVar.m3129if()))) {
            throw new IllegalArgumentException("y value does not appear to be in correct group");
        }
        return bigInteger;
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m4514for() {
        return this.f3488for;
    }
}
