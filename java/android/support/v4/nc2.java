package android.support.v4;

import com.google.common.primitives.Cthrow;
import java.math.BigInteger;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public final class nc2 extends Number implements Comparable<nc2> {
    private final int value;
    public static final nc2 ZERO = fromIntBits(0);
    public static final nc2 ONE = fromIntBits(1);
    public static final nc2 MAX_VALUE = fromIntBits(-1);

    private nc2(int i) {
        this.value = i & (-1);
    }

    public static nc2 fromIntBits(int i) {
        return new nc2(i);
    }

    public static nc2 valueOf(long j) {
        af1.m232throw((4294967295L & j) == j, "value (%s) is outside the range for an unsigned integer value", j);
        return fromIntBits((int) j);
    }

    public BigInteger bigIntegerValue() {
        return BigInteger.valueOf(longValue());
    }

    public nc2 dividedBy(nc2 nc2Var) {
        return fromIntBits(Cthrow.m17720new(this.value, ((nc2) af1.m205continue(nc2Var)).value));
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return longValue();
    }

    public boolean equals(@b51 Object obj) {
        return (obj instanceof nc2) && this.value == ((nc2) obj).value;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return longValue();
    }

    public int hashCode() {
        return this.value;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return Cthrow.m17718import(this.value);
    }

    public nc2 minus(nc2 nc2Var) {
        return fromIntBits(this.value - ((nc2) af1.m205continue(nc2Var)).value);
    }

    public nc2 mod(nc2 nc2Var) {
        return fromIntBits(Cthrow.m17710class(this.value, ((nc2) af1.m205continue(nc2Var)).value));
    }

    public nc2 plus(nc2 nc2Var) {
        return fromIntBits(this.value + ((nc2) af1.m205continue(nc2Var)).value);
    }

    @li0
    public nc2 times(nc2 nc2Var) {
        return fromIntBits(this.value * ((nc2) af1.m205continue(nc2Var)).value);
    }

    public String toString() {
        return toString(10);
    }

    @Override // java.lang.Comparable
    public int compareTo(nc2 nc2Var) {
        af1.m205continue(nc2Var);
        return Cthrow.m17717if(this.value, nc2Var.value);
    }

    public String toString(int i) {
        return Cthrow.m17721public(this.value, i);
    }

    public static nc2 valueOf(BigInteger bigInteger) {
        af1.m205continue(bigInteger);
        af1.m225return(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 32, "value (%s) is outside the range for an unsigned integer value", bigInteger);
        return fromIntBits(bigInteger.intValue());
    }

    public static nc2 valueOf(String str) {
        return valueOf(str, 10);
    }

    public static nc2 valueOf(String str, int i) {
        return fromIntBits(Cthrow.m17709catch(str, i));
    }
}
