package freemarker.ext.beans;

import com.wsw.cospa.activity.OnkeyEncryptActivity;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
class OverloadedNumberUtil {

    /* renamed from: case, reason: not valid java name */
    private static final int f24464case = -16777216;

    /* renamed from: do, reason: not valid java name */
    public static final int f24465do = 40000;

    /* renamed from: else, reason: not valid java name */
    private static final int f24466else = 24;

    /* renamed from: for, reason: not valid java name */
    private static final long f24467for = -9007199254740992L;

    /* renamed from: goto, reason: not valid java name */
    private static final double f24468goto = 1.0E-6d;

    /* renamed from: if, reason: not valid java name */
    private static final long f24469if = 9007199254740992L;

    /* renamed from: new, reason: not valid java name */
    private static final int f24470new = 53;

    /* renamed from: this, reason: not valid java name */
    private static final double f24471this = 0.999999d;

    /* renamed from: try, reason: not valid java name */
    private static final int f24472try = 16777216;

    public interface BigDecimalSource {
        BigDecimal bigDecimalValue();
    }

    public interface BigIntegerSource {
        BigInteger bigIntegerValue();
    }

    public interface ByteSource {
        Byte byteValue();
    }

    public interface DoubleSource {
        Double doubleValue();
    }

    public interface FloatSource {
        Float floatValue();
    }

    public interface IntegerSource {
        Integer integerValue();
    }

    public interface LongSource {
        Long longValue();
    }

    public interface ShortSource {
        Short shortValue();
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$break, reason: invalid class name */
    public static final class Cbreak extends Cpackage {
        private final Double n;

