package freemarker.template.utility;

import android.support.v4.sc2;
import java.math.BigDecimal;
import java.math.BigInteger;

/* renamed from: freemarker.template.utility.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch {

    /* renamed from: do, reason: not valid java name */
    private static final BigDecimal f25162do;

    /* renamed from: for, reason: not valid java name */
    private static final BigInteger f25163for;

    /* renamed from: if, reason: not valid java name */
    private static final BigDecimal f25164if;

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f25165new;

    static {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(-2147483648L);
        f25162do = bigDecimalValueOf;
        BigDecimal bigDecimalValueOf2 = BigDecimal.valueOf(2147483647L);
        f25164if = bigDecimalValueOf2;
        f25163for = bigDecimalValueOf.toBigInteger();
        f25165new = bigDecimalValueOf2.toBigInteger();
    }

    private Ccatch() {
    }

    /* renamed from: case, reason: not valid java name */
    private static ArithmeticException m29250case(Number number, Class cls) {
        return new ArithmeticException("Can't convert " + number + " to type " + Cif.m29270break(cls) + " without loss.");
    }

    /* renamed from: do, reason: not valid java name */
    public static int m29251do(Number number) throws ArithmeticException {
        if (number instanceof Integer) {
            int iIntValue = ((Integer) number).intValue();
            if (iIntValue > 0) {
                return 1;
            }
            return iIntValue == 0 ? 0 : -1;
        }
        if (number instanceof BigDecimal) {
            return ((BigDecimal) number).signum();
        }
        if (number instanceof Double) {
            double dDoubleValue = ((Double) number).doubleValue();
            if (dDoubleValue > 0.0d) {
                return 1;
            }
            if (dDoubleValue == 0.0d) {
                return 0;
            }
            if (dDoubleValue < 0.0d) {
                return -1;
            }
            throw new ArithmeticException("The signum of " + dDoubleValue + " is not defined.");
        }
        if (number instanceof Float) {
            float fFloatValue = ((Float) number).floatValue();
            if (fFloatValue > 0.0f) {
                return 1;
            }
            if (fFloatValue == 0.0f) {
                return 0;
            }
            if (fFloatValue < 0.0f) {
                return -1;
            }
            throw new ArithmeticException("The signum of " + fFloatValue + " is not defined.");
        }
        if (number instanceof Long) {
            long jLongValue = ((Long) number).longValue();
            if (jLongValue > 0) {
                return 1;
            }
            return jLongValue == 0 ? 0 : -1;
        }
        if (number instanceof Short) {
            short sShortValue = ((Short) number).shortValue();
            if (sShortValue > 0) {
                return 1;
            }
            return sShortValue == 0 ? 0 : -1;
        }
        if (!(number instanceof Byte)) {
            if (number instanceof BigInteger) {
                return ((BigInteger) number).signum();
            }
            throw new sc2(number.getClass());
        }
        byte bByteValue = ((Byte) number).byteValue();
        if (bByteValue > 0) {
            return 1;
        }
        return bByteValue == 0 ? 0 : -1;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m29252else(Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return number.intValue();
        }
        if (number instanceof Long) {
            long jLongValue = number.longValue();
            int i = (int) jLongValue;
            if (jLongValue == i) {
                return i;
            }
            throw m29250case(number, Integer.class);
        }
        if ((number instanceof Double) || (number instanceof Float)) {
            double dDoubleValue = number.doubleValue();
            if (dDoubleValue % 1.0d != 0.0d || dDoubleValue < -2.147483648E9d || dDoubleValue > 2.147483647E9d) {
                throw m29250case(number, Integer.class);
            }
            return (int) dDoubleValue;
        }
        if (number instanceof BigDecimal) {
            BigDecimal bigDecimal = (BigDecimal) number;
            if (!m29255new(bigDecimal) || bigDecimal.compareTo(f25164if) > 0 || bigDecimal.compareTo(f25162do) < 0) {
                throw m29250case(number, Integer.class);
            }
            return bigDecimal.intValue();
        }
        if (!(number instanceof BigInteger)) {
            throw new sc2(number.getClass());
        }
        BigInteger bigInteger = (BigInteger) number;
        if (bigInteger.compareTo(f25165new) > 0 || bigInteger.compareTo(f25163for) < 0) {
            throw m29250case(number, Integer.class);
        }
        return bigInteger.intValue();
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m29253for(Number number) {
        if (number instanceof Double) {
            return ((Double) number).isInfinite();
        }
        if (number instanceof Float) {
            return ((Float) number).isInfinite();
        }
        if (m29254if(number)) {
            return false;
        }
        throw new sc2(number.getClass());
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m29254if(Number number) {
        return (number instanceof Integer) || (number instanceof BigDecimal) || (number instanceof Long) || (number instanceof Short) || (number instanceof Byte) || (number instanceof BigInteger);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m29255new(BigDecimal bigDecimal) {
        return bigDecimal.scale() <= 0 || bigDecimal.setScale(0, 1).compareTo(bigDecimal) == 0;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m29256try(Number number) {
        if (number instanceof Double) {
            return ((Double) number).isNaN();
        }
        if (number instanceof Float) {
            return ((Float) number).isNaN();
        }
        if (m29254if(number)) {
            return false;
        }
        throw new sc2(number.getClass());
    }
}
