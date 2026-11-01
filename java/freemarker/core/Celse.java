package freemarker.core;

import android.support.v4.c81;
import android.support.v4.mc;
import android.support.v4.nl2;
import freemarker.template.TemplateException;
import freemarker.template.utility.Ccatch;
import freemarker.template.utility.Csuper;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.Cclass;

/* renamed from: freemarker.core.else, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Celse {

    /* renamed from: new, reason: not valid java name */
    public static final Cdo f23685new = new Cdo();

    /* renamed from: try, reason: not valid java name */
    public static final Cif f23686try = new Cif();

    /* renamed from: do, reason: not valid java name */
    public int f23687do = 12;

    /* renamed from: if, reason: not valid java name */
    public int f23689if = 12;

    /* renamed from: for, reason: not valid java name */
    public int f23688for = 4;

    /* renamed from: freemarker.core.else$do, reason: invalid class name */
    public static class Cdo extends Celse {
        /* renamed from: super, reason: not valid java name */
        private BigDecimal m27999super(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
            return bigDecimal.divide(bigDecimal2, Math.max(this.f23687do, Math.max(bigDecimal.scale(), bigDecimal2.scale())), this.f23688for);
        }

        @Override // freemarker.core.Celse
        /* renamed from: case */
        public Number mo27990case(Number number, Number number2) {
            return Long.valueOf(number.longValue() % number2.longValue());
        }

        @Override // freemarker.core.Celse
        /* renamed from: catch */
        public Number mo27991catch(Number number, Number number2) {
            return Celse.m27985class(number).subtract(Celse.m27985class(number2));
        }

        @Override // freemarker.core.Celse
        /* renamed from: else */
        public Number mo27992else(Number number, Number number2) {
            BigDecimal bigDecimalMultiply = Celse.m27985class(number).multiply(Celse.m27985class(number2));
            int iScale = bigDecimalMultiply.scale();
            int i = this.f23689if;
            return iScale > i ? bigDecimalMultiply.setScale(i, this.f23688for) : bigDecimalMultiply;
        }

        @Override // freemarker.core.Celse
        /* renamed from: final */
        public Number mo27993final(String str) {
            return Celse.m27986const(str);
        }

        @Override // freemarker.core.Celse
        /* renamed from: for */
        public Number mo27994for(Number number, Number number2) {
            return Celse.m27985class(number).add(Celse.m27985class(number2));
        }

        @Override // freemarker.core.Celse
        /* renamed from: new */
        public int mo27996new(Number number, Number number2) throws ArithmeticException {
            int iM29251do = Ccatch.m29251do(number);
            int iM29251do2 = Ccatch.m29251do(number2);
            if (iM29251do != iM29251do2) {
                if (iM29251do < iM29251do2) {
                    return -1;
                }
                return iM29251do > iM29251do2 ? 1 : 0;
            }
            if (iM29251do == 0 && iM29251do2 == 0) {
                return 0;
            }
            if (number.getClass() == number2.getClass()) {
                if (number instanceof BigDecimal) {
                    return ((BigDecimal) number).compareTo((BigDecimal) number2);
                }
                if (number instanceof Integer) {
                    return ((Integer) number).compareTo((Integer) number2);
                }
                if (number instanceof Long) {
                    return ((Long) number).compareTo((Long) number2);
                }
                if (number instanceof Double) {
                    return ((Double) number).compareTo((Double) number2);
                }
                if (number instanceof Float) {
                    return ((Float) number).compareTo((Float) number2);
                }
                if (number instanceof Byte) {
                    return ((Byte) number).compareTo((Byte) number2);
                }
                if (number instanceof Short) {
                    return ((Short) number).compareTo((Short) number2);
                }
            }
            boolean z = number instanceof Double;
            if (z) {
                double dDoubleValue = number.doubleValue();
                if (Double.isInfinite(dDoubleValue)) {
                    if (Ccatch.m29254if(number2)) {
                        return dDoubleValue == Double.NEGATIVE_INFINITY ? -1 : 1;
                    }
                    if (number2 instanceof Float) {
                        return Double.compare(dDoubleValue, number2.doubleValue());
                    }
                }
            }
            boolean z2 = number instanceof Float;
            if (z2) {
                float fFloatValue = number.floatValue();
                if (Float.isInfinite(fFloatValue)) {
                    if (Ccatch.m29254if(number2)) {
                        return fFloatValue == Float.NEGATIVE_INFINITY ? -1 : 1;
                    }
                    if (number2 instanceof Double) {
                        return Double.compare(fFloatValue, number2.doubleValue());
                    }
                }
            }
            if (number2 instanceof Double) {
                double dDoubleValue2 = number2.doubleValue();
                if (Double.isInfinite(dDoubleValue2)) {
                    if (Ccatch.m29254if(number)) {
                        return dDoubleValue2 == Double.NEGATIVE_INFINITY ? 1 : -1;
                    }
                    if (z2) {
                        return Double.compare(number.doubleValue(), dDoubleValue2);
                    }
                }
            }
            if (number2 instanceof Float) {
                float fFloatValue2 = number2.floatValue();
                if (Float.isInfinite(fFloatValue2)) {
                    if (Ccatch.m29254if(number)) {
                        return fFloatValue2 == Float.NEGATIVE_INFINITY ? 1 : -1;
                    }
                    if (z) {
                        return Double.compare(number.doubleValue(), fFloatValue2);
                    }
                }
            }
            return Celse.m27985class(number).compareTo(Celse.m27985class(number2));
        }

        @Override // freemarker.core.Celse
        /* renamed from: try */
        public Number mo27998try(Number number, Number number2) {
            return m27999super(Celse.m27985class(number), Celse.m27985class(number2));
        }
    }

    /* renamed from: freemarker.core.else$if, reason: invalid class name */
    public static class Cif extends Celse {

        /* renamed from: break, reason: not valid java name */
        private static final int f23690break = 4;

        /* renamed from: case, reason: not valid java name */
        private static final int f23691case = 0;

        /* renamed from: catch, reason: not valid java name */
        private static final int f23692catch = 5;

        /* renamed from: class, reason: not valid java name */
        private static final Map f23693class = m28001super();

        /* renamed from: else, reason: not valid java name */
        private static final int f23694else = 1;

        /* renamed from: goto, reason: not valid java name */
        private static final int f23695goto = 2;

        /* renamed from: this, reason: not valid java name */
        private static final int f23696this = 3;

        /* renamed from: import, reason: not valid java name */
        private static BigInteger m28000import(Number number) {
            return number instanceof BigInteger ? (BigInteger) number : new BigInteger(number.toString());
        }

        /* renamed from: super, reason: not valid java name */
        private static Map m28001super() {
            HashMap map = new HashMap(17);
            map.put(Byte.class, 0);
            map.put(Short.class, 0);
            map.put(Integer.class, 0);
            map.put(Long.class, 1);
            map.put(Float.class, 2);
            map.put(Double.class, 3);
            map.put(BigInteger.class, 4);
            map.put(BigDecimal.class, 5);
            return map;
        }

        /* renamed from: throw, reason: not valid java name */
        private static int m28002throw(Number number) throws TemplateException {
            try {
                return ((Integer) f23693class.get(number.getClass())).intValue();
            } catch (NullPointerException unused) {
                if (number == null) {
                    throw new nl2("The Number object was null.");
                }
                throw new nl2("Unknown number type ", number.getClass().getName());
            }
        }

        /* renamed from: while, reason: not valid java name */
        private static int m28003while(Number number, Number number2) throws TemplateException {
            int iM28002throw = m28002throw(number);
            int iM28002throw2 = m28002throw(number2);
            int i = iM28002throw > iM28002throw2 ? iM28002throw : iM28002throw2;
            if (i == 2) {
                if (iM28002throw >= iM28002throw2) {
                    iM28002throw = iM28002throw2;
                }
                if (iM28002throw == 1) {
                    return 3;
                }
            } else if (i == 4) {
                if (iM28002throw >= iM28002throw2) {
                    iM28002throw = iM28002throw2;
                }
                if (iM28002throw == 3 || iM28002throw == 2) {
                    return 5;
                }
            }
            return i;
        }

        @Override // freemarker.core.Celse
        /* renamed from: case */
        public Number mo27990case(Number number, Number number2) throws TemplateException {
            int iM28003while = m28003while(number, number2);
            if (iM28003while == 0) {
                return Integer.valueOf(number.intValue() % number2.intValue());
            }
            if (iM28003while == 1) {
                return Long.valueOf(number.longValue() % number2.longValue());
            }
            if (iM28003while == 2) {
                return Float.valueOf(number.floatValue() % number2.floatValue());
            }
            if (iM28003while == 3) {
                return Double.valueOf(number.doubleValue() % number2.doubleValue());
            }
            if (iM28003while == 4) {
                return m28000import(number).mod(m28000import(number2));
            }
            if (iM28003while != 5) {
                throw new mc();
            }
            throw new nl2("Can't calculate remainder on BigDecimals");
        }

        @Override // freemarker.core.Celse
        /* renamed from: catch */
        public Number mo27991catch(Number number, Number number2) throws TemplateException {
            int iM28003while = m28003while(number, number2);
            if (iM28003while == 0) {
                int iIntValue = number.intValue();
                int iIntValue2 = number2.intValue();
                int i = iIntValue - iIntValue2;
                return ((i ^ iIntValue) >= 0 || ((iIntValue2 ^ (-1)) ^ i) >= 0) ? Integer.valueOf(i) : Long.valueOf(iIntValue - iIntValue2);
            }
            if (iM28003while == 1) {
                long jLongValue = number.longValue();
                long jLongValue2 = number2.longValue();
                long j = jLongValue - jLongValue2;
                return ((jLongValue ^ j) >= 0 || (((-1) ^ jLongValue2) ^ j) >= 0) ? Long.valueOf(j) : m28000import(number).subtract(m28000import(number2));
            }
            if (iM28003while == 2) {
                return Float.valueOf(number.floatValue() - number2.floatValue());
            }
            if (iM28003while == 3) {
                return Double.valueOf(number.doubleValue() - number2.doubleValue());
            }
            if (iM28003while == 4) {
                return m28000import(number).subtract(m28000import(number2));
            }
            if (iM28003while == 5) {
                return Celse.m27985class(number).subtract(Celse.m27985class(number2));
            }
            throw new Error();
        }

        @Override // freemarker.core.Celse
        /* renamed from: else */
        public Number mo27992else(Number number, Number number2) throws TemplateException {
            int iM28003while = m28003while(number, number2);
            if (iM28003while == 0) {
                int iIntValue = number.intValue();
                int iIntValue2 = number2.intValue();
                int i = iIntValue * iIntValue2;
                return (iIntValue == 0 || i / iIntValue == iIntValue2) ? Integer.valueOf(i) : Long.valueOf(iIntValue * iIntValue2);
            }
            if (iM28003while == 1) {
                long jLongValue = number.longValue();
                long jLongValue2 = number2.longValue();
                long j = jLongValue * jLongValue2;
                return (jLongValue == 0 || j / jLongValue == jLongValue2) ? Long.valueOf(j) : m28000import(number).multiply(m28000import(number2));
            }
            if (iM28003while == 2) {
                return Float.valueOf(number.floatValue() * number2.floatValue());
            }
            if (iM28003while == 3) {
                return Double.valueOf(number.doubleValue() * number2.doubleValue());
            }
            if (iM28003while == 4) {
                return m28000import(number).multiply(m28000import(number2));
            }
            if (iM28003while != 5) {
                throw new Error();
            }
            BigDecimal bigDecimalMultiply = Celse.m27985class(number).multiply(Celse.m27985class(number2));
            int iScale = bigDecimalMultiply.scale();
            int i2 = this.f23689if;
            return iScale > i2 ? bigDecimalMultiply.setScale(i2, this.f23688for) : bigDecimalMultiply;
        }

        @Override // freemarker.core.Celse
        /* renamed from: final */
        public Number mo27993final(String str) {
            Number numberM27986const = Celse.m27986const(str);
            return numberM27986const instanceof BigDecimal ? c81.m791if(numberM27986const) : numberM27986const;
        }

        @Override // freemarker.core.Celse
        /* renamed from: for */
        public Number mo27994for(Number number, Number number2) throws TemplateException {
            int iM28003while = m28003while(number, number2);
            if (iM28003while == 0) {
                int iIntValue = number.intValue();
                int iIntValue2 = number2.intValue();
                int i = iIntValue + iIntValue2;
                return Long.valueOf(((i ^ iIntValue) >= 0 || (i ^ iIntValue2) >= 0) ? Integer.valueOf(i).intValue() : Long.valueOf(iIntValue + iIntValue2).longValue());
            }
            if (iM28003while == 1) {
                long jLongValue = number.longValue();
                long jLongValue2 = number2.longValue();
                long j = jLongValue + jLongValue2;
                return ((jLongValue ^ j) >= 0 || (j ^ jLongValue2) >= 0) ? Long.valueOf(j) : m28000import(number).add(m28000import(number2));
            }
            if (iM28003while == 2) {
                return Float.valueOf(number.floatValue() + number2.floatValue());
            }
            if (iM28003while == 3) {
                return Double.valueOf(number.doubleValue() + number2.doubleValue());
            }
            if (iM28003while == 4) {
                return m28000import(number).add(m28000import(number2));
            }
            if (iM28003while == 5) {
                return Celse.m27985class(number).add(Celse.m27985class(number2));
            }
            throw new Error();
        }

        @Override // freemarker.core.Celse
        /* renamed from: new */
        public int mo27996new(Number number, Number number2) throws TemplateException {
            int iM28003while = m28003while(number, number2);
            if (iM28003while == 0) {
                int iIntValue = number.intValue();
                int iIntValue2 = number2.intValue();
                if (iIntValue < iIntValue2) {
                    return -1;
                }
                return iIntValue == iIntValue2 ? 0 : 1;
            }
            if (iM28003while == 1) {
                long jLongValue = number.longValue();
                long jLongValue2 = number2.longValue();
                if (jLongValue < jLongValue2) {
                    return -1;
                }
                return jLongValue == jLongValue2 ? 0 : 1;
            }
            if (iM28003while == 2) {
                float fFloatValue = number.floatValue();
                float fFloatValue2 = number2.floatValue();
                if (fFloatValue < fFloatValue2) {
                    return -1;
                }
                return fFloatValue == fFloatValue2 ? 0 : 1;
            }
            if (iM28003while != 3) {
                if (iM28003while == 4) {
                    return m28000import(number).compareTo(m28000import(number2));
                }
                if (iM28003while == 5) {
                    return Celse.m27985class(number).compareTo(Celse.m27985class(number2));
                }
                throw new Error();
            }
            double dDoubleValue = number.doubleValue();
            double dDoubleValue2 = number2.doubleValue();
            if (dDoubleValue < dDoubleValue2) {
                return -1;
            }
            return dDoubleValue == dDoubleValue2 ? 0 : 1;
        }

        @Override // freemarker.core.Celse
        /* renamed from: try */
        public Number mo27998try(Number number, Number number2) throws TemplateException {
            int iM28003while = m28003while(number, number2);
            if (iM28003while == 0) {
                int iIntValue = number.intValue();
                int iIntValue2 = number2.intValue();
                if (iIntValue % iIntValue2 == 0) {
                    return Integer.valueOf(iIntValue / iIntValue2);
                }
                double d = iIntValue;
                double d2 = iIntValue2;
                Double.isNaN(d);
                Double.isNaN(d2);
                return Double.valueOf(d / d2);
            }
            if (iM28003while == 1) {
                long jLongValue = number.longValue();
                long jLongValue2 = number2.longValue();
                if (jLongValue % jLongValue2 == 0) {
                    return Long.valueOf(jLongValue / jLongValue2);
                }
                double d3 = jLongValue;
                double d4 = jLongValue2;
                Double.isNaN(d3);
                Double.isNaN(d4);
                return Double.valueOf(d3 / d4);
            }
            if (iM28003while == 2) {
                return Float.valueOf(number.floatValue() / number2.floatValue());
            }
            if (iM28003while == 3) {
                return Double.valueOf(number.doubleValue() / number2.doubleValue());
            }
            if (iM28003while == 4) {
                BigInteger bigIntegerM28000import = m28000import(number);
                BigInteger bigIntegerM28000import2 = m28000import(number2);
                BigInteger[] bigIntegerArrDivideAndRemainder = bigIntegerM28000import.divideAndRemainder(bigIntegerM28000import2);
                return bigIntegerArrDivideAndRemainder[1].equals(BigInteger.ZERO) ? bigIntegerArrDivideAndRemainder[0] : new BigDecimal(bigIntegerM28000import).divide(new BigDecimal(bigIntegerM28000import2), this.f23687do, this.f23688for);
            }
            if (iM28003while != 5) {
                throw new Error();
            }
            BigDecimal bigDecimalM27985class = Celse.m27985class(number);
            BigDecimal bigDecimalM27985class2 = Celse.m27985class(number2);
            return bigDecimalM27985class.divide(bigDecimalM27985class2, Math.max(this.f23687do, Math.max(bigDecimalM27985class.scale(), bigDecimalM27985class2.scale())), this.f23688for);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public static BigDecimal m27985class(Number number) {
        if (number instanceof BigDecimal) {
            return (BigDecimal) number;
        }
        if ((number instanceof Integer) || (number instanceof Long) || (number instanceof Byte) || (number instanceof Short)) {
            return BigDecimal.valueOf(number.longValue());
        }
        if (number instanceof BigInteger) {
            return new BigDecimal((BigInteger) number);
        }
        try {
            return new BigDecimal(number.toString());
        } catch (NumberFormatException unused) {
            if (!Ccatch.m29253for(number)) {
                throw new NumberFormatException("Can't parse this as BigDecimal number: " + Csuper.m29317instanceof(number));
            }
            throw new NumberFormatException("It's impossible to convert an infinte value (" + number.getClass().getSimpleName() + Cclass.f28652do + number + ") to BigDecimal.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public static Number m27986const(String str) {
        if (str.length() > 2) {
            char cCharAt = str.charAt(0);
            if (cCharAt == 'I' && (str.equals("INF") || str.equals("Infinity"))) {
                return Double.valueOf(Double.POSITIVE_INFINITY);
            }
            if (cCharAt == 'N' && str.equals("NaN")) {
                return Double.valueOf(Double.NaN);
            }
            if (cCharAt == '-' && str.charAt(1) == 'I' && (str.equals("-INF") || str.equals("-Infinity"))) {
                return Double.valueOf(Double.NEGATIVE_INFINITY);
            }
        }
        return new BigDecimal(str);
    }

    /* renamed from: break, reason: not valid java name */
    public void m27989break(int i) {
        if (i != 2 && i != 1 && i != 3 && i != 5 && i != 6 && i != 4 && i != 7 && i != 0) {
            throw new IllegalArgumentException("invalid rounding policy");
        }
        this.f23688for = i;
    }

    /* renamed from: case, reason: not valid java name */
    public abstract Number mo27990case(Number number, Number number2) throws TemplateException;

    /* renamed from: catch, reason: not valid java name */
    public abstract Number mo27991catch(Number number, Number number2) throws TemplateException;

    /* renamed from: else, reason: not valid java name */
    public abstract Number mo27992else(Number number, Number number2) throws TemplateException;

    /* renamed from: final, reason: not valid java name */
    public abstract Number mo27993final(String str);

    /* renamed from: for, reason: not valid java name */
    public abstract Number mo27994for(Number number, Number number2) throws TemplateException;

    /* renamed from: goto, reason: not valid java name */
    public void m27995goto(int i) {
        if (i < this.f23687do) {
            throw new IllegalArgumentException("maxScale < minScale");
        }
        this.f23689if = i;
    }

    /* renamed from: new, reason: not valid java name */
    public abstract int mo27996new(Number number, Number number2) throws TemplateException;

    /* renamed from: this, reason: not valid java name */
    public void m27997this(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("minScale < 0");
        }
        this.f23687do = i;
    }

    /* renamed from: try, reason: not valid java name */
    public abstract Number mo27998try(Number number, Number number2) throws TemplateException;
}
