package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class ck1 extends a4 {

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f814new = BigInteger.valueOf(1);

    /* renamed from: for, reason: not valid java name */
    private BigInteger f815for;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f816if;

    public ck1(boolean z, BigInteger bigInteger, BigInteger bigInteger2) {
        super(z);
        if (!z && (bigInteger2.intValue() & 1) == 0) {
            throw new IllegalArgumentException("RSA publicExponent is even");
        }
        this.f816if = m953new(bigInteger);
        this.f815for = bigInteger2;
    }

    /* renamed from: new, reason: not valid java name */
    private BigInteger m953new(BigInteger bigInteger) {
        if ((bigInteger.intValue() & 1) == 0) {
            throw new IllegalArgumentException("RSA modulus is even");
        }
        if (bigInteger.gcd(new BigInteger("1451887755777639901511587432083070202422614380984889313550570919659315177065956574359078912654149167643992684236991305777574330831666511589145701059710742276692757882915756220901998212975756543223550490431013061082131040808010565293748926901442915057819663730454818359472391642885328171302299245556663073719855")).equals(f814new)) {
            return bigInteger;
        }
        throw new IllegalArgumentException("RSA modulus has a small prime factor");
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m954for() {
        return this.f816if;
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m955if() {
        return this.f815for;
    }
}
