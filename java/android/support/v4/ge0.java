package android.support.v4;

import java.math.BigInteger;
import org.jsoup.nodes.Attributes;

/* loaded from: classes3.dex */
public final class ge0 extends Number implements Comparable<ge0> {
    private static final long serialVersionUID = 65382027393090L;
    private final int denominator;
    private final int numerator;
    public static final ge0 ZERO = new ge0(0, 1);
    public static final ge0 ONE = new ge0(1, 1);
    public static final ge0 ONE_HALF = new ge0(1, 2);
    public static final ge0 ONE_THIRD = new ge0(1, 3);
    public static final ge0 TWO_THIRDS = new ge0(2, 3);
    public static final ge0 ONE_QUARTER = new ge0(1, 4);
    public static final ge0 TWO_QUARTERS = new ge0(2, 4);
    public static final ge0 THREE_QUARTERS = new ge0(3, 4);
    public static final ge0 ONE_FIFTH = new ge0(1, 5);
    public static final ge0 TWO_FIFTHS = new ge0(2, 5);
    public static final ge0 THREE_FIFTHS = new ge0(3, 5);
    public static final ge0 FOUR_FIFTHS = new ge0(4, 5);

    /* renamed from: do, reason: not valid java name */
    private transient int f2106do = 0;

    /* renamed from: if, reason: not valid java name */
    private transient String f2108if = null;

    /* renamed from: for, reason: not valid java name */
    private transient String f2107for = null;

    private ge0(int i, int i2) {
        this.numerator = i;
        this.denominator = i2;
    }

    /* renamed from: case, reason: not valid java name */
    private static int m2646case(int i, int i2) {
        long j = i - i2;
        if (j < -2147483648L || j > 2147483647L) {
            throw new ArithmeticException("overflow: add");
        }
        return (int) j;
    }

    /* renamed from: do, reason: not valid java name */
    private static int m2647do(int i, int i2) {
        long j = i + i2;
        if (j < -2147483648L || j > 2147483647L) {
            throw new ArithmeticException("overflow: add");
        }
        return (int) j;
    }

    /* renamed from: for, reason: not valid java name */
    private static int m2648for(int i, int i2) {
        int i3;
        if (i == 0 || i2 == 0) {
            if (i == Integer.MIN_VALUE || i2 == Integer.MIN_VALUE) {
                throw new ArithmeticException("overflow: gcd is 2^31");
            }
            return Math.abs(i) + Math.abs(i2);
        }
        if (Math.abs(i) == 1 || Math.abs(i2) == 1) {
            return 1;
        }
        if (i > 0) {
            i = -i;
        }
        if (i2 > 0) {
            i2 = -i2;
        }
        int i4 = 0;
        while (true) {
            i3 = i & 1;
            if (i3 != 0 || (i2 & 1) != 0 || i4 >= 31) {
                break;
            }
            i /= 2;
            i2 /= 2;
            i4++;
        }
        if (i4 == 31) {
            throw new ArithmeticException("overflow: gcd is 2^31");
        }
        int i5 = i3 == 1 ? i2 : -(i / 2);
        while (true) {
            if ((i5 & 1) == 0) {
                i5 /= 2;
            } else {
                if (i5 > 0) {
                    i = -i5;
                } else {
                    i2 = i5;
                }
                i5 = (i2 - i) / 2;
                if (i5 == 0) {
                    return (-i) * (1 << i4);
                }
            }
        }
    }

    public static ge0 getFraction(int i, int i2) {
        if (i2 == 0) {
            throw new ArithmeticException("The denominator must not be zero");
        }
        if (i2 < 0) {
            if (i == Integer.MIN_VALUE || i2 == Integer.MIN_VALUE) {
                throw new ArithmeticException("overflow: can't negate");
            }
            i = -i;
            i2 = -i2;
        }
        return new ge0(i, i2);
    }

