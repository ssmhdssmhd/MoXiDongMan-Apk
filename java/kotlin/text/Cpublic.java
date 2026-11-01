package kotlin.text;

import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.z41;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0010\u000e\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0002\b\u0002\u001a\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0015\u0010\t\u001a\u0004\u0018\u00010\b*\u00020\u0000H\u0007¢\u0006\u0004\b\t\u0010\n\u001a\u001d\u0010\u000b\u001a\u0004\u0018\u00010\b*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\f\u001a\u0015\u0010\r\u001a\u0004\u0018\u00010\u0004*\u00020\u0000H\u0007¢\u0006\u0004\b\r\u0010\u000e\u001a\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u0004*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0015\u0010\u0012\u001a\u0004\u0018\u00010\u0011*\u00020\u0000H\u0007¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u001d\u0010\u0014\u001a\u0004\u0018\u00010\u0011*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0000H\u0000¨\u0006\u0019"}, d2 = {"", "", "i0", "(Ljava/lang/String;)Ljava/lang/Byte;", "", "radix", "j0", "(Ljava/lang/String;I)Ljava/lang/Byte;", "", "o0", "(Ljava/lang/String;)Ljava/lang/Short;", "p0", "(Ljava/lang/String;I)Ljava/lang/Short;", "k0", "(Ljava/lang/String;)Ljava/lang/Integer;", "l0", "(Ljava/lang/String;I)Ljava/lang/Integer;", "", "m0", "(Ljava/lang/String;)Ljava/lang/Long;", "n0", "(Ljava/lang/String;I)Ljava/lang/Long;", "input", "", "h0", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* renamed from: kotlin.text.public, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cpublic extends Cnative {
    @m41
    public static final Void h0(@m41 String input) {
        Csuper.m30700throw(input, "input");
        throw new NumberFormatException("Invalid number format: '" + input + '\'');
    }

    @iz1(version = "1.1")
    @z41
    public static final Byte i0(@m41 String toByteOrNull) {
        Csuper.m30700throw(toByteOrNull, "$this$toByteOrNull");
        return j0(toByteOrNull, 10);
    }

    @iz1(version = "1.1")
    @z41
    public static final Byte j0(@m41 String toByteOrNull, int i) {
        int iIntValue;
        Csuper.m30700throw(toByteOrNull, "$this$toByteOrNull");
        Integer numL0 = l0(toByteOrNull, i);
        if (numL0 == null || (iIntValue = numL0.intValue()) < -128 || iIntValue > 127) {
            return null;
        }
        return Byte.valueOf((byte) iIntValue);
    }

    @iz1(version = "1.1")
    @z41
    public static Integer k0(@m41 String toIntOrNull) {
        Csuper.m30700throw(toIntOrNull, "$this$toIntOrNull");
        return l0(toIntOrNull, 10);
    }

    @iz1(version = "1.1")
    @z41
    public static final Integer l0(@m41 String toIntOrNull, int i) {
        boolean z;
        int i2;
        Csuper.m30700throw(toIntOrNull, "$this$toIntOrNull");
        Cnew.m31199do(i);
        int length = toIntOrNull.length();
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        char cCharAt = toIntOrNull.charAt(0);
        int i4 = -2147483647;
        int i5 = 1;
        if (Csuper.m30692public(cCharAt, 48) >= 0) {
            z = false;
            i5 = 0;
        } else {
            if (length == 1) {
                return null;
            }
            if (cCharAt == '-') {
                i4 = Integer.MIN_VALUE;
                z = true;
            } else {
                if (cCharAt != '+') {
                    return null;
                }
                z = false;
            }
        }
        int i6 = -59652323;
        while (i5 < length) {
            int iM31206if = Cnew.m31206if(toIntOrNull.charAt(i5), i);
            if (iM31206if < 0) {
                return null;
            }
            if ((i3 < i6 && (i6 != -59652323 || i3 < (i6 = i4 / i))) || (i2 = i3 * i) < i4 + iM31206if) {
                return null;
            }
            i3 = i2 - iM31206if;
            i5++;
        }
        return z ? Integer.valueOf(i3) : Integer.valueOf(-i3);
    }

    @iz1(version = "1.1")
    @z41
    public static final Long m0(@m41 String toLongOrNull) {
        Csuper.m30700throw(toLongOrNull, "$this$toLongOrNull");
        return n0(toLongOrNull, 10);
    }

    @iz1(version = "1.1")
    @z41
    public static final Long n0(@m41 String toLongOrNull, int i) {
        Csuper.m30700throw(toLongOrNull, "$this$toLongOrNull");
        Cnew.m31199do(i);
        int length = toLongOrNull.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char cCharAt = toLongOrNull.charAt(0);
        long j = -9223372036854775807L;
        boolean z = true;
        if (Csuper.m30692public(cCharAt, 48) >= 0) {
            z = false;
        } else {
            if (length == 1) {
                return null;
            }
            if (cCharAt == '-') {
                j = Long.MIN_VALUE;
                i2 = 1;
            } else {
                if (cCharAt != '+') {
                    return null;
                }
                i2 = 1;
                z = false;
            }
        }
        long j2 = -256204778801521550L;
        long j3 = 0;
        long j4 = -256204778801521550L;
        while (i2 < length) {
            int iM31206if = Cnew.m31206if(toLongOrNull.charAt(i2), i);
            if (iM31206if < 0) {
                return null;
            }
            if (j3 < j4) {
                if (j4 == j2) {
                    j4 = j / i;
                    if (j3 < j4) {
                    }
                }
                return null;
            }
            long j5 = j3 * i;
            long j6 = iM31206if;
            if (j5 < j + j6) {
                return null;
            }
            j3 = j5 - j6;
            i2++;
            j2 = -256204778801521550L;
        }
        return z ? Long.valueOf(j3) : Long.valueOf(-j3);
    }

    @iz1(version = "1.1")
    @z41
    public static final Short o0(@m41 String toShortOrNull) {
        Csuper.m30700throw(toShortOrNull, "$this$toShortOrNull");
        return p0(toShortOrNull, 10);
    }

    @iz1(version = "1.1")
    @z41
    public static final Short p0(@m41 String toShortOrNull, int i) {
        int iIntValue;
        Csuper.m30700throw(toShortOrNull, "$this$toShortOrNull");
        Integer numL0 = l0(toShortOrNull, i);
        if (numL0 == null || (iIntValue = numL0.intValue()) < -32768 || iIntValue > 32767) {
            return null;
        }
        return Short.valueOf((short) iIntValue);
    }
}
