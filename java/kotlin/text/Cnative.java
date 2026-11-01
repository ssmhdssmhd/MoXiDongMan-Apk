package kotlin.text;

import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.um0;
import android.support.v4.wp0;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0010\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0015\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0003*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0007\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\t\u001a\u00020\u0003*\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\r\u0010\u000b\u001a\u00020\n*\u00020\u0003H\u0087\b\u001a\u0016\u0010\f\u001a\u00020\n*\u0004\u0018\u00010\u0003H\u0087\b¢\u0006\u0004\b\f\u0010\r\u001a\r\u0010\u000e\u001a\u00020\u0000*\u00020\u0003H\u0087\b\u001a\u0015\u0010\u000f\u001a\u00020\u0000*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\r\u0010\u0010\u001a\u00020\u0005*\u00020\u0003H\u0087\b\u001a\u0015\u0010\u0011\u001a\u00020\u0005*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\r\u0010\u0012\u001a\u00020\u0001*\u00020\u0003H\u0087\b\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\r\u0010\u0014\u001a\u00020\b*\u00020\u0003H\u0087\b\u001a\u0015\u0010\u0015\u001a\u00020\b*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\r\u0010\u0017\u001a\u00020\u0016*\u00020\u0003H\u0087\b\u001a\r\u0010\u0019\u001a\u00020\u0018*\u00020\u0003H\u0087\b\u001a\u0015\u0010\u001a\u001a\u0004\u0018\u00010\u0016*\u00020\u0003H\u0007¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u0015\u0010\u001c\u001a\u0004\u0018\u00010\u0018*\u00020\u0003H\u0007¢\u0006\u0004\b\u001c\u0010\u001d\u001a\r\u0010\u001f\u001a\u00020\u001e*\u00020\u0003H\u0087\b\u001a\u0015\u0010 \u001a\u00020\u001e*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u000e\u0010!\u001a\u0004\u0018\u00010\u001e*\u00020\u0003H\u0007\u001a\u0016\u0010\"\u001a\u0004\u0018\u00010\u001e*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\r\u0010$\u001a\u00020#*\u00020\u0003H\u0087\b\u001a\u0015\u0010'\u001a\u00020#*\u00020\u00032\u0006\u0010&\u001a\u00020%H\u0087\b\u001a\u000e\u0010(\u001a\u0004\u0018\u00010#*\u00020\u0003H\u0007\u001a\u0016\u0010)\u001a\u0004\u0018\u00010#*\u00020\u00032\u0006\u0010&\u001a\u00020%H\u0007\u001a4\u0010-\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00192\u0006\u0010*\u001a\u00020\u00032\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u00000+H\u0082\b¢\u0006\u0004\b-\u0010.¨\u0006/"}, d2 = {"", "", "radix", "", "d0", "", "g0", "e0", "", "f0", "", "P", "Q", "(Ljava/lang/String;)Z", "R", ExifInterface.LATITUDE_SOUTH, "b0", "c0", "X", "Y", "Z", "a0", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.LONGITUDE_WEST, "(Ljava/lang/String;)Ljava/lang/Float;", "U", "(Ljava/lang/String;)Ljava/lang/Double;", "Ljava/math/BigInteger;", "L", "M", "N", "O", "Ljava/math/BigDecimal;", "H", "Ljava/math/MathContext;", "mathContext", OptRuntime.GeneratorState.resumptionPoint_TYPE, "J", "K", "str", "Lkotlin/Function1;", "parse", "G", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* renamed from: kotlin.text.native, reason: invalid class name */
/* loaded from: classes.dex */
class Cnative extends Cimport {
    private static final <T> T G(String str, Function1<? super String, ? extends T> function1) {
        try {
            if (Ccatch.f28032do.matches(str)) {
                return function1.invoke(str);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @iz1(version = "1.2")
    @um0
    private static final BigDecimal H(String str) {
        return new BigDecimal(str);
    }

    @iz1(version = "1.2")
    @um0
    private static final BigDecimal I(String str, MathContext mathContext) {
        return new BigDecimal(str, mathContext);
    }

    @iz1(version = "1.2")
    @z41
    public static final BigDecimal J(@m41 String toBigDecimalOrNull) {
        Csuper.m30700throw(toBigDecimalOrNull, "$this$toBigDecimalOrNull");
        try {
            if (Ccatch.f28032do.matches(toBigDecimalOrNull)) {
                return new BigDecimal(toBigDecimalOrNull);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @iz1(version = "1.2")
    @z41
    public static final BigDecimal K(@m41 String toBigDecimalOrNull, @m41 MathContext mathContext) {
        Csuper.m30700throw(toBigDecimalOrNull, "$this$toBigDecimalOrNull");
        Csuper.m30700throw(mathContext, "mathContext");
        try {
            if (Ccatch.f28032do.matches(toBigDecimalOrNull)) {
                return new BigDecimal(toBigDecimalOrNull, mathContext);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @iz1(version = "1.2")
    @um0
    private static final BigInteger L(String str) {
        return new BigInteger(str);
    }

    @iz1(version = "1.2")
    @um0
    private static final BigInteger M(String str, int i) {
        return new BigInteger(str, Cnew.m31199do(i));
    }

    @iz1(version = "1.2")
    @z41
    public static final BigInteger N(@m41 String toBigIntegerOrNull) {
        Csuper.m30700throw(toBigIntegerOrNull, "$this$toBigIntegerOrNull");
        return O(toBigIntegerOrNull, 10);
    }

    @iz1(version = "1.2")
    @z41
    public static final BigInteger O(@m41 String toBigIntegerOrNull, int i) {
        Csuper.m30700throw(toBigIntegerOrNull, "$this$toBigIntegerOrNull");
        Cnew.m31199do(i);
        int length = toBigIntegerOrNull.length();
        if (length == 0) {
            return null;
        }
        if (length != 1) {
            for (int i2 = toBigIntegerOrNull.charAt(0) == '-' ? 1 : 0; i2 < length; i2++) {
                if (Cnew.m31206if(toBigIntegerOrNull.charAt(i2), i) < 0) {
                    return null;
                }
            }
        } else if (Cnew.m31206if(toBigIntegerOrNull.charAt(0), i) < 0) {
            return null;
        }
        return new BigInteger(toBigIntegerOrNull, Cnew.m31199do(i));
    }

    @iz1(version = "1.4")
    @um0
    @wp0(name = "toBooleanNullable")
    private static final boolean Q(String str) {
        return Boolean.parseBoolean(str);
    }

    @um0
    private static final byte R(String str) {
        return Byte.parseByte(str);
    }

    @iz1(version = "1.1")
    @um0
    private static final byte S(String str, int i) {
        return Byte.parseByte(str, Cnew.m31199do(i));
    }

    @um0
    private static final double T(String str) {
        return Double.parseDouble(str);
    }

    @iz1(version = "1.1")
    @z41
    public static final Double U(@m41 String toDoubleOrNull) {
        Csuper.m30700throw(toDoubleOrNull, "$this$toDoubleOrNull");
        try {
            if (Ccatch.f28032do.matches(toDoubleOrNull)) {
                return Double.valueOf(Double.parseDouble(toDoubleOrNull));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @um0
    private static final float V(String str) {
        return Float.parseFloat(str);
    }

    @iz1(version = "1.1")
    @z41
    public static final Float W(@m41 String toFloatOrNull) {
        Csuper.m30700throw(toFloatOrNull, "$this$toFloatOrNull");
        try {
            if (Ccatch.f28032do.matches(toFloatOrNull)) {
                return Float.valueOf(Float.parseFloat(toFloatOrNull));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @um0
    private static final int X(String str) {
        return Integer.parseInt(str);
    }

    @iz1(version = "1.1")
    @um0
    private static final int Y(String str, int i) {
        return Integer.parseInt(str, Cnew.m31199do(i));
    }

    @um0
    private static final long Z(String str) {
        return Long.parseLong(str);
    }

    @iz1(version = "1.1")
    @um0
    private static final long a0(String str, int i) {
        return Long.parseLong(str, Cnew.m31199do(i));
    }

    @um0
    private static final short b0(String str) {
        return Short.parseShort(str);
    }

    @iz1(version = "1.1")
    @um0
    private static final short c0(String str, int i) {
        return Short.parseShort(str, Cnew.m31199do(i));
    }

    @iz1(version = "1.1")
    @um0
    private static final String d0(byte b, int i) {
        String string = Integer.toString(b, Cnew.m31199do(Cnew.m31199do(i)));
        Csuper.m30696super(string, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return string;
    }

    @iz1(version = "1.1")
    @um0
    private static final String e0(int i, int i2) {
        String string = Integer.toString(i, Cnew.m31199do(i2));
        Csuper.m30696super(string, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return string;
    }

    @iz1(version = "1.1")
    @um0
    private static final String f0(long j, int i) {
        String string = Long.toString(j, Cnew.m31199do(i));
        Csuper.m30696super(string, "java.lang.Long.toString(this, checkRadix(radix))");
        return string;
    }

    @iz1(version = "1.1")
    @um0
    private static final String g0(short s, int i) {
        String string = Integer.toString(s, Cnew.m31199do(Cnew.m31199do(i)));
        Csuper.m30696super(string, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return string;
    }
}