    public static ge0 getReducedFraction(int i, int i2) {
        if (i2 == 0) {
            throw new ArithmeticException("The denominator must not be zero");
        }
        if (i == 0) {
            return ZERO;
        }
        if (i2 == Integer.MIN_VALUE && (i & 1) == 0) {
            i /= 2;
            i2 /= 2;
        }
        if (i2 < 0) {
            if (i == Integer.MIN_VALUE || i2 == Integer.MIN_VALUE) {
                throw new ArithmeticException("overflow: can't negate");
            }
            i = -i;
            i2 = -i2;
        }
        int iM2648for = m2648for(i, i2);
        return new ge0(i / iM2648for, i2 / iM2648for);
    }

    /* renamed from: if, reason: not valid java name */
    private ge0 m2649if(ge0 ge0Var, boolean z) {
        if (ge0Var == null) {
            throw new IllegalArgumentException("The fraction must not be null");
        }
        if (this.numerator == 0) {
            return z ? ge0Var : ge0Var.negate();
        }
        if (ge0Var.numerator == 0) {
            return this;
        }
        int iM2648for = m2648for(this.denominator, ge0Var.denominator);
        if (iM2648for == 1) {
            int iM2650new = m2650new(this.numerator, ge0Var.denominator);
            int iM2650new2 = m2650new(ge0Var.numerator, this.denominator);
            return new ge0(z ? m2647do(iM2650new, iM2650new2) : m2646case(iM2650new, iM2650new2), m2651try(this.denominator, ge0Var.denominator));
        }
        BigInteger bigIntegerMultiply = BigInteger.valueOf(this.numerator).multiply(BigInteger.valueOf(ge0Var.denominator / iM2648for));
        BigInteger bigIntegerMultiply2 = BigInteger.valueOf(ge0Var.numerator).multiply(BigInteger.valueOf(this.denominator / iM2648for));
        BigInteger bigIntegerAdd = z ? bigIntegerMultiply.add(bigIntegerMultiply2) : bigIntegerMultiply.subtract(bigIntegerMultiply2);
        int iIntValue = bigIntegerAdd.mod(BigInteger.valueOf(iM2648for)).intValue();
        int iM2648for2 = iIntValue == 0 ? iM2648for : m2648for(iIntValue, iM2648for);
        BigInteger bigIntegerDivide = bigIntegerAdd.divide(BigInteger.valueOf(iM2648for2));
        if (bigIntegerDivide.bitLength() <= 31) {
            return new ge0(bigIntegerDivide.intValue(), m2651try(this.denominator / iM2648for, ge0Var.denominator / iM2648for2));
        }
        throw new ArithmeticException("overflow: numerator too large after multiply");
    }

    /* renamed from: new, reason: not valid java name */
    private static int m2650new(int i, int i2) {
        long j = i * i2;
        if (j < -2147483648L || j > 2147483647L) {
            throw new ArithmeticException("overflow: mul");
        }
        return (int) j;
    }

    /* renamed from: try, reason: not valid java name */
    private static int m2651try(int i, int i2) {
        long j = i * i2;
        if (j <= 2147483647L) {
            return (int) j;
        }
        throw new ArithmeticException("overflow: mulPos");
    }

    public ge0 abs() {
        return this.numerator >= 0 ? this : negate();
    }

    public ge0 add(ge0 ge0Var) {
        return m2649if(ge0Var, true);
    }

    public ge0 divideBy(ge0 ge0Var) {
        if (ge0Var == null) {
            throw new IllegalArgumentException("The fraction must not be null");
        }
        if (ge0Var.numerator != 0) {
            return multiplyBy(ge0Var.invert());
        }
        throw new ArithmeticException("The fraction to divide by must not be zero");
    }

