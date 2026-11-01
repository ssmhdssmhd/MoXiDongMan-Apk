package android.support.v4;

import java.math.BigInteger;
import java.util.Objects;

/* loaded from: classes3.dex */
public class ru extends ku {

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f5930new = BigInteger.valueOf(1);

    /* renamed from: try, reason: not valid java name */
    private static final BigInteger f5931try = BigInteger.valueOf(2);

    /* renamed from: for, reason: not valid java name */
    private BigInteger f5932for;

    public ru(BigInteger bigInteger, ou ouVar) {
        super(false, ouVar);
        this.f5932for = m7125new(bigInteger, ouVar);
    }

    /* renamed from: new, reason: not valid java name */
    private BigInteger m7125new(BigInteger bigInteger, ou ouVar) {
        Objects.requireNonNull(bigInteger, "y value cannot be null");
        BigInteger bigInteger2 = f5931try;
        if (bigInteger.compareTo(bigInteger2) < 0 || bigInteger.compareTo(ouVar.m5757case().subtract(bigInteger2)) > 0) {
            throw new IllegalArgumentException("invalid DH public key");
        }
        if (ouVar.m5758else() == null || f5930new.equals(bigInteger.modPow(ouVar.m5758else(), ouVar.m5757case()))) {
            return bigInteger;
        }
        throw new IllegalArgumentException("Y value does not appear to be in correct group");
    }

    @Override // android.support.v4.ku
    public boolean equals(Object obj) {
        return (obj instanceof ru) && ((ru) obj).m7126for().equals(this.f5932for) && super.equals(obj);
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m7126for() {
        return this.f5932for;
    }

    @Override // android.support.v4.ku
    public int hashCode() {
        return this.f5932for.hashCode() ^ super.hashCode();
    }
}
