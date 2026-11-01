package android.support.v4;

import com.google.common.primitives.Cbreak;
import com.google.common.primitives.Cwhile;
import java.io.Serializable;
import java.math.BigInteger;

@ki0(serializable = true)
/* loaded from: classes2.dex */
public final class pc2 extends Number implements Comparable<pc2>, Serializable {

    /* renamed from: do, reason: not valid java name */
    private static final long f4924do = Long.MAX_VALUE;
    private final long value;
    public static final pc2 ZERO = new pc2(0);
    public static final pc2 ONE = new pc2(1);
    public static final pc2 MAX_VALUE = new pc2(-1);

    private pc2(long j) {
        this.value = j;
    }

    public static pc2 fromLongBits(long j) {
        return new pc2(j);
    }

    @lf
    public static pc2 valueOf(long j) {
        af1.m232throw(j >= 0, "value (%s) is outside the range for an unsigned long value", j);
        return fromLongBits(j);
    }

    public BigInteger bigIntegerValue() {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(this.value & Long.MAX_VALUE);
        return this.value < 0 ? bigIntegerValueOf.setBit(63) : bigIntegerValueOf;
    }

    public pc2 dividedBy(pc2 pc2Var) {
        return fromLongBits(Cwhile.m17761for(this.value, ((pc2) af1.m205continue(pc2Var)).value));
    }

    @Override // java.lang.Number
    public double doubleValue() {
        long j = this.value;
        double d = Long.MAX_VALUE & j;
        if (j >= 0) {
            return d;
        }
        Double.isNaN(d);
        return d + 9.223372036854776E18d;
    }

    public boolean equals(@b51 Object obj) {
        return (obj instanceof pc2) && this.value == ((pc2) obj).value;
    }

    @Override // java.lang.Number
    public float floatValue() {
        long j = this.value;
        float f = Long.MAX_VALUE & j;
        return j < 0 ? f + 9.223372E18f : f;
    }

    public int hashCode() {
        return Cbreak.m17468catch(this.value);
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.value;
    }

    public pc2 minus(pc2 pc2Var) {
        return fromLongBits(this.value - ((pc2) af1.m205continue(pc2Var)).value);
    }

    public pc2 mod(pc2 pc2Var) {
        return fromLongBits(Cwhile.m17755catch(this.value, ((pc2) af1.m205continue(pc2Var)).value));
    }

    public pc2 plus(pc2 pc2Var) {
        return fromLongBits(this.value + ((pc2) af1.m205continue(pc2Var)).value);
    }

    public pc2 times(pc2 pc2Var) {
        return fromLongBits(this.value * ((pc2) af1.m205continue(pc2Var)).value);
    }

    public String toString() {
        return Cwhile.m17767throw(this.value);
    }

    @Override // java.lang.Comparable
    public int compareTo(pc2 pc2Var) {
        af1.m205continue(pc2Var);
        return Cwhile.m17758do(this.value, pc2Var.value);
    }

    public String toString(int i) {
        return Cwhile.m17769while(this.value, i);
    }

    @lf
    public static pc2 valueOf(BigInteger bigInteger) {
        af1.m205continue(bigInteger);
        af1.m225return(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 64, "value (%s) is outside the range for an unsigned long value", bigInteger);
        return fromLongBits(bigInteger.longValue());
    }

    @lf
    public static pc2 valueOf(String str) {
        return valueOf(str, 10);
    }

    @lf
    public static pc2 valueOf(String str, int i) {
        return fromLongBits(Cwhile.m17753break(str, i));
    }
}