    @Override // java.lang.Number
    public double doubleValue() {
        double d = this.numerator;
        double d2 = this.denominator;
        Double.isNaN(d);
        Double.isNaN(d2);
        return d / d2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ge0)) {
            return false;
        }
        ge0 ge0Var = (ge0) obj;
        return getNumerator() == ge0Var.getNumerator() && getDenominator() == ge0Var.getDenominator();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.numerator / this.denominator;
    }

    public int getDenominator() {
        return this.denominator;
    }

    public int getNumerator() {
        return this.numerator;
    }

    public int getProperNumerator() {
        return Math.abs(this.numerator % this.denominator);
    }

    public int getProperWhole() {
        return this.numerator / this.denominator;
    }

    public int hashCode() {
        if (this.f2106do == 0) {
            this.f2106do = ((getNumerator() + 629) * 37) + getDenominator();
        }
        return this.f2106do;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.numerator / this.denominator;
    }

    public ge0 invert() {
        int i = this.numerator;
        if (i == 0) {
            throw new ArithmeticException("Unable to invert zero.");
        }
        if (i != Integer.MIN_VALUE) {
            return i < 0 ? new ge0(-this.denominator, -i) : new ge0(this.denominator, i);
        }
        throw new ArithmeticException("overflow: can't negate numerator");
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.numerator / this.denominator;
    }

    public ge0 multiplyBy(ge0 ge0Var) {
        if (ge0Var == null) {
            throw new IllegalArgumentException("The fraction must not be null");
        }
        int i = this.numerator;
        if (i == 0 || ge0Var.numerator == 0) {
            return ZERO;
        }
        int iM2648for = m2648for(i, ge0Var.denominator);
        int iM2648for2 = m2648for(ge0Var.numerator, this.denominator);
        return getReducedFraction(m2650new(this.numerator / iM2648for, ge0Var.numerator / iM2648for2), m2651try(this.denominator / iM2648for2, ge0Var.denominator / iM2648for));
    }

    public ge0 negate() {
        int i = this.numerator;
        if (i != Integer.MIN_VALUE) {
            return new ge0(-i, this.denominator);
        }
        throw new ArithmeticException("overflow: too large to negate");
    }

    public ge0 pow(int i) {
        if (i == 1) {
            return this;
        }
        if (i == 0) {
            return ONE;
        }
        if (i < 0) {
            return i == Integer.MIN_VALUE ? invert().pow(2).pow(-(i / 2)) : invert().pow(-i);
        }
        ge0 ge0VarMultiplyBy = multiplyBy(this);
        return i % 2 == 0 ? ge0VarMultiplyBy.pow(i / 2) : ge0VarMultiplyBy.pow(i / 2).multiplyBy(this);
    }

    public ge0 reduce() {
        int i = this.numerator;
        if (i == 0) {
            ge0 ge0Var = ZERO;
            return equals(ge0Var) ? this : ge0Var;
        }
        int iM2648for = m2648for(Math.abs(i), this.denominator);
        return iM2648for == 1 ? this : getFraction(this.numerator / iM2648for, this.denominator / iM2648for);
    }

    public ge0 subtract(ge0 ge0Var) {
        return m2649if(ge0Var, false);
    }

    public String toProperString() {
        if (this.f2107for == null) {
            int i = this.numerator;
            if (i == 0) {
                this.f2107for = "0";
            } else {
                int i2 = this.denominator;
                if (i == i2) {
                    this.f2107for = "1";
                } else if (i == i2 * (-1)) {
                    this.f2107for = "-1";
                } else {
                    if (i > 0) {
                        i = -i;
                    }
                    if (i < (-i2)) {
                        int properNumerator = getProperNumerator();
                        if (properNumerator == 0) {
                            this.f2107for = Integer.toString(getProperWhole());
                        } else {
                            StringBuilder sb = new StringBuilder(32);
                            sb.append(getProperWhole());
                            sb.append(' ');
                            sb.append(properNumerator);
                            sb.append(Attributes.InternalPrefix);
                            sb.append(getDenominator());
                            this.f2107for = sb.toString();
                        }
                    } else {
                        StringBuilder sb2 = new StringBuilder(32);
                        sb2.append(getNumerator());
                        sb2.append(Attributes.InternalPrefix);
                        sb2.append(getDenominator());
                        this.f2107for = sb2.toString();
                    }
                }
            }
        }
        return this.f2107for;
    }

    public String toString() {
        if (this.f2108if == null) {
            StringBuilder sb = new StringBuilder(32);
            sb.append(getNumerator());
            sb.append(Attributes.InternalPrefix);
            sb.append(getDenominator());
            this.f2108if = sb.toString();
        }
        return this.f2108if;
    }

    @Override // java.lang.Comparable
    public int compareTo(ge0 ge0Var) {
        if (this == ge0Var) {
            return 0;
        }
        int i = this.numerator;
        int i2 = ge0Var.numerator;
        if (i == i2 && this.denominator == ge0Var.denominator) {
            return 0;
        }
        long j = i * ge0Var.denominator;
        long j2 = i2 * this.denominator;
        if (j == j2) {
            return 0;
        }
        return j < j2 ? -1 : 1;
    }

    public static ge0 getFraction(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new ArithmeticException("The denominator must not be zero");
        }
        if (i3 < 0) {
            throw new ArithmeticException("The denominator must not be negative");
        }
        if (i2 < 0) {
            throw new ArithmeticException("The numerator must not be negative");
        }
        long j = i < 0 ? (i * i3) - i2 : (i * i3) + i2;
        if (j >= -2147483648L && j <= 2147483647L) {
            return new ge0((int) j, i3);
        }
        throw new ArithmeticException("Numerator too large to represent as an Integer.");
    }

    public static ge0 getFraction(double d) {
        int i;
        int i2;
        int i3 = d < 0.0d ? -1 : 1;
        double dAbs = Math.abs(d);
        if (dAbs <= 2.147483647E9d && !Double.isNaN(dAbs)) {
            int i4 = (int) dAbs;
            double d2 = i4;
            Double.isNaN(d2);
            double d3 = dAbs - d2;
            int i5 = (int) d3;
            double d4 = 1.0d;
            double d5 = i5;
            Double.isNaN(d5);
            double d6 = d3 - d5;
            double dAbs2 = Double.MAX_VALUE;
            int i6 = i3;
            int i7 = 1;
            int i8 = 0;
            int i9 = 0;
            int i10 = 1;
            int i11 = 1;
            while (true) {
                int i12 = (int) (d4 / d6);
                double d7 = dAbs2;
                double d8 = i12;
                Double.isNaN(d8);
                double d9 = d4 - (d8 * d6);
                int i13 = (i5 * i7) + i8;
                int i14 = (i5 * i9) + i10;
                double d10 = i13;
                double d11 = i14;
                Double.isNaN(d10);
                Double.isNaN(d11);
                dAbs2 = Math.abs(d3 - (d10 / d11));
                i = i11 + 1;
                if (d7 <= dAbs2 || i14 > 10000 || i14 <= 0) {
                    break;
                }
                i2 = 25;
                if (i >= 25) {
                    break;
                }
                i11 = i;
                int i15 = i9;
                i9 = i14;
                i5 = i12;
                i8 = i7;
                i7 = i13;
                i10 = i15;
                d4 = d6;
                d6 = d9;
            }
            i2 = 25;
            if (i != i2) {
                return getReducedFraction((i7 + (i4 * i9)) * i6, i9);
            }
            throw new ArithmeticException("Unable to convert double to fraction");
        }
        throw new ArithmeticException("The value must not be greater than Integer.MAX_VALUE or NaN");
    }

    public static ge0 getFraction(String str) throws NumberFormatException {
        if (str != null) {
            if (str.indexOf(46) >= 0) {
                return getFraction(Double.parseDouble(str));
            }
            int iIndexOf = str.indexOf(32);
            if (iIndexOf > 0) {
                int i = Integer.parseInt(str.substring(0, iIndexOf));
                String strSubstring = str.substring(iIndexOf + 1);
                int iIndexOf2 = strSubstring.indexOf(47);
                if (iIndexOf2 >= 0) {
                    return getFraction(i, Integer.parseInt(strSubstring.substring(0, iIndexOf2)), Integer.parseInt(strSubstring.substring(iIndexOf2 + 1)));
                }
                throw new NumberFormatException("The fraction could not be parsed as the format X Y/Z");
            }
            int iIndexOf3 = str.indexOf(47);
            if (iIndexOf3 < 0) {
                return getFraction(Integer.parseInt(str), 1);
            }
            return getFraction(Integer.parseInt(str.substring(0, iIndexOf3)), Integer.parseInt(str.substring(iIndexOf3 + 1)));
        }
        throw new IllegalArgumentException("The string must not be null");
    }
}
