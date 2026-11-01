package kotlin;

import android.support.v4.iz1;
import android.support.v4.um0;
import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\u001a\u0015\u0010\u0002\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0004\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0005\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0006\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\r\u0010\u0007\u001a\u00020\u0000*\u00020\u0000H\u0087\n\u001a\r\u0010\b\u001a\u00020\u0000*\u00020\u0000H\u0087\n\u001a\r\u0010\t\u001a\u00020\u0000*\u00020\u0000H\u0087\n\u001a\r\u0010\u000b\u001a\u00020\u0000*\u00020\nH\u0087\b\u001a\u0015\u0010\u000e\u001a\u00020\u0000*\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0087\b\u001a\r\u0010\u0010\u001a\u00020\u0000*\u00020\u000fH\u0087\b\u001a\u0015\u0010\u0011\u001a\u00020\u0000*\u00020\u000f2\u0006\u0010\r\u001a\u00020\fH\u0087\b\u001a\r\u0010\u0013\u001a\u00020\u0000*\u00020\u0012H\u0087\b\u001a\u0015\u0010\u0014\u001a\u00020\u0000*\u00020\u00122\u0006\u0010\r\u001a\u00020\fH\u0087\b\u001a\r\u0010\u0016\u001a\u00020\u0000*\u00020\u0015H\u0087\b\u001a\u0015\u0010\u0017\u001a\u00020\u0000*\u00020\u00152\u0006\u0010\r\u001a\u00020\fH\u0087\b¨\u0006\u0018"}, d2 = {"Ljava/math/BigDecimal;", "other", "try", "new", "else", "if", "case", "throw", "for", "do", "", "class", "Ljava/math/MathContext;", "mathContext", "const", "", "final", "super", "", "break", "catch", "", "goto", "this", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/NumbersKt")
/* renamed from: kotlin.native, reason: invalid class name */
/* loaded from: classes3.dex */
class Cnative {
    @iz1(version = "1.2")
    @um0
    /* renamed from: break, reason: not valid java name */
    private static final BigDecimal m30760break(float f) {
        return new BigDecimal(String.valueOf(f));
    }

    @um0
    /* renamed from: case, reason: not valid java name */
    private static final BigDecimal m30761case(BigDecimal rem, BigDecimal bigDecimal) {
        Csuper.m30700throw(rem, "$this$rem");
        BigDecimal bigDecimalRemainder = rem.remainder(bigDecimal);
        Csuper.m30696super(bigDecimalRemainder, "this.remainder(other)");
        return bigDecimalRemainder;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: catch, reason: not valid java name */
    private static final BigDecimal m30762catch(float f, MathContext mathContext) {
        return new BigDecimal(String.valueOf(f), mathContext);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: class, reason: not valid java name */
    private static final BigDecimal m30763class(int i) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(i);
        Csuper.m30696super(bigDecimalValueOf, "BigDecimal.valueOf(this.toLong())");
        return bigDecimalValueOf;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: const, reason: not valid java name */
    private static final BigDecimal m30764const(int i, MathContext mathContext) {
        return new BigDecimal(i, mathContext);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: do, reason: not valid java name */
    private static final BigDecimal m30765do(BigDecimal dec) {
        Csuper.m30700throw(dec, "$this$dec");
        BigDecimal bigDecimalSubtract = dec.subtract(BigDecimal.ONE);
        Csuper.m30696super(bigDecimalSubtract, "this.subtract(BigDecimal.ONE)");
        return bigDecimalSubtract;
    }

    @um0
    /* renamed from: else, reason: not valid java name */
    private static final BigDecimal m30766else(BigDecimal times, BigDecimal bigDecimal) {
        Csuper.m30700throw(times, "$this$times");
        BigDecimal bigDecimalMultiply = times.multiply(bigDecimal);
        Csuper.m30696super(bigDecimalMultiply, "this.multiply(other)");
        return bigDecimalMultiply;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: final, reason: not valid java name */
    private static final BigDecimal m30767final(long j) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(j);
        Csuper.m30696super(bigDecimalValueOf, "BigDecimal.valueOf(this)");
        return bigDecimalValueOf;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: for, reason: not valid java name */
    private static final BigDecimal m30768for(BigDecimal inc) {
        Csuper.m30700throw(inc, "$this$inc");
        BigDecimal bigDecimalAdd = inc.add(BigDecimal.ONE);
        Csuper.m30696super(bigDecimalAdd, "this.add(BigDecimal.ONE)");
        return bigDecimalAdd;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: goto, reason: not valid java name */
    private static final BigDecimal m30769goto(double d) {
        return new BigDecimal(String.valueOf(d));
    }

    @um0
    /* renamed from: if, reason: not valid java name */
    private static final BigDecimal m30770if(BigDecimal div, BigDecimal bigDecimal) {
        Csuper.m30700throw(div, "$this$div");
        BigDecimal bigDecimalDivide = div.divide(bigDecimal, RoundingMode.HALF_EVEN);
        Csuper.m30696super(bigDecimalDivide, "this.divide(other, RoundingMode.HALF_EVEN)");
        return bigDecimalDivide;
    }

    @um0
    /* renamed from: new, reason: not valid java name */
    private static final BigDecimal m30771new(BigDecimal minus, BigDecimal bigDecimal) {
        Csuper.m30700throw(minus, "$this$minus");
        BigDecimal bigDecimalSubtract = minus.subtract(bigDecimal);
        Csuper.m30696super(bigDecimalSubtract, "this.subtract(other)");
        return bigDecimalSubtract;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: super, reason: not valid java name */
    private static final BigDecimal m30772super(long j, MathContext mathContext) {
        return new BigDecimal(j, mathContext);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: this, reason: not valid java name */
    private static final BigDecimal m30773this(double d, MathContext mathContext) {
        return new BigDecimal(String.valueOf(d), mathContext);
    }

    @um0
    /* renamed from: throw, reason: not valid java name */
    private static final BigDecimal m30774throw(BigDecimal unaryMinus) {
        Csuper.m30700throw(unaryMinus, "$this$unaryMinus");
        BigDecimal bigDecimalNegate = unaryMinus.negate();
        Csuper.m30696super(bigDecimalNegate, "this.negate()");
        return bigDecimalNegate;
    }

    @um0
    /* renamed from: try, reason: not valid java name */
    private static final BigDecimal m30775try(BigDecimal plus, BigDecimal bigDecimal) {
        Csuper.m30700throw(plus, "$this$plus");
        BigDecimal bigDecimalAdd = plus.add(bigDecimal);
        Csuper.m30696super(bigDecimalAdd, "this.add(other)");
        return bigDecimalAdd;
    }
}