        public Cbreak(Double d) {
            this.n = d;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public double doubleValue() {
            return this.n.doubleValue();
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public float floatValue() {
            return this.n.floatValue();
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage
        public Number getSourceNumber() {
            return this.n;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$case, reason: invalid class name */
    public static final class Ccase extends Celse {
        public Ccase(BigInteger bigInteger) {
            super(bigInteger);
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$catch, reason: invalid class name */
    public static final class Ccatch extends Csuper {
        private final int w;

        public Ccatch(Double d, int i) {
            super(d);
            this.w = i;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public int intValue() {
            return this.w;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public long longValue() {
            return this.w;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$class, reason: invalid class name */
    public static final class Cclass extends Csuper {
        private final int w;

        public Cclass(Double d, int i) {
            super(d);
            this.w = i;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public int intValue() {
            return this.w;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public long longValue() {
            return this.w;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$const, reason: invalid class name */
    public static final class Cconst extends Csuper {
        private final long w;

        public Cconst(Double d, long j) {
            super(d);
            this.w = j;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public long longValue() {
            return this.w;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$default, reason: invalid class name */
    public static class Cdefault extends Cfinally {
        private final int w;

        public Cdefault(Long l, int i) {
            super(l);
            this.w = i;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public int intValue() {
            return this.w;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$do, reason: invalid class name */
    public static final class Cdo extends Celse {
        public Cdo(BigInteger bigInteger) {
            super(bigInteger);
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$else, reason: invalid class name */
    public static abstract class Celse extends Cpackage {
        public final BigInteger n;

        public Celse(BigInteger bigInteger) {
            this.n = bigInteger;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage
        public Number getSourceNumber() {
            return this.n;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$extends, reason: invalid class name */
    public static class Cextends extends Cfinally {
        private final short w;

        public Cextends(Long l, short s) {
            super(l);
            this.w = s;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public short shortValue() {
            return this.w;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$final, reason: invalid class name */
    public static final class Cfinal extends Csuper {
        private final short w;

        public Cfinal(Double d, short s) {
            super(d);
            this.w = s;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public int intValue() {
            return this.w;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public long longValue() {
            return this.w;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public short shortValue() {
            return this.w;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$finally, reason: invalid class name */
    public static abstract class Cfinally extends Cpackage {
        private final Long n;

        public Cfinally(Long l) {
            this.n = l;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage
        public Number getSourceNumber() {
            return this.n;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public long longValue() {
            return this.n.longValue();
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$for, reason: invalid class name */
    public static abstract class Cfor extends Celse {
        public Cfor(BigInteger bigInteger) {
            super(bigInteger);
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public double doubleValue() {
            return this.n.longValue();
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public float floatValue() {
            return this.n.longValue();
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$goto, reason: invalid class name */
    public static final class Cgoto extends Celse {
        public Cgoto(BigInteger bigInteger) {
            super(bigInteger);
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$if, reason: invalid class name */
    public static final class Cif extends Cfor {
        public Cif(BigInteger bigInteger) {
            super(bigInteger);
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$import, reason: invalid class name */
    public static final class Cimport extends Cnative {
        private final short w;

        public Cimport(Float f, short s) {
            super(f);
            this.w = s;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public int intValue() {
            return this.w;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public long longValue() {
            return this.w;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public short shortValue() {
            return this.w;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$native, reason: invalid class name */
    public static abstract class Cnative extends Cpackage {
        private final Float n;

        public Cnative(Float f) {
            this.n = f;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public float floatValue() {
            return this.n.floatValue();
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage
        public Number getSourceNumber() {
            return this.n;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$new, reason: invalid class name */
    public static final class Cnew extends Cfor {
        public Cnew(BigInteger bigInteger) {
            super(bigInteger);
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$package, reason: invalid class name */
    public static abstract class Cpackage extends Number implements Comparable {
        @Override // java.lang.Number
        public byte byteValue() {
            return getSourceNumber().byteValue();
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            Object sourceNumber = getSourceNumber();
            if (sourceNumber instanceof Comparable) {
                return ((Comparable) sourceNumber).compareTo(obj);
            }
            throw new ClassCastException(sourceNumber.getClass().getName() + " is not Comparable.");
        }

        @Override // java.lang.Number
        public double doubleValue() {
            return getSourceNumber().doubleValue();
        }

        public boolean equals(Object obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return getSourceNumber().equals(((Cpackage) obj).getSourceNumber());
        }

        @Override // java.lang.Number
        public float floatValue() {
            return getSourceNumber().floatValue();
        }

        public abstract Number getSourceNumber();

        public int hashCode() {
            return getSourceNumber().hashCode();
        }

        @Override // java.lang.Number
        public int intValue() {
            return getSourceNumber().intValue();
        }

        @Override // java.lang.Number
        public long longValue() {
            return getSourceNumber().longValue();
        }

        @Override // java.lang.Number
        public short shortValue() {
            return getSourceNumber().shortValue();
        }

        public String toString() {
            return getSourceNumber().toString();
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$private, reason: invalid class name */
    public static class Cprivate extends Cpackage {
        private final Short n;
        private final byte w;

        public Cprivate(Short sh, byte b) {
            this.n = sh;
            this.w = b;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public byte byteValue() {
            return this.w;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage
        public Number getSourceNumber() {
            return this.n;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public short shortValue() {
            return this.n.shortValue();
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$public, reason: invalid class name */
    public static final class Cpublic extends Cpackage {
        private final BigDecimal n;

        public Cpublic(BigDecimal bigDecimal) {
            this.n = bigDecimal;
        }

        public BigInteger bigIntegerValue() {
            return this.n.toBigInteger();
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage
        public Number getSourceNumber() {
            return this.n;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$return, reason: invalid class name */
    public static class Creturn extends Cswitch {
        private final byte w;

        public Creturn(Integer num, byte b) {
            super(num);
            this.w = b;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public byte byteValue() {
            return this.w;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$static, reason: invalid class name */
    public static class Cstatic extends Cswitch {
        private final short w;

        public Cstatic(Integer num, short s) {
            super(num);
            this.w = s;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public short shortValue() {
            return this.w;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$super, reason: invalid class name */
    public static abstract class Csuper extends Cpackage {
        private final Double n;

        public Csuper(Double d) {
            this.n = d;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public double doubleValue() {
            return this.n.doubleValue();
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage
        public Number getSourceNumber() {
            return this.n;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$switch, reason: invalid class name */
    public static abstract class Cswitch extends Cpackage {
        private final Integer n;

        public Cswitch(Integer num) {
            this.n = num;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage
        public Number getSourceNumber() {
            return this.n;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public int intValue() {
            return this.n.intValue();
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$this, reason: invalid class name */
    public static final class Cthis extends Csuper {
        private final byte w;

        public Cthis(Double d, byte b) {
            super(d);
            this.w = b;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public byte byteValue() {
            return this.w;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public int intValue() {
            return this.w;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public long longValue() {
            return this.w;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public short shortValue() {
            return this.w;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$throw, reason: invalid class name */
    public static final class Cthrow extends Cnative {
        private final byte w;

        public Cthrow(Float f, byte b) {
            super(f);
            this.w = b;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public byte byteValue() {
            return this.w;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public int intValue() {
            return this.w;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public long longValue() {
            return this.w;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public short shortValue() {
            return this.w;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$throws, reason: invalid class name */
    public static class Cthrows extends Cfinally {
        private final byte w;

        public Cthrows(Long l, byte b) {
            super(l);
            this.w = b;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public byte byteValue() {
            return this.w;
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$try, reason: invalid class name */
    public static final class Ctry extends Celse {
        public Ctry(BigInteger bigInteger) {
            super(bigInteger);
        }
    }

    /* renamed from: freemarker.ext.beans.OverloadedNumberUtil$while, reason: invalid class name */
    public static final class Cwhile extends Cnative {
        private final int w;

        public Cwhile(Float f, int i) {
            super(f);
            this.w = i;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public int intValue() {
            return this.w;
        }

        @Override // freemarker.ext.beans.OverloadedNumberUtil.Cpackage, java.lang.Number
        public long longValue() {
            return this.w;
        }
    }

    private OverloadedNumberUtil() {
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x024f  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Number m28477do(Number number, int i) {
        Class<?> cls = number.getClass();
        if (cls == BigDecimal.class) {
            BigDecimal bigDecimal = (BigDecimal) number;
            return ((i & 316) == 0 || (i & 704) == 0 || !freemarker.template.utility.Ccatch.m29255new(bigDecimal)) ? bigDecimal : new Cpublic(bigDecimal);
        }
        if (cls == Integer.class) {
            int iIntValue = number.intValue();
            return ((i & 4) == 0 || iIntValue > 127 || iIntValue < -128) ? ((i & 8) == 0 || iIntValue > 32767 || iIntValue < -32768) ? number : new Cstatic((Integer) number, (short) iIntValue) : new Creturn((Integer) number, (byte) iIntValue);
        }
        if (cls == Long.class) {
            long jLongValue = number.longValue();
            return ((i & 4) == 0 || jLongValue > 127 || jLongValue < -128) ? ((i & 8) == 0 || jLongValue > 32767 || jLongValue < -32768) ? ((i & 16) == 0 || jLongValue > 2147483647L || jLongValue < -2147483648L) ? number : new Cdefault((Long) number, (int) jLongValue) : new Cextends((Long) number, (short) jLongValue) : new Cthrows((Long) number, (byte) jLongValue);
        }
        boolean z = true;
        if (cls == Double.class) {
            double dDoubleValue = number.doubleValue();
            if ((i & 316) != 0 && dDoubleValue <= 9.007199254740992E15d && dDoubleValue >= -9.007199254740992E15d) {
                long jLongValue2 = number.longValue();
                double d = jLongValue2;
                Double.isNaN(d);
                double d2 = dDoubleValue - d;
                if (d2 != 0.0d) {
                    if (d2 > 0.0d) {
                        if (d2 >= f24468goto) {
                            if (d2 > f24471this) {
                                jLongValue2++;
                            }
                        }
                        z = false;
                    } else {
                        if (d2 <= -1.0E-6d) {
                            if (d2 < -0.999999d) {
                                jLongValue2--;
                            }
                        }
                        z = false;
                    }
                    if ((i & 4) == 0 && jLongValue2 <= 127 && jLongValue2 >= -128) {
                        return new Cthis((Double) number, (byte) jLongValue2);
                    }
                    if ((i & 8) == 0 && jLongValue2 <= 32767 && jLongValue2 >= -32768) {
                        return new Cfinal((Double) number, (short) jLongValue2);
                    }
                    if ((i & 16) == 0 && jLongValue2 <= 2147483647L && jLongValue2 >= -2147483648L) {
                        int i2 = (int) jLongValue2;
                        return ((i & 64) == 0 || i2 < -16777216 || i2 > 16777216) ? new Ccatch((Double) number, i2) : new Cclass((Double) number, i2);
                    }
                    if ((i & 32) != 0) {
                        if (z) {
                            return new Cconst((Double) number, jLongValue2);
                        }
                        if (jLongValue2 >= -2147483648L && jLongValue2 <= 2147483647L) {
                            return new Cconst((Double) number, jLongValue2);
                        }
                    }
                } else {
                    if ((i & 4) == 0) {
                    }
                    if ((i & 8) == 0) {
                    }
                    if ((i & 16) == 0) {
                    }
                    if ((i & 32) != 0) {
                    }
                }
            }
            return ((i & 64) == 0 || dDoubleValue < -3.4028234663852886E38d || dDoubleValue > 3.4028234663852886E38d) ? number : new Cbreak((Double) number);
        }
        if (cls != Float.class) {
            if (cls == Byte.class) {
                return number;
            }
            if (cls == Short.class) {
                short sShortValue = number.shortValue();
                return ((i & 4) == 0 || sShortValue > 127 || sShortValue < -128) ? number : new Cprivate((Short) number, (byte) sShortValue);
            }
            if (cls == BigInteger.class && (i & 252) != 0) {
                BigInteger bigInteger = (BigInteger) number;
                int iBitLength = bigInteger.bitLength();
                if ((i & 4) != 0 && iBitLength <= 7) {
                    return new Cdo(bigInteger);
                }
                if ((i & 8) != 0 && iBitLength <= 15) {
                    return new Cgoto(bigInteger);
                }
                if ((i & 16) != 0 && iBitLength <= 31) {
                    return new Ctry(bigInteger);
                }
                if ((i & 32) != 0 && iBitLength <= 63) {
                    return new Ccase(bigInteger);
                }
                if ((i & 64) != 0 && (iBitLength <= 24 || (iBitLength == 25 && bigInteger.getLowestSetBit() >= 24))) {
                    return new Cnew(bigInteger);
                }
                if ((i & 128) != 0 && (iBitLength <= 53 || (iBitLength == 54 && bigInteger.getLowestSetBit() >= 53))) {
                    return new Cif(bigInteger);
                }
            }
            return number;
        }
        float fFloatValue = number.floatValue();
        if ((i & 316) != 0 && fFloatValue <= 1.6777216E7f && fFloatValue >= -1.6777216E7f) {
            int iIntValue2 = number.intValue();
            double d3 = fFloatValue - iIntValue2;
            if (d3 == 0.0d) {
                if ((i & 4) == 0) {
                }
                if ((i & 8) == 0) {
                }
                if ((i & 16) == 0) {
                }
            } else if (iIntValue2 >= -128 && iIntValue2 <= 127) {
                if (d3 > 0.0d) {
                    if (d3 >= 1.0E-5d) {
                        if (d3 > 0.99999d) {
                            iIntValue2++;
                        }
                    }
                    z = false;
                } else {
                    if (d3 <= -1.0E-5d) {
                        if (d3 < -0.99999d) {
                            iIntValue2--;
                        }
                    }
                    z = false;
                }
                if ((i & 4) == 0 && iIntValue2 <= 127 && iIntValue2 >= -128) {
                    return new Cthrow((Float) number, (byte) iIntValue2);
                }
                if ((i & 8) == 0 && iIntValue2 <= 32767 && iIntValue2 >= -32768) {
                    return new Cimport((Float) number, (short) iIntValue2);
                }
                if ((i & 16) == 0) {
                    return new Cwhile((Float) number, iIntValue2);
                }
                if ((i & 32) != 0) {
                    return z ? new Cwhile((Float) number, iIntValue2) : new Cthrow((Float) number, (byte) iIntValue2);
                }
            }
        }
        return number;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m28478for(Class cls, Class cls2) {
        if (cls2 == cls) {
            return 0;
        }
        if (cls2 == Integer.class) {
            if (cls == Cpublic.class) {
                return 31003;
            }
            if (cls == BigDecimal.class) {
                return 41003;
            }
            if (cls == Long.class || cls == Double.class || cls == Float.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Byte.class) {
                return 10003;
            }
            if (cls == BigInteger.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cdefault.class) {
                return 21003;
            }
            if (cls == Cbreak.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cclass.class || cls == Ccatch.class) {
                return 22003;
            }
            if (cls == Cconst.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Creturn.class) {
                return 0;
            }
            if (cls == Cthis.class) {
                return 22003;
            }
            if (cls == Cthrows.class) {
                return 21003;
            }
            if (cls == Short.class) {
                return 10003;
            }
            if (cls == Cextends.class) {
                return 21003;
            }
            if (cls == Cprivate.class) {
                return 10003;
            }
            if (cls == Cwhile.class || cls == Cthrow.class || cls == Cimport.class) {
                return 21003;
            }
            if (cls == Ctry.class) {
                return 16003;
            }
            if (cls == Ccase.class || cls == Cif.class || cls == Cnew.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cdo.class) {
                return 16003;
            }
            if (cls == Cstatic.class) {
                return 0;
            }
            if (cls == Cfinal.class) {
                return 22003;
            }
            return cls == Cgoto.class ? 16003 : Integer.MAX_VALUE;
        }
        if (cls2 == Long.class) {
            if (cls == Integer.class) {
                return 10004;
            }
            if (cls == Cpublic.class) {
                return 31004;
            }
            if (cls == BigDecimal.class) {
                return 41004;
            }
            if (cls == Double.class || cls == Float.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Byte.class) {
                return 10004;
            }
            if (cls == BigInteger.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cdefault.class) {
                return 0;
            }
            if (cls == Cbreak.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cclass.class || cls == Ccatch.class || cls == Cconst.class) {
                return 21004;
            }
            if (cls == Creturn.class) {
                return 10004;
            }
            if (cls == Cthis.class) {
                return 21004;
            }
            if (cls == Cthrows.class) {
                return 0;
            }
            if (cls == Short.class) {
                return 10004;
            }
            if (cls == Cextends.class) {
                return 0;
            }
            if (cls == Cprivate.class) {
                return 10004;
            }
            if (cls == Cwhile.class || cls == Cthrow.class || cls == Cimport.class) {
                return 21004;
            }
            if (cls == Ctry.class || cls == Ccase.class) {
                return 15004;
            }
            if (cls == Cif.class || cls == Cnew.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cdo.class) {
                return 15004;
            }
            if (cls == Cstatic.class) {
                return 10004;
            }
            if (cls == Cfinal.class) {
                return 21004;
            }
            return cls == Cgoto.class ? 15004 : Integer.MAX_VALUE;
        }
        if (cls2 == Double.class) {
            if (cls == Integer.class) {
                return 20007;
            }
            if (cls == Cpublic.class || cls == BigDecimal.class) {
                return 32007;
            }
            if (cls == Long.class) {
                return 30007;
            }
            if (cls == Float.class) {
                return 10007;
            }
            if (cls == Byte.class) {
                return 20007;
            }
            if (cls == BigInteger.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cdefault.class) {
                return 21007;
            }
            if (cls == Cbreak.class || cls == Cclass.class || cls == Ccatch.class || cls == Cconst.class) {
                return 0;
            }
            if (cls == Creturn.class) {
                return 20007;
            }
            if (cls == Cthis.class) {
                return 0;
            }
            if (cls == Cthrows.class) {
                return 21007;
            }
            if (cls == Short.class) {
                return 20007;
            }
            if (cls == Cextends.class) {
                return 21007;
            }
            if (cls == Cprivate.class) {
                return 20007;
            }
            if (cls == Cwhile.class || cls == Cthrow.class || cls == Cimport.class) {
                return 10007;
            }
            if (cls == Ctry.class) {
                return 20007;
            }
            if (cls == Ccase.class) {
                return 30007;
            }
            if (cls == Cif.class || cls == Cnew.class || cls == Cdo.class || cls == Cstatic.class) {
                return 20007;
            }
            if (cls == Cfinal.class) {
                return 0;
            }
            return cls == Cgoto.class ? 20007 : Integer.MAX_VALUE;
        }
        if (cls2 == Float.class) {
            if (cls == Integer.class) {
                return 30006;
            }
            if (cls == Cpublic.class || cls == BigDecimal.class) {
                return 33006;
            }
            if (cls == Long.class) {
                return 40006;
            }
            if (cls == Double.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Byte.class) {
                return 20006;
            }
            if (cls == BigInteger.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cdefault.class || cls == Cbreak.class) {
                return 30006;
            }
            if (cls == Cclass.class) {
                return 23006;
            }
            if (cls == Ccatch.class) {
                return 30006;
            }
            if (cls == Cconst.class) {
                return 40006;
            }
            if (cls == Creturn.class) {
                return 24006;
            }
            if (cls == Cthis.class) {
                return 23006;
            }
            if (cls == Cthrows.class) {
                return 24006;
            }
            if (cls == Short.class) {
                return 20006;
            }
            if (cls == Cextends.class) {
                return 24006;
            }
            if (cls == Cprivate.class) {
                return 20006;
            }
            if (cls == Cwhile.class || cls == Cthrow.class || cls == Cimport.class) {
                return 0;
            }
            if (cls == Ctry.class) {
                return 30006;
            }
            if (cls == Ccase.class || cls == Cif.class) {
                return 40006;
            }
            if (cls == Cnew.class || cls == Cdo.class || cls == Cstatic.class) {
                return 24006;
            }
            if (cls == Cfinal.class) {
                return 23006;
            }
            return cls == Cgoto.class ? 24006 : Integer.MAX_VALUE;
        }
        if (cls2 == Byte.class) {
            if (cls == Integer.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cpublic.class) {
                return 35001;
            }
            if (cls == BigDecimal.class) {
                return 45001;
            }
            if (cls == Long.class || cls == Double.class || cls == Float.class || cls == BigInteger.class || cls == Cdefault.class || cls == Cbreak.class || cls == Cclass.class || cls == Ccatch.class || cls == Cconst.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Creturn.class) {
                return 22001;
            }
            if (cls == Cthis.class) {
                return 25001;
            }
            if (cls == Cthrows.class) {
                return 23001;
            }
            if (cls == Short.class || cls == Cextends.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cprivate.class) {
                return 21001;
            }
            if (cls == Cwhile.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cthrow.class) {
                return 23001;
            }
            if (cls == Cimport.class || cls == Ctry.class || cls == Ccase.class || cls == Cif.class || cls == Cnew.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cdo.class) {
                return 18001;
            }
            return (cls != Cstatic.class && cls == Cfinal.class) ? Integer.MAX_VALUE : Integer.MAX_VALUE;
        }
        if (cls2 == Short.class) {
            if (cls == Integer.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cpublic.class) {
                return 34002;
            }
            if (cls == BigDecimal.class) {
                return 44002;
            }
            if (cls == Long.class || cls == Double.class || cls == Float.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Byte.class) {
                return OnkeyEncryptActivity.f21275throw;
            }
            if (cls == BigInteger.class || cls == Cdefault.class || cls == Cbreak.class || cls == Cclass.class || cls == Ccatch.class || cls == Cconst.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Creturn.class) {
                return 21002;
            }
            if (cls == Cthis.class) {
                return 24002;
            }
            if (cls == Cthrows.class || cls == Cextends.class) {
                return 22002;
            }
            if (cls == Cprivate.class) {
                return 0;
            }
            if (cls == Cwhile.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cthrow.class || cls == Cimport.class) {
                return 22002;
            }
            if (cls == Ctry.class || cls == Ccase.class || cls == Cif.class || cls == Cnew.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cdo.class) {
                return 17002;
            }
            if (cls == Cstatic.class) {
                return 21002;
            }
            if (cls == Cfinal.class) {
                return 24002;
            }
            return cls == Cgoto.class ? 17002 : Integer.MAX_VALUE;
        }
        if (cls2 == BigDecimal.class) {
            if (cls == Integer.class) {
                return 20008;
            }
            if (cls == Cpublic.class) {
                return 0;
            }
            if (cls == Long.class || cls == Double.class || cls == Float.class || cls == Byte.class) {
                return 20008;
            }
            if (cls == BigInteger.class) {
                return 10008;
            }
            if (cls == Cdefault.class || cls == Cbreak.class || cls == Cclass.class || cls == Ccatch.class || cls == Cconst.class || cls == Creturn.class || cls == Cthis.class || cls == Cthrows.class || cls == Short.class || cls == Cextends.class || cls == Cprivate.class || cls == Cwhile.class || cls == Cthrow.class || cls == Cimport.class) {
                return 20008;
            }
            if (cls == Ctry.class || cls == Ccase.class || cls == Cif.class || cls == Cnew.class || cls == Cdo.class) {
                return 10008;
            }
            if (cls == Cstatic.class || cls == Cfinal.class) {
                return 20008;
            }
            return cls == Cgoto.class ? 10008 : Integer.MAX_VALUE;
        }
        if (cls2 == BigInteger.class) {
            if (cls == Integer.class || cls == Cpublic.class) {
                return 10005;
            }
            if (cls == BigDecimal.class) {
                return 40005;
            }
            if (cls == Long.class) {
                return 10005;
            }
            if (cls == Double.class || cls == Float.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Byte.class || cls == Cdefault.class) {
                return 10005;
            }
            if (cls == Cbreak.class) {
                return Integer.MAX_VALUE;
            }
            if (cls == Cclass.class || cls == Ccatch.class || cls == Cconst.class) {
                return 21005;
            }
            if (cls == Creturn.class) {
                return 10005;
            }
            if (cls == Cthis.class) {
                return 21005;
            }
            if (cls == Cthrows.class || cls == Short.class || cls == Cextends.class || cls == Cprivate.class) {
                return 10005;
            }
            if (cls == Cwhile.class || cls == Cthrow.class || cls == Cimport.class) {
                return 25005;
            }
            if (cls == Ctry.class || cls == Ccase.class || cls == Cif.class || cls == Cnew.class || cls == Cdo.class) {
                return 0;
            }
            if (cls == Cstatic.class) {
                return 10005;
            }
            if (cls == Cfinal.class) {
                return 21005;
            }
            if (cls == Cgoto.class) {
                return 0;
            }
        }
        return Integer.MAX_VALUE;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m28479if(Class cls, Class cls2) {
        Class clsM29286while = freemarker.template.utility.Cif.m29286while(cls);
        Class clsM29286while2 = freemarker.template.utility.Cif.m29286while(cls2);
        if (clsM29286while == clsM29286while2) {
            return 0;
        }
        if (clsM29286while == Integer.class) {
            if (clsM29286while2 == Long.class) {
                return 1;
            }
            if (clsM29286while2 == Double.class) {
                return 4;
            }
            if (clsM29286while2 == Float.class) {
                return 3;
            }
            if (clsM29286while2 == Byte.class) {
                return -2;
            }
            if (clsM29286while2 == Short.class) {
                return -1;
            }
            if (clsM29286while2 == BigDecimal.class) {
                return 5;
            }
            return clsM29286while2 == BigInteger.class ? 2 : 0;
        }
        if (clsM29286while == Long.class) {
            if (clsM29286while2 == Integer.class) {
                return -1;
            }
            if (clsM29286while2 == Double.class) {
                return 3;
            }
            if (clsM29286while2 == Float.class) {
                return 2;
            }
            if (clsM29286while2 == Byte.class) {
                return -3;
            }
            if (clsM29286while2 == Short.class) {
                return -2;
            }
            if (clsM29286while2 == BigDecimal.class) {
                return 4;
            }
            return clsM29286while2 == BigInteger.class ? 1 : 0;
        }
        if (clsM29286while == Double.class) {
            if (clsM29286while2 == Integer.class) {
                return -4;
            }
            if (clsM29286while2 == Long.class) {
                return -3;
            }
            if (clsM29286while2 == Float.class) {
                return -1;
            }
            if (clsM29286while2 == Byte.class) {
                return -6;
            }
            if (clsM29286while2 == Short.class) {
                return -5;
            }
            if (clsM29286while2 == BigDecimal.class) {
                return 1;
            }
            return clsM29286while2 == BigInteger.class ? -2 : 0;
        }
        if (clsM29286while == Float.class) {
            if (clsM29286while2 == Integer.class) {
                return -3;
            }
            if (clsM29286while2 == Long.class) {
                return -2;
            }
            if (clsM29286while2 == Double.class) {
                return 1;
            }
            if (clsM29286while2 == Byte.class) {
                return -5;
            }
            if (clsM29286while2 == Short.class) {
                return -4;
            }
            if (clsM29286while2 == BigDecimal.class) {
                return 2;
            }
            return clsM29286while2 == BigInteger.class ? -1 : 0;
        }
        if (clsM29286while == Byte.class) {
            if (clsM29286while2 == Integer.class) {
                return 2;
            }
            if (clsM29286while2 == Long.class) {
                return 3;
            }
            if (clsM29286while2 == Double.class) {
                return 6;
            }
            if (clsM29286while2 == Float.class) {
                return 5;
            }
            if (clsM29286while2 == Short.class) {
                return 1;
            }
            if (clsM29286while2 == BigDecimal.class) {
                return 7;
            }
            return clsM29286while2 == BigInteger.class ? 4 : 0;
        }
        if (clsM29286while == Short.class) {
            if (clsM29286while2 == Integer.class) {
                return 1;
            }
            if (clsM29286while2 == Long.class) {
                return 2;
            }
            if (clsM29286while2 == Double.class) {
                return 5;
            }
            if (clsM29286while2 == Float.class) {
                return 4;
            }
            if (clsM29286while2 == Byte.class) {
                return -1;
            }
            if (clsM29286while2 == BigDecimal.class) {
                return 6;
            }
            return clsM29286while2 == BigInteger.class ? 3 : 0;
        }
        if (clsM29286while == BigDecimal.class) {
            if (clsM29286while2 == Integer.class) {
                return -5;
            }
            if (clsM29286while2 == Long.class) {
                return -4;
            }
            if (clsM29286while2 == Double.class) {
                return -1;
            }
            if (clsM29286while2 == Float.class) {
                return -2;
            }
            if (clsM29286while2 == Byte.class) {
                return -7;
            }
            if (clsM29286while2 == Short.class) {
                return -6;
            }
            return clsM29286while2 == BigInteger.class ? -3 : 0;
        }
        if (clsM29286while == BigInteger.class) {
            if (clsM29286while2 == Integer.class) {
                return -2;
            }
            if (clsM29286while2 == Long.class) {
                return -1;
            }
            if (clsM29286while2 == Double.class) {
                return 2;
            }
            if (clsM29286while2 == Float.class) {
                return 1;
            }
            if (clsM29286while2 == Byte.class) {
                return -4;
            }
            if (clsM29286while2 == Short.class) {
                return -3;
            }
            if (clsM29286while2 == BigDecimal.class) {
                return 3;
            }
        }
        return 0;
    }
}
