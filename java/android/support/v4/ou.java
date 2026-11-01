package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class ou implements CipherParameters {

    /* renamed from: goto, reason: not valid java name */
    private static final int f4739goto = 160;

    /* renamed from: case, reason: not valid java name */
    private int f4740case;

    /* renamed from: do, reason: not valid java name */
    private BigInteger f4741do;

    /* renamed from: else, reason: not valid java name */
    private xu f4742else;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f4743for;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f4744if;

    /* renamed from: new, reason: not valid java name */
    private BigInteger f4745new;

    /* renamed from: try, reason: not valid java name */
    private int f4746try;

    public ou(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, null, 0);
    }

    public ou(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, 0);
    }

    public ou(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i) {
        this(bigInteger, bigInteger2, bigInteger3, m5756do(i), i, null, null);
    }

    public ou(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i, int i2) {
        this(bigInteger, bigInteger2, bigInteger3, i, i2, null, null);
    }

    public ou(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i, int i2, BigInteger bigInteger4, xu xuVar) {
        if (i2 != 0) {
            if (i2 > bigInteger.bitLength()) {
                throw new IllegalArgumentException("when l value specified, it must satisfy 2^(l-1) <= p");
            }
            if (i2 < i) {
                throw new IllegalArgumentException("when l value specified, it may not be less than m value");
            }
        }
        if (i > bigInteger.bitLength()) {
            throw new IllegalArgumentException("unsafe p value so small specific l required");
        }
        this.f4741do = bigInteger2;
        this.f4744if = bigInteger;
        this.f4743for = bigInteger3;
        this.f4746try = i;
        this.f4740case = i2;
        this.f4745new = bigInteger4;
        this.f4742else = xuVar;
    }

    public ou(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, xu xuVar) {
        this(bigInteger, bigInteger2, bigInteger3, 160, 0, bigInteger4, xuVar);
    }

    /* renamed from: do, reason: not valid java name */
    private static int m5756do(int i) {
        if (i != 0 && i < 160) {
            return i;
        }
        return 160;
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m5757case() {
        return this.f4744if;
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m5758else() {
        return this.f4743for;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ou)) {
            return false;
        }
        ou ouVar = (ou) obj;
        if (m5758else() != null) {
            if (!m5758else().equals(ouVar.m5758else())) {
                return false;
            }
        } else if (ouVar.m5758else() != null) {
            return false;
        }
        return ouVar.m5757case().equals(this.f4744if) && ouVar.m5761if().equals(this.f4741do);
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m5759for() {
        return this.f4745new;
    }

    /* renamed from: goto, reason: not valid java name */
    public xu m5760goto() {
        return this.f4742else;
    }

    public int hashCode() {
        return (m5757case().hashCode() ^ m5761if().hashCode()) ^ (m5758else() != null ? m5758else().hashCode() : 0);
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m5761if() {
        return this.f4741do;
    }

    /* renamed from: new, reason: not valid java name */
    public int m5762new() {
        return this.f4740case;
    }

    /* renamed from: try, reason: not valid java name */
    public int m5763try() {
        return this.f4746try;
    }
}
