package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class aab {

    /* renamed from: do, reason: not valid java name */
    private final BigInteger f72do;

    /* renamed from: for, reason: not valid java name */
    private final BigInteger f73for;

    /* renamed from: if, reason: not valid java name */
    private final BigInteger f74if;

    public aab(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, false);
    }

    public aab(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, boolean z) {
        to0.m8028switch(bigInteger, com.umeng.analytics.pro.ak.ax);
        to0.m8028switch(bigInteger2, "q");
        to0.m8028switch(bigInteger3, "g");
        if (!z) {
            BigInteger bigInteger4 = to0.f6630if;
            if (!bigInteger.subtract(bigInteger4).mod(bigInteger2).equals(to0.f6629do)) {
                throw new IllegalArgumentException("p-1 must be evenly divisible by q");
            }
            if (bigInteger3.compareTo(BigInteger.valueOf(2L)) == -1 || bigInteger3.compareTo(bigInteger.subtract(bigInteger4)) == 1) {
                throw new IllegalArgumentException("g must be in [2, p-1]");
            }
            if (!bigInteger3.modPow(bigInteger2, bigInteger).equals(bigInteger4)) {
                throw new IllegalArgumentException("g^q mod p must equal 1");
            }
            if (!bigInteger.isProbablePrime(20)) {
                throw new IllegalArgumentException("p must be prime");
            }
            if (!bigInteger2.isProbablePrime(20)) {
                throw new IllegalArgumentException("q must be prime");
            }
        }
        this.f72do = bigInteger;
        this.f74if = bigInteger2;
        this.f73for = bigInteger3;
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m119do() {
        return this.f73for;
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m120for() {
        return this.f74if;
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m121if() {
        return this.f72do;
    }
}
