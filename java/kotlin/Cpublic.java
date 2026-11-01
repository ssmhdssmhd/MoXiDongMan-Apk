package kotlin;

import android.support.v4.iz1;
import android.support.v4.um0;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0015\u0010\u0002\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0004\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0005\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0006\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\r\u0010\u0007\u001a\u00020\u0000*\u00020\u0000H\u0087\n\u001a\r\u0010\b\u001a\u00020\u0000*\u00020\u0000H\u0087\n\u001a\r\u0010\t\u001a\u00020\u0000*\u00020\u0000H\u0087\n\u001a\r\u0010\n\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\u0015\u0010\u000b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\f\u001a\u0015\u0010\f\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\f\u001a\u0015\u0010\r\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\f\u001a\u0015\u0010\u0010\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eH\u0087\f\u001a\u0015\u0010\u0011\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eH\u0087\f\u001a\r\u0010\u0012\u001a\u00020\u0000*\u00020\u000eH\u0087\b\u001a\r\u0010\u0014\u001a\u00020\u0000*\u00020\u0013H\u0087\b\u001a\r\u0010\u0016\u001a\u00020\u0015*\u00020\u0000H\u0087\b\u001a!\u0010\u001a\u001a\u00020\u0015*\u00020\u00002\b\b\u0002\u0010\u0017\u001a\u00020\u000e2\b\b\u0002\u0010\u0019\u001a\u00020\u0018H\u0087\b¨\u0006\u001b"}, d2 = {"Ljava/math/BigInteger;", "other", "throws", "static", "package", "native", "default", "interface", "public", "import", "return", "while", "switch", "protected", "", "n", "extends", "finally", "strictfp", "", "volatile", "Ljava/math/BigDecimal;", "private", "scale", "Ljava/math/MathContext;", "mathContext", "abstract", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/NumbersKt")
/* renamed from: kotlin.public, reason: invalid class name */
/* loaded from: classes3.dex */
class Cpublic extends Cnative {
    @iz1(version = "1.2")
    @um0
    /* renamed from: abstract, reason: not valid java name */
    private static final BigDecimal m30812abstract(BigInteger bigInteger, int i, MathContext mathContext) {
        return new BigDecimal(bigInteger, i, mathContext);
    }

    /* renamed from: continue, reason: not valid java name */
    public static /* synthetic */ BigDecimal m30813continue(BigInteger bigInteger, int i, MathContext mathContext, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            mathContext = MathContext.UNLIMITED;
            Csuper.m30696super(mathContext, "MathContext.UNLIMITED");
        }
        return new BigDecimal(bigInteger, i, mathContext);
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: default, reason: not valid java name */
    private static final BigInteger m30814default(BigInteger rem, BigInteger bigInteger) {
        Csuper.m30700throw(rem, "$this$rem");
        BigInteger bigIntegerRemainder = rem.remainder(bigInteger);
        Csuper.m30696super(bigIntegerRemainder, "this.remainder(other)");
        return bigIntegerRemainder;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: extends, reason: not valid java name */
    private static final BigInteger m30815extends(BigInteger bigInteger, int i) {
        BigInteger bigIntegerShiftLeft = bigInteger.shiftLeft(i);
        Csuper.m30696super(bigIntegerShiftLeft, "this.shiftLeft(n)");
        return bigIntegerShiftLeft;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: finally, reason: not valid java name */
    private static final BigInteger m30816finally(BigInteger bigInteger, int i) {
        BigInteger bigIntegerShiftRight = bigInteger.shiftRight(i);
        Csuper.m30696super(bigIntegerShiftRight, "this.shiftRight(n)");
        return bigIntegerShiftRight;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: import, reason: not valid java name */
    private static final BigInteger m30817import(BigInteger dec) {
        Csuper.m30700throw(dec, "$this$dec");
        BigInteger bigIntegerSubtract = dec.subtract(BigInteger.ONE);
        Csuper.m30696super(bigIntegerSubtract, "this.subtract(BigInteger.ONE)");
        return bigIntegerSubtract;
    }

    @um0
    /* renamed from: interface, reason: not valid java name */
    private static final BigInteger m30818interface(BigInteger unaryMinus) {
        Csuper.m30700throw(unaryMinus, "$this$unaryMinus");
        BigInteger bigIntegerNegate = unaryMinus.negate();
        Csuper.m30696super(bigIntegerNegate, "this.negate()");
        return bigIntegerNegate;
    }

    @um0
    /* renamed from: native, reason: not valid java name */
    private static final BigInteger m30819native(BigInteger div, BigInteger bigInteger) {
        Csuper.m30700throw(div, "$this$div");
        BigInteger bigIntegerDivide = div.divide(bigInteger);
        Csuper.m30696super(bigIntegerDivide, "this.divide(other)");
        return bigIntegerDivide;
    }

    @um0
    /* renamed from: package, reason: not valid java name */
    private static final BigInteger m30820package(BigInteger times, BigInteger bigInteger) {
        Csuper.m30700throw(times, "$this$times");
        BigInteger bigIntegerMultiply = times.multiply(bigInteger);
        Csuper.m30696super(bigIntegerMultiply, "this.multiply(other)");
        return bigIntegerMultiply;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: private, reason: not valid java name */
    private static final BigDecimal m30821private(BigInteger bigInteger) {
        return new BigDecimal(bigInteger);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: protected, reason: not valid java name */
    private static final BigInteger m30822protected(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigIntegerXor = bigInteger.xor(bigInteger2);
        Csuper.m30696super(bigIntegerXor, "this.xor(other)");
        return bigIntegerXor;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: public, reason: not valid java name */
    private static final BigInteger m30823public(BigInteger inc) {
        Csuper.m30700throw(inc, "$this$inc");
        BigInteger bigIntegerAdd = inc.add(BigInteger.ONE);
        Csuper.m30696super(bigIntegerAdd, "this.add(BigInteger.ONE)");
        return bigIntegerAdd;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: return, reason: not valid java name */
    private static final BigInteger m30824return(BigInteger bigInteger) {
        BigInteger bigIntegerNot = bigInteger.not();
        Csuper.m30696super(bigIntegerNot, "this.not()");
        return bigIntegerNot;
    }

    @um0
    /* renamed from: static, reason: not valid java name */
    private static final BigInteger m30825static(BigInteger minus, BigInteger bigInteger) {
        Csuper.m30700throw(minus, "$this$minus");
        BigInteger bigIntegerSubtract = minus.subtract(bigInteger);
        Csuper.m30696super(bigIntegerSubtract, "this.subtract(other)");
        return bigIntegerSubtract;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: strictfp, reason: not valid java name */
    private static final BigInteger m30826strictfp(int i) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(i);
        Csuper.m30696super(bigIntegerValueOf, "BigInteger.valueOf(this.toLong())");
        return bigIntegerValueOf;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: switch, reason: not valid java name */
    private static final BigInteger m30827switch(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigIntegerOr = bigInteger.or(bigInteger2);
        Csuper.m30696super(bigIntegerOr, "this.or(other)");
        return bigIntegerOr;
    }

    @um0
    /* renamed from: throws, reason: not valid java name */
    private static final BigInteger m30828throws(BigInteger plus, BigInteger bigInteger) {
        Csuper.m30700throw(plus, "$this$plus");
        BigInteger bigIntegerAdd = plus.add(bigInteger);
        Csuper.m30696super(bigIntegerAdd, "this.add(other)");
        return bigIntegerAdd;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: volatile, reason: not valid java name */
    private static final BigInteger m30829volatile(long j) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(j);
        Csuper.m30696super(bigIntegerValueOf, "BigInteger.valueOf(this)");
        return bigIntegerValueOf;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: while, reason: not valid java name */
    private static final BigInteger m30830while(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigIntegerAnd = bigInteger.and(bigInteger2);
        Csuper.m30696super(bigIntegerAnd, "this.and(other)");
        return bigIntegerAnd;
    }
}
