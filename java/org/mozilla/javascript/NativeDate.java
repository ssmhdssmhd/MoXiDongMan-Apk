package org.mozilla.javascript;

import android.support.v4.ay0;
import android.support.v4.hy1;
import android.support.v4.pk0;
import com.google.android.material.datepicker.Cbreak;
import freemarker.core.k;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import net.minidev.json.parser.Cdo;
import org.apache.commons.lang3.Ctry;

/* loaded from: classes3.dex */
final class NativeDate extends IdScriptableObject {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ConstructorId_UTC = -1;
    private static final int ConstructorId_now = -3;
    private static final int ConstructorId_parse = -2;
    private static final Object DATE_TAG = pk0.f5061new;
    private static final double HalfTimeDomain = 8.64E15d;
    private static final double HoursPerDay = 24.0d;
    private static final int Id_constructor = 1;
    private static final int Id_getDate = 17;
    private static final int Id_getDay = 19;
    private static final int Id_getFullYear = 13;
    private static final int Id_getHours = 21;
    private static final int Id_getMilliseconds = 27;
    private static final int Id_getMinutes = 23;
    private static final int Id_getMonth = 15;
    private static final int Id_getSeconds = 25;
    private static final int Id_getTime = 11;
    private static final int Id_getTimezoneOffset = 29;
    private static final int Id_getUTCDate = 18;
    private static final int Id_getUTCDay = 20;
    private static final int Id_getUTCFullYear = 14;
    private static final int Id_getUTCHours = 22;
    private static final int Id_getUTCMilliseconds = 28;
    private static final int Id_getUTCMinutes = 24;
    private static final int Id_getUTCMonth = 16;
    private static final int Id_getUTCSeconds = 26;
    private static final int Id_getYear = 12;
    private static final int Id_setDate = 39;
    private static final int Id_setFullYear = 43;
    private static final int Id_setHours = 37;
    private static final int Id_setMilliseconds = 31;
    private static final int Id_setMinutes = 35;
    private static final int Id_setMonth = 41;
    private static final int Id_setSeconds = 33;
    private static final int Id_setTime = 30;
    private static final int Id_setUTCDate = 40;
    private static final int Id_setUTCFullYear = 44;
    private static final int Id_setUTCHours = 38;
    private static final int Id_setUTCMilliseconds = 32;
    private static final int Id_setUTCMinutes = 36;
    private static final int Id_setUTCMonth = 42;
    private static final int Id_setUTCSeconds = 34;
    private static final int Id_setYear = 45;
    private static final int Id_toDateString = 4;
    private static final int Id_toGMTString = 8;
    private static final int Id_toISOString = 46;
    private static final int Id_toJSON = 47;
    private static final int Id_toLocaleDateString = 7;
    private static final int Id_toLocaleString = 5;
    private static final int Id_toLocaleTimeString = 6;
    private static final int Id_toSource = 9;
    private static final int Id_toString = 2;
    private static final int Id_toTimeString = 3;
    private static final int Id_toUTCString = 8;
    private static final int Id_valueOf = 10;
    private static double LocalTZA = 0.0d;
    private static final int MAXARGS = 7;
    private static final int MAX_PROTOTYPE_ID = 47;
    private static final double MinutesPerDay = 1440.0d;
    private static final double MinutesPerHour = 60.0d;
    private static final double SecondsPerDay = 86400.0d;
    private static final double SecondsPerHour = 3600.0d;
    private static final double SecondsPerMinute = 60.0d;
    private static final String js_NaN_date_str = "Invalid Date";
    private static DateFormat localeDateFormatter = null;
    private static DateFormat localeDateTimeFormatter = null;
    private static DateFormat localeTimeFormatter = null;
    private static final double msPerDay = 8.64E7d;
    private static final double msPerHour = 3600000.0d;
    private static final double msPerMinute = 60000.0d;
    private static final double msPerSecond = 1000.0d;
    private static final long serialVersionUID = -8307438915861678966L;
    private static TimeZone thisTimeZone;
    private static DateFormat timeZoneFormatter;
    private double date;

    private NativeDate() {
        if (thisTimeZone == null) {
            thisTimeZone = TimeZone.getDefault();
            LocalTZA = r0.getRawOffset();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int DateFromTime(double d) {
        int i;
        int iYearFromTime = YearFromTime(d);
        int iDay = ((int) (Day(d) - DayFromYear(iYearFromTime))) - 59;
        int i2 = 31;
        if (iDay < 0) {
            if (iDay < -28) {
                iDay += 31;
            }
            return iDay + 28 + 1;
        }
        if (IsLeapYear(iYearFromTime)) {
            if (iDay == 0) {
                return 29;
            }
            iDay--;
        }
        int i3 = 30;
        switch (Math.round(iDay / 30)) {
            case 0:
                return iDay + 1;
            case 1:
                i3 = 31;
                i = iDay - i2;
                if (i < 0) {
                    i += i3;
                }
                return i + 1;
            case 2:
                i2 = 61;
                i = iDay - i2;
                if (i < 0) {
                }
                return i + 1;
            case 3:
                i2 = 92;
                i3 = 31;
                i = iDay - i2;
                if (i < 0) {
                }
                return i + 1;
            case 4:
                i2 = 122;
                i = iDay - i2;
                if (i < 0) {
                }
                return i + 1;
            case 5:
                i2 = 153;
                i3 = 31;
                i = iDay - i2;
                if (i < 0) {
                }
                return i + 1;
            case 6:
                i2 = 184;
                i3 = 31;
                i = iDay - i2;
                if (i < 0) {
                }
                return i + 1;
            case 7:
                i2 = 214;
                i = iDay - i2;
                if (i < 0) {
                }
                return i + 1;
            case 8:
                i2 = 245;
                i3 = 31;
                i = iDay - i2;
                if (i < 0) {
                }
                return i + 1;
            case 9:
                i2 = 275;
                i = iDay - i2;
                if (i < 0) {
                }
                return i + 1;
            case 10:
                return (iDay - 275) + 1;
            default:
                throw Kit.codeBug();
        }
    }

    private static double Day(double d) {
        return Math.floor(d / msPerDay);
    }

    private static double DayFromMonth(int i, int i2) {
        int i3;
        int i4;
        int i5 = i * 30;
        if (i >= 7) {
            i4 = i / 2;
        } else {
            if (i < 2) {
                i3 = i5 + i;
                if (i >= 2 && IsLeapYear(i2)) {
                    i3++;
                }
                return i3;
            }
            i4 = (i - 1) / 2;
        }
        i3 = i5 + (i4 - 1);
        if (i >= 2) {
            i3++;
        }
        return i3;
    }

    private static double DayFromYear(double d) {
        return ((((d - 1970.0d) * 365.0d) + Math.floor((d - 1969.0d) / 4.0d)) - Math.floor((d - 1901.0d) / 100.0d)) + Math.floor((d - 1601.0d) / 400.0d);
    }

    private static double DaylightSavingTA(double d) {
        if (d < 0.0d) {
            d = MakeDate(MakeDay(EquivalentYear(YearFromTime(d)), MonthFromTime(d), DateFromTime(d)), TimeWithinDay(d));
        }
        if (thisTimeZone.inDaylightTime(new Date((long) d))) {
            return msPerHour;
        }
        return 0.0d;
    }

    private static int DaysInMonth(int i, int i2) {
        return i2 == 2 ? IsLeapYear(i) ? 29 : 28 : i2 >= 8 ? 31 - (i2 & 1) : (i2 & 1) + 30;
    }

    private static double DaysInYear(double d) {
        return (Double.isInfinite(d) || Double.isNaN(d)) ? ScriptRuntime.NaN : IsLeapYear((int) d) ? 366.0d : 365.0d;
    }

    private static int EquivalentYear(int i) {
        int iDayFromYear = (((int) DayFromYear(i)) + 4) % 7;
        if (iDayFromYear < 0) {
            iDayFromYear += 7;
        }
        if (IsLeapYear(i)) {
            switch (iDayFromYear) {
                case 0:
                    return Cdo.f28226native;
                case 1:
                    return 1996;
                case 2:
                    return 1980;
                case 3:
                    return 1992;
                case 4:
                    return 1976;
                case 5:
                    return 1988;
                case 6:
                    return 1972;
            }
        }
        switch (iDayFromYear) {
            case 0:
                return 1978;
            case 1:
                return 1973;
            case 2:
                return 1985;
            case 3:
                return 1986;
            case 4:
                return 1981;
            case 5:
                return 1971;
            case 6:
                return 1977;
        }
        throw Kit.codeBug();
    }

    private static int HourFromTime(double d) {
        double dFloor = Math.floor(d / msPerHour) % HoursPerDay;
        if (dFloor < 0.0d) {
            dFloor += HoursPerDay;
        }
        return (int) dFloor;
    }

    private static boolean IsLeapYear(int i) {
        return i % 4 == 0 && (i % 100 != 0 || i % 400 == 0);
    }

    private static double LocalTime(double d) {
        return LocalTZA + d + DaylightSavingTA(d);
    }

    private static double MakeDate(double d, double d2) {
        return (d * msPerDay) + d2;
    }

    private static double MakeDay(double d, double d2, double d3) {
        double dFloor = d + Math.floor(d2 / 12.0d);
        double d4 = d2 % 12.0d;
        if (d4 < 0.0d) {
            d4 += 12.0d;
        }
        return ((Math.floor(TimeFromYear(dFloor) / msPerDay) + DayFromMonth((int) d4, (int) dFloor)) + d3) - 1.0d;
    }

    private static double MakeTime(double d, double d2, double d3, double d4) {
        return (((((d * 60.0d) + d2) * 60.0d) + d3) * msPerSecond) + d4;
    }

    private static int MinFromTime(double d) {
        double dFloor = Math.floor(d / msPerMinute) % 60.0d;
        if (dFloor < 0.0d) {
            dFloor += 60.0d;
        }
        return (int) dFloor;
    }

    private static int MonthFromTime(double d) {
        int i;
        int iYearFromTime = YearFromTime(d);
        int iDay = ((int) (Day(d) - DayFromYear(iYearFromTime))) - 59;
        if (iDay < 0) {
            return iDay < -28 ? 0 : 1;
        }
        if (IsLeapYear(iYearFromTime)) {
            if (iDay == 0) {
                return 1;
            }
            iDay--;
        }
        int i2 = iDay / 30;
        switch (i2) {
            case 0:
                return 2;
            case 1:
                i = 31;
                break;
            case 2:
                i = 61;
                break;
            case 3:
                i = 92;
                break;
            case 4:
                i = 122;
                break;
            case 5:
                i = 153;
                break;
            case 6:
                i = 184;
                break;
            case 7:
                i = 214;
                break;
            case 8:
                i = 245;
                break;
            case 9:
                i = 275;
                break;
            case 10:
                return 11;
            default:
                throw Kit.codeBug();
        }
        return iDay >= i ? i2 + 2 : i2 + 1;
    }

    private static int SecFromTime(double d) {
        double dFloor = Math.floor(d / msPerSecond) % 60.0d;
        if (dFloor < 0.0d) {
            dFloor += 60.0d;
        }
        return (int) dFloor;
    }

    private static double TimeClip(double d) {
        return (d != d || d == Double.POSITIVE_INFINITY || d == Double.NEGATIVE_INFINITY || Math.abs(d) > HalfTimeDomain) ? ScriptRuntime.NaN : d > 0.0d ? Math.floor(d + 0.0d) : Math.ceil(d + 0.0d);
    }

    private static double TimeFromYear(double d) {
        return DayFromYear(d) * msPerDay;
    }

    private static double TimeWithinDay(double d) {
        double d2 = d % msPerDay;
        return d2 < 0.0d ? d2 + msPerDay : d2;
    }

    private static int WeekDay(double d) {
        double dDay = (Day(d) + 4.0d) % 7.0d;
        if (dDay < 0.0d) {
            dDay += 7.0d;
        }
        return (int) dDay;
    }

    private static int YearFromTime(double d) {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            return 0;
        }
        double dFloor = Math.floor(d / 3.1556952E10d) + 1970.0d;
        double dTimeFromYear = TimeFromYear(dFloor);
        if (dTimeFromYear > d) {
            dFloor -= 1.0d;
        } else if (dTimeFromYear + (DaysInYear(dFloor) * msPerDay) <= d) {
            dFloor += 1.0d;
        }
        return (int) dFloor;
    }

    private static void append0PaddedUint(StringBuilder sb, int i, int i2) throws RuntimeException {
        if (i < 0) {
            Kit.codeBug();
        }
        int i3 = i2 - 1;
        int i4 = 1000000000;
        if (i < 10) {
            i4 = 1;
        } else if (i < 1000000000) {
            i4 = 1;
            while (true) {
                int i5 = i4 * 10;
                if (i < i5) {
                    break;
                }
                i3--;
                i4 = i5;
            }
        } else {
            i3 -= 9;
        }
        while (i3 > 0) {
            sb.append('0');
            i3--;
        }
        while (i4 != 1) {
            sb.append((char) ((i / i4) + 48));
            i %= i4;
            i4 /= 10;
        }
        sb.append((char) (i + 48));
    }

    private static void appendMonthName(StringBuilder sb, int i) {
        int i2 = i * 3;
        for (int i3 = 0; i3 != 3; i3++) {
            sb.append("JanFebMarAprMayJunJulAugSepOctNovDec".charAt(i2 + i3));
        }
    }

    private static void appendWeekDayName(StringBuilder sb, int i) {
        int i2 = i * 3;
        for (int i3 = 0; i3 != 3; i3++) {
            sb.append("SunMonTueWedThuFriSat".charAt(i2 + i3));
        }
    }

    private static String date_format(double d, int i) throws RuntimeException {
        StringBuilder sb = new StringBuilder(60);
        double dLocalTime = LocalTime(d);
        if (i != 3) {
            appendWeekDayName(sb, WeekDay(dLocalTime));
            sb.append(' ');
            appendMonthName(sb, MonthFromTime(dLocalTime));
            sb.append(' ');
            append0PaddedUint(sb, DateFromTime(dLocalTime), 2);
            sb.append(' ');
            int iYearFromTime = YearFromTime(dLocalTime);
            if (iYearFromTime < 0) {
                sb.append(hy1.f2561for);
                iYearFromTime = -iYearFromTime;
            }
            append0PaddedUint(sb, iYearFromTime, 4);
            if (i != 4) {
                sb.append(' ');
            }
        }
        if (i != 4) {
            append0PaddedUint(sb, HourFromTime(dLocalTime), 2);
            sb.append(':');
            append0PaddedUint(sb, MinFromTime(dLocalTime), 2);
            sb.append(':');
            append0PaddedUint(sb, SecFromTime(dLocalTime), 2);
            int iFloor = (int) Math.floor((LocalTZA + DaylightSavingTA(d)) / msPerMinute);
            int i2 = ((iFloor / 60) * 100) + (iFloor % 60);
            if (i2 > 0) {
                sb.append(" GMT+");
            } else {
                sb.append(" GMT-");
                i2 = -i2;
            }
            append0PaddedUint(sb, i2, 4);
            if (timeZoneFormatter == null) {
                timeZoneFormatter = new SimpleDateFormat("zzz");
            }
            if (d < 0.0d) {
                d = MakeDate(MakeDay(EquivalentYear(YearFromTime(dLocalTime)), MonthFromTime(d), DateFromTime(d)), TimeWithinDay(d));
            }
            sb.append(" (");
            Date date = new Date((long) d);
            synchronized (timeZoneFormatter) {
                sb.append(timeZoneFormatter.format(date));
            }
            sb.append(')');
        }
        return sb.toString();
    }

    private static double date_msecFromArgs(Object[] objArr) {
        double[] dArr = new double[7];
        for (int i = 0; i < 7; i++) {
            if (i < objArr.length) {
                double number = ScriptRuntime.toNumber(objArr[i]);
                if (number != number || Double.isInfinite(number)) {
                    return ScriptRuntime.NaN;
                }
                dArr[i] = ScriptRuntime.toInteger(objArr[i]);
            } else if (i == 2) {
                dArr[i] = 1.0d;
            } else {
                dArr[i] = 0.0d;
            }
        }
        if (dArr[0] >= 0.0d && dArr[0] <= 99.0d) {
            dArr[0] = dArr[0] + 1900.0d;
        }
        return date_msecFromDate(dArr[0], dArr[1], dArr[2], dArr[3], dArr[4], dArr[5], dArr[6]);
    }

    private static double date_msecFromDate(double d, double d2, double d3, double d4, double d5, double d6, double d7) {
        return MakeDate(MakeDay(d, d2, d3), MakeTime(d4, d5, d6, d7));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x01d4 A[PHI: r12 r16
      0x01d4: PHI (r12v4 int) = (r12v1 int), (r12v1 int), (r12v1 int), (r12v1 int), (r12v3 int), (r12v1 int), (r12v1 int) binds: [B:159:0x01a7, B:174:0x01cd, B:173:0x01ca, B:169:0x01ba, B:164:0x01b0, B:154:0x019c, B:152:0x0198] A[DONT_GENERATE, DONT_INLINE]
      0x01d4: PHI (r16v8 double) = (r16v1 double), (r16v5 double), (r16v6 double), (r16v1 double), (r16v1 double), (r16v1 double), (r16v1 double) binds: [B:159:0x01a7, B:174:0x01cd, B:173:0x01ca, B:169:0x01ba, B:164:0x01b0, B:154:0x019c, B:152:0x0198] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0155 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static double date_parseString(String str) throws RuntimeException {
        int i;
        int i2;
        int i3;
        double iSOString = parseISOString(str);
        if (iSOString == iSOString) {
            return iSOString;
        }
        int length = str.length();
        int i4 = 0;
        char c = 0;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        int i10 = -1;
        double d = -1.0d;
        boolean z = false;
        while (i4 < length) {
            char cCharAt = str.charAt(i4);
            i4++;
            if (cCharAt <= ' ' || cCharAt == ',' || cCharAt == '-') {
                char c2 = c;
                i = i5;
                if (i4 < length) {
                    char cCharAt2 = str.charAt(i4);
                    if (cCharAt == '-' && '0' <= cCharAt2 && cCharAt2 <= '9') {
                        c = cCharAt;
                        i5 = i;
                    }
                }
                i5 = i;
                c = c2;
            } else {
                int i11 = 1;
                if (cCharAt == '(') {
                    while (i4 < length) {
                        char cCharAt3 = str.charAt(i4);
                        i4++;
                        if (cCharAt3 == '(') {
                            i11++;
                        } else if (cCharAt3 != ')' || i11 - 1 > 0) {
                        }
                    }
                } else if ('0' <= cCharAt && cCharAt <= '9') {
                    int i12 = cCharAt - '0';
                    while (i4 < length) {
                        cCharAt = str.charAt(i4);
                        if ('0' > cCharAt || cCharAt > '9') {
                            if (c != '+' || c == '-') {
                                i3 = i12 >= 24 ? i12 * 60 : ((i12 / 100) * 60) + (i12 % 100);
                                if (c == '+') {
                                    i3 = -i3;
                                }
                                if (d == 0.0d && d != -1.0d) {
                                    return ScriptRuntime.NaN;
                                }
                                d = i3;
                                z = true;
                            } else if (i12 >= 70 || (c == '/' && i7 >= 0 && i8 >= 0 && i6 < 0)) {
                                if (i6 >= 0) {
                                    return ScriptRuntime.NaN;
                                }
                                if (cCharAt > ' ' && cCharAt != ',' && cCharAt != '/' && i4 < length) {
                                    return ScriptRuntime.NaN;
                                }
                                if (i12 < 100) {
                                    i12 += 1900;
                                }
                                i6 = i12;
                            } else if (cCharAt == ':') {
                                if (i5 < 0) {
                                    i5 = i12;
                                } else {
                                    if (i10 >= 0) {
                                        return ScriptRuntime.NaN;
                                    }
                                    i10 = i12;
                                }
                            } else if (cCharAt == '/') {
                                if (i7 < 0) {
                                    i7 = i12 - 1;
                                } else {
                                    if (i8 >= 0) {
                                        return ScriptRuntime.NaN;
                                    }
                                    i8 = i12;
                                }
                            } else {
                                if (i4 < length && cCharAt != ',' && cCharAt > ' ' && cCharAt != '-') {
                                    return ScriptRuntime.NaN;
                                }
                                if (!z || i12 >= 60) {
                                    if (i5 >= 0 && i10 < 0) {
                                        i10 = i12;
                                    } else if (i10 < 0 || i9 >= 0) {
                                        if (i8 >= 0) {
                                            return ScriptRuntime.NaN;
                                        }
                                        i8 = i12;
                                    } else {
                                        i9 = i12;
                                    }
                                } else if (d < 0.0d) {
                                    double d2 = i12;
                                    Double.isNaN(d2);
                                    d -= d2;
                                } else {
                                    double d3 = i12;
                                    Double.isNaN(d3);
                                    d += d3;
                                }
                            }
                            c = 0;
                        } else {
                            i12 = ((i12 * 10) + cCharAt) - 48;
                            i4++;
                        }
                    }
                    if (c != '+') {
                        if (i12 >= 24) {
                        }
                        if (c == '+') {
                        }
                        if (d == 0.0d) {
                        }
                        d = i3;
                        z = true;
                        c = 0;
                    }
                } else if (cCharAt == '/' || cCharAt == ':' || cCharAt == '+' || cCharAt == '-') {
                    i = i5;
                    c = cCharAt;
                    i5 = i;
                } else {
                    int i13 = i4 - 1;
                    int i14 = i4;
                    while (i14 < length) {
                        char cCharAt4 = str.charAt(i14);
                        if (('A' > cCharAt4 || cCharAt4 > 'Z') && ('a' > cCharAt4 || cCharAt4 > 'z')) {
                            i2 = i14 - i13;
                            if (i2 >= 2) {
                                return ScriptRuntime.NaN;
                            }
                            String str2 = "am;pm;monday;tuesday;wednesday;thursday;friday;saturday;sunday;january;february;march;april;may;june;july;august;september;october;november;december;gmt;ut;utc;est;edt;cst;cdt;mst;mdt;pst;pdt;";
                            int i15 = 0;
                            int i16 = 0;
                            while (true) {
                                int iIndexOf = str2.indexOf(59, i16);
                                if (iIndexOf < 0) {
                                    return ScriptRuntime.NaN;
                                }
                                int i17 = i14;
                                int i18 = i15;
                                String str3 = str2;
                                char c3 = c;
                                int i19 = i13;
                                int i20 = i13;
                                int i21 = i5;
                                if (str2.regionMatches(true, i16, str, i19, i2)) {
                                    double d4 = 420.0d;
                                    if (i18 >= 2) {
                                        int i22 = i18 - 2;
                                        if (i22 >= 7) {
                                            int i23 = i22 - 7;
                                            if (i23 >= 12) {
                                                switch (i23 - 12) {
                                                    case 0:
                                                    case 1:
                                                    case 2:
                                                        i5 = i21;
                                                        d = 0.0d;
                                                        break;
                                                    case 3:
                                                    case 6:
                                                        d = 300.0d;
                                                        break;
                                                    case 4:
                                                        d4 = 240.0d;
                                                        d = d4;
                                                        break;
                                                    case 5:
                                                    case 8:
                                                        i5 = i21;
                                                        d = 360.0d;
                                                        break;
                                                    case 7:
                                                    case 10:
                                                        d = d4;
                                                        break;
                                                    case 9:
                                                        d4 = 480.0d;
                                                        d = d4;
                                                        break;
                                                    default:
                                                        Kit.codeBug();
                                                        break;
                                                }
                                                c = c3;
                                                i4 = i17;
                                            } else {
                                                if (i7 >= 0) {
                                                    return ScriptRuntime.NaN;
                                                }
                                                i7 = i23;
                                            }
                                            c = c3;
                                            i4 = i17;
                                        }
                                    } else {
                                        if (i21 > 12 || i21 < 0) {
                                            return ScriptRuntime.NaN;
                                        }
                                        if (i18 == 0) {
                                            i5 = i21 == 12 ? 0 : i21;
                                            c = c3;
                                            i4 = i17;
                                        } else {
                                            if (i21 != 12) {
                                                i5 = i21 + 12;
                                            }
                                            c = c3;
                                            i4 = i17;
                                        }
                                    }
                                } else {
                                    i16 = iIndexOf + 1;
                                    i15 = i18 + 1;
                                    i5 = i21;
                                    c = c3;
                                    i14 = i17;
                                    i13 = i20;
                                    str2 = str3;
                                }
                            }
                        } else {
                            i14++;
                        }
                    }
                    i2 = i14 - i13;
                    if (i2 >= 2) {
                    }
                }
            }
        }
        int i24 = i5;
        if (i6 < 0 || i7 < 0 || i8 < 0) {
            return ScriptRuntime.NaN;
        }
        if (i9 < 0) {
            i9 = 0;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        double dDate_msecFromDate = date_msecFromDate(i6, i7, i8, i24 < 0 ? 0 : i24, i10, i9, 0.0d);
        return d == -1.0d ? internalUTC(dDate_msecFromDate) : dDate_msecFromDate + (d * msPerMinute);
    }

    public static void init(Scriptable scriptable, boolean z) {
        NativeDate nativeDate = new NativeDate();
        nativeDate.date = ScriptRuntime.NaN;
        nativeDate.exportAsJSClass(47, scriptable, z);
    }

    private static double internalUTC(double d) {
        double d2 = LocalTZA;
        return (d - d2) - DaylightSavingTA(d - d2);
    }

    private static Object jsConstructor(Object[] objArr) {
        NativeDate nativeDate = new NativeDate();
        if (objArr.length == 0) {
            nativeDate.date = now();
            return nativeDate;
        }
        if (objArr.length != 1) {
            double dDate_msecFromArgs = date_msecFromArgs(objArr);
            if (!Double.isNaN(dDate_msecFromArgs) && !Double.isInfinite(dDate_msecFromArgs)) {
                dDate_msecFromArgs = TimeClip(internalUTC(dDate_msecFromArgs));
            }
            nativeDate.date = dDate_msecFromArgs;
            return nativeDate;
        }
        Object defaultValue = objArr[0];
        if (defaultValue instanceof NativeDate) {
            nativeDate.date = ((NativeDate) defaultValue).date;
            return nativeDate;
        }
        if (defaultValue instanceof Scriptable) {
            defaultValue = ((Scriptable) defaultValue).getDefaultValue(null);
        }
        nativeDate.date = TimeClip(defaultValue instanceof CharSequence ? date_parseString(defaultValue.toString()) : ScriptRuntime.toNumber(defaultValue));
        return nativeDate;
    }

    private static double jsStaticFunction_UTC(Object[] objArr) {
        return objArr.length == 0 ? ScriptRuntime.NaN : TimeClip(date_msecFromArgs(objArr));
    }

    private static String js_toISOString(double d) throws RuntimeException {
        StringBuilder sb = new StringBuilder(27);
        int iYearFromTime = YearFromTime(d);
        if (iYearFromTime < 0) {
            sb.append(hy1.f2561for);
            append0PaddedUint(sb, -iYearFromTime, 6);
        } else if (iYearFromTime > 9999) {
            append0PaddedUint(sb, iYearFromTime, 6);
        } else {
            append0PaddedUint(sb, iYearFromTime, 4);
        }
        sb.append(hy1.f2561for);
        append0PaddedUint(sb, MonthFromTime(d) + 1, 2);
        sb.append(hy1.f2561for);
        append0PaddedUint(sb, DateFromTime(d), 2);
        sb.append('T');
        append0PaddedUint(sb, HourFromTime(d), 2);
        sb.append(':');
        append0PaddedUint(sb, MinFromTime(d), 2);
        sb.append(':');
        append0PaddedUint(sb, SecFromTime(d), 2);
        sb.append(Ctry.f28883do);
        append0PaddedUint(sb, msFromTime(d), 3);
        sb.append(ay0.f286for);
        return sb.toString();
    }

    private static String js_toUTCString(double d) throws RuntimeException {
        StringBuilder sb = new StringBuilder(60);
        appendWeekDayName(sb, WeekDay(d));
        sb.append(", ");
        append0PaddedUint(sb, DateFromTime(d), 2);
        sb.append(' ');
        appendMonthName(sb, MonthFromTime(d));
        sb.append(' ');
        int iYearFromTime = YearFromTime(d);
        if (iYearFromTime < 0) {
            sb.append(hy1.f2561for);
            iYearFromTime = -iYearFromTime;
        }
        append0PaddedUint(sb, iYearFromTime, 4);
        sb.append(' ');
        append0PaddedUint(sb, HourFromTime(d), 2);
        sb.append(':');
        append0PaddedUint(sb, MinFromTime(d), 2);
        sb.append(':');
        append0PaddedUint(sb, SecFromTime(d), 2);
        sb.append(" GMT");
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static double makeDate(double d, Object[] objArr, int i) {
        boolean z;
        int i2;
        int length;
        int i3;
        boolean z2;
        double dLocalTime;
        double dYearFromTime;
        double dMonthFromTime;
        if (objArr.length == 0) {
            return ScriptRuntime.NaN;
        }
        int i4 = 0;
        switch (i) {
            case 39:
                z = true;
                i2 = 1;
                length = objArr.length >= i2 ? objArr.length : i2;
                double[] dArr = new double[3];
                z2 = false;
                for (i3 = 0; i3 < length; i3++) {
                    double number = ScriptRuntime.toNumber(objArr[i3]);
                    if (number != number || Double.isInfinite(number)) {
                        z2 = true;
                    } else {
                        dArr[i3] = ScriptRuntime.toInteger(number);
                    }
                }
                if (!z2) {
                    return ScriptRuntime.NaN;
                }
                if (d == d) {
                    dLocalTime = z ? LocalTime(d) : d;
                } else {
                    if (i2 < 3) {
                        return ScriptRuntime.NaN;
                    }
                    dLocalTime = 0.0d;
                }
                if (i2 < 3 || length <= 0) {
                    dYearFromTime = YearFromTime(dLocalTime);
                } else {
                    dYearFromTime = dArr[0];
                    i4 = 1;
                }
                if (i2 < 2 || i4 >= length) {
                    dMonthFromTime = MonthFromTime(dLocalTime);
                } else {
                    double d2 = dArr[i4];
                    i4++;
                    dMonthFromTime = d2;
                }
                double dMakeDate = MakeDate(MakeDay(dYearFromTime, dMonthFromTime, (i2 < 1 || i4 >= length) ? DateFromTime(dLocalTime) : dArr[i4]), TimeWithinDay(dLocalTime));
                if (z) {
                    dMakeDate = internalUTC(dMakeDate);
                }
                return TimeClip(dMakeDate);
            case 40:
                z = false;
                i2 = 1;
                if (objArr.length >= i2) {
                }
                double[] dArr2 = new double[3];
                z2 = false;
                while (i3 < length) {
                }
                if (!z2) {
                }
                break;
            case 41:
                z = true;
                i2 = 2;
                if (objArr.length >= i2) {
                }
                double[] dArr22 = new double[3];
                z2 = false;
                while (i3 < length) {
                }
                if (!z2) {
                }
                break;
            case 42:
                z = false;
                i2 = 2;
                if (objArr.length >= i2) {
                }
                double[] dArr222 = new double[3];
                z2 = false;
                while (i3 < length) {
                }
                if (!z2) {
                }
                break;
            case 43:
                z = true;
                i2 = 3;
                if (objArr.length >= i2) {
                }
                double[] dArr2222 = new double[3];
                z2 = false;
                while (i3 < length) {
                }
                if (!z2) {
                }
                break;
            case 44:
                z = false;
                i2 = 3;
                if (objArr.length >= i2) {
                }
                double[] dArr22222 = new double[3];
                z2 = false;
                while (i3 < length) {
                }
                if (!z2) {
                }
                break;
            default:
                throw Kit.codeBug();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static double makeTime(double d, Object[] objArr, int i) {
        boolean z;
        int i2;
        int length;
        int i3;
        boolean z2;
        double dHourFromTime;
        double dMinFromTime;
        double dSecFromTime;
        if (objArr.length == 0) {
            return ScriptRuntime.NaN;
        }
        int i4 = 0;
        switch (i) {
            case 31:
                z = true;
                i2 = 1;
                length = objArr.length >= i2 ? objArr.length : i2;
                double[] dArr = new double[4];
                z2 = false;
                for (i3 = 0; i3 < length; i3++) {
                    double number = ScriptRuntime.toNumber(objArr[i3]);
                    if (number != number || Double.isInfinite(number)) {
                        z2 = true;
                    } else {
                        dArr[i3] = ScriptRuntime.toInteger(number);
                    }
                }
                if (!z2 || d != d) {
                    return ScriptRuntime.NaN;
                }
                double dLocalTime = z ? LocalTime(d) : d;
                if (i2 < 4 || length <= 0) {
                    dHourFromTime = HourFromTime(dLocalTime);
                } else {
                    dHourFromTime = dArr[0];
                    i4 = 1;
                }
                if (i2 < 3 || i4 >= length) {
                    dMinFromTime = MinFromTime(dLocalTime);
                } else {
                    dMinFromTime = dArr[i4];
                    i4++;
                }
                if (i2 < 2 || i4 >= length) {
                    dSecFromTime = SecFromTime(dLocalTime);
                } else {
                    double d2 = dArr[i4];
                    i4++;
                    dSecFromTime = d2;
                }
                double dMakeDate = MakeDate(Day(dLocalTime), MakeTime(dHourFromTime, dMinFromTime, dSecFromTime, (i2 < 1 || i4 >= length) ? msFromTime(dLocalTime) : dArr[i4]));
                if (z) {
                    dMakeDate = internalUTC(dMakeDate);
                }
                return TimeClip(dMakeDate);
            case 32:
                z = false;
                i2 = 1;
                if (objArr.length >= i2) {
                }
                double[] dArr2 = new double[4];
                z2 = false;
                while (i3 < length) {
                }
                if (!z2) {
                    break;
                }
                return ScriptRuntime.NaN;
            case 33:
                z = true;
                i2 = 2;
                if (objArr.length >= i2) {
                }
                double[] dArr22 = new double[4];
                z2 = false;
                while (i3 < length) {
                }
                if (!z2) {
                }
                return ScriptRuntime.NaN;
            case 34:
                z = false;
                i2 = 2;
                if (objArr.length >= i2) {
                }
                double[] dArr222 = new double[4];
                z2 = false;
                while (i3 < length) {
                }
                if (!z2) {
                }
                return ScriptRuntime.NaN;
            case 35:
                z = true;
                i2 = 3;
                if (objArr.length >= i2) {
                }
                double[] dArr2222 = new double[4];
                z2 = false;
                while (i3 < length) {
                }
                if (!z2) {
                }
                return ScriptRuntime.NaN;
            case 36:
                z = false;
                i2 = 3;
                if (objArr.length >= i2) {
                }
                double[] dArr22222 = new double[4];
                z2 = false;
                while (i3 < length) {
                }
                if (!z2) {
                }
                return ScriptRuntime.NaN;
            case 37:
                z = true;
                i2 = 4;
                if (objArr.length >= i2) {
                }
                double[] dArr222222 = new double[4];
                z2 = false;
                while (i3 < length) {
                }
                if (!z2) {
                }
                return ScriptRuntime.NaN;
            case 38:
                z = false;
                i2 = 4;
                if (objArr.length >= i2) {
                }
                double[] dArr2222222 = new double[4];
                z2 = false;
                while (i3 < length) {
                }
                if (!z2) {
                }
                return ScriptRuntime.NaN;
            default:
                throw Kit.codeBug();
        }
    }

    private static int msFromTime(double d) {
        double d2 = d % msPerSecond;
        if (d2 < 0.0d) {
            d2 += msPerSecond;
        }
        return (int) d2;
    }

    private static double now() {
        return System.currentTimeMillis();
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
    
        r0 = -1;
        r13 = -1;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static double parseISOString(String str) {
        int i;
        int i2;
        int i3;
        int i4;
        char c;
        int i5;
        int[] iArr = {1970, 1, 1, 0, 0, 0, 0, -1, -1};
        int length = str.length();
        int i6 = -1;
        if (length == 0) {
            i = 1;
            i2 = 0;
            i3 = 0;
            i4 = 4;
        } else {
            char cCharAt = str.charAt(0);
            if (cCharAt == '+' || cCharAt == '-') {
                i = cCharAt == '-' ? -1 : 1;
                i2 = 0;
                i3 = 1;
                i4 = 6;
            } else {
                if (cCharAt == 'T') {
                    i = 1;
                    i2 = 3;
                    i3 = 1;
                }
                i4 = 4;
            }
        }
        int i7 = 1;
        while (true) {
            if (i2 != i6) {
                int i8 = i3 + (i2 == 0 ? i4 : i2 == 6 ? 3 : 2);
                if (i8 <= length) {
                    int i9 = 0;
                    while (true) {
                        if (i3 >= i8) {
                            iArr[i2] = i9;
                            if (i3 != length) {
                                int i10 = i3 + 1;
                                char cCharAt2 = str.charAt(i3);
                                if (cCharAt2 == 'Z') {
                                    iArr[7] = 0;
                                    iArr[8] = 0;
                                    if (i2 == 4 || i2 == 5 || i2 == 6) {
                                        i3 = i10;
                                    } else {
                                        i3 = i10;
                                    }
                                } else {
                                    switch (i2) {
                                        case 0:
                                        case 1:
                                            c = hy1.f2561for;
                                            if (cCharAt2 != '-') {
                                                if (cCharAt2 != 'T') {
                                                    i2 = -1;
                                                    break;
                                                } else {
                                                    i2 = 3;
                                                    break;
                                                }
                                            } else {
                                                i2++;
                                                break;
                                            }
                                        case 2:
                                            i2 = cCharAt2 == 'T' ? 3 : -1;
                                            c = hy1.f2561for;
                                            break;
                                        case 3:
                                            i2 = cCharAt2 == ':' ? 4 : -1;
                                            c = hy1.f2561for;
                                            break;
                                        case 4:
                                            if (cCharAt2 == ':') {
                                                i2 = 5;
                                            } else if (cCharAt2 == '+' || cCharAt2 == '-') {
                                                i2 = 7;
                                            }
                                            c = hy1.f2561for;
                                            break;
                                        case 5:
                                            if (cCharAt2 == '.') {
                                                i5 = 6;
                                                i2 = i5;
                                                c = hy1.f2561for;
                                                break;
                                            } else {
                                                i5 = (cCharAt2 == '+' || cCharAt2 == '-') ? 7 : -1;
                                                i2 = i5;
                                                c = hy1.f2561for;
                                            }
                                        case 6:
                                            if (cCharAt2 == '+' || cCharAt2 == '-') {
                                            }
                                            i2 = i5;
                                            c = hy1.f2561for;
                                            break;
                                        case 7:
                                            if (cCharAt2 != ':') {
                                                i10--;
                                            }
                                            c = hy1.f2561for;
                                            i2 = 8;
                                            break;
                                        case 8:
                                            c = hy1.f2561for;
                                            i2 = -1;
                                            break;
                                        default:
                                            c = hy1.f2561for;
                                            break;
                                    }
                                    if (i2 == 7) {
                                        i7 = cCharAt2 == c ? -1 : 1;
                                    }
                                    i3 = i10;
                                    i6 = -1;
                                }
                            } else if (i2 == 3 || i2 == 7) {
                                i2 = -1;
                            }
                        } else {
                            char cCharAt3 = str.charAt(i3);
                            if (cCharAt3 >= '0' && cCharAt3 <= '9') {
                                i9 = (i9 * 10) + (cCharAt3 - '0');
                                i3++;
                            }
                        }
                    }
                }
            }
        }
        int i11 = -1;
        if (i2 != i11 && i3 == length) {
            int i12 = iArr[0];
            int i13 = iArr[1];
            int i14 = iArr[2];
            int i15 = iArr[3];
            int i16 = iArr[4];
            int i17 = iArr[5];
            int i18 = iArr[6];
            int i19 = iArr[7];
            int i20 = iArr[8];
            if (i12 <= 275943 && i13 >= 1 && i13 <= 12 && i14 >= 1 && i14 <= DaysInMonth(i12, i13) && i15 <= 24 && ((i15 != 24 || (i16 <= 0 && i17 <= 0 && i18 <= 0)) && i16 <= 59 && i17 <= 59 && i19 <= 23 && i20 <= 59)) {
                double dDate_msecFromDate = date_msecFromDate(i12 * i, i13 - 1, i14, i15, i16, i17, i18);
                if (i19 != -1) {
                    double d = (i19 * 60) + i20;
                    Double.isNaN(d);
                    double d2 = d * msPerMinute;
                    double d3 = i7;
                    Double.isNaN(d3);
                    dDate_msecFromDate -= d2 * d3;
                }
                if (dDate_msecFromDate >= -8.64E15d && dDate_msecFromDate <= HalfTimeDomain) {
                    return dDate_msecFromDate;
                }
            }
        }
        return ScriptRuntime.NaN;
    }

    private static String toLocale_helper(double d, int i) {
        DateFormat dateFormat;
        String str;
        if (i == 5) {
            if (localeDateTimeFormatter == null) {
                localeDateTimeFormatter = DateFormat.getDateTimeInstance(1, 1);
            }
            dateFormat = localeDateTimeFormatter;
        } else if (i == 6) {
            if (localeTimeFormatter == null) {
                localeTimeFormatter = DateFormat.getTimeInstance(1);
            }
            dateFormat = localeTimeFormatter;
        } else {
            if (i != 7) {
                throw new AssertionError();
            }
            if (localeDateFormatter == null) {
                localeDateFormatter = DateFormat.getDateInstance(1);
            }
            dateFormat = localeDateFormatter;
        }
        synchronized (dateFormat) {
            str = dateFormat.format(new Date((long) d));
        }
        return str;
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        double dTimeClip;
        if (!idFunctionObject.hasTag(DATE_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        if (iMethodId == -3) {
            return ScriptRuntime.wrapNumber(now());
        }
        if (iMethodId == -2) {
            return ScriptRuntime.wrapNumber(date_parseString(ScriptRuntime.toString(objArr, 0)));
        }
        if (iMethodId == -1) {
            return ScriptRuntime.wrapNumber(jsStaticFunction_UTC(objArr));
        }
        if (iMethodId == 1) {
            return scriptable2 != null ? date_format(now(), 2) : jsConstructor(objArr);
        }
        if (iMethodId == 47) {
            Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
            Object primitive = ScriptRuntime.toPrimitive(object, ScriptRuntime.NumberClass);
            if (primitive instanceof Number) {
                double dDoubleValue = ((Number) primitive).doubleValue();
                if (dDoubleValue != dDoubleValue || Double.isInfinite(dDoubleValue)) {
                    return null;
                }
            }
            Object property = ScriptableObject.getProperty(object, "toISOString");
            if (property == Scriptable.NOT_FOUND) {
                throw ScriptRuntime.typeError2("msg.function.not.found.in", "toISOString", ScriptRuntime.toString(object));
            }
            if (!(property instanceof Callable)) {
                throw ScriptRuntime.typeError3("msg.isnt.function.in", "toISOString", ScriptRuntime.toString(object), ScriptRuntime.toString(property));
            }
            Object objCall = ((Callable) property).call(context, scriptable, object, ScriptRuntime.emptyArgs);
            if (ScriptRuntime.isPrimitive(objCall)) {
                return objCall;
            }
            throw ScriptRuntime.typeError1("msg.toisostring.must.return.primitive", ScriptRuntime.toString(objCall));
        }
        if (!(scriptable2 instanceof NativeDate)) {
            throw IdScriptableObject.incompatibleCallError(idFunctionObject);
        }
        NativeDate nativeDate = (NativeDate) scriptable2;
        double dYearFromTime = nativeDate.date;
        switch (iMethodId) {
            case 2:
            case 3:
            case 4:
                return dYearFromTime == dYearFromTime ? date_format(dYearFromTime, iMethodId) : js_NaN_date_str;
            case 5:
            case 6:
            case 7:
                return dYearFromTime == dYearFromTime ? toLocale_helper(dYearFromTime, iMethodId) : js_NaN_date_str;
            case 8:
                return dYearFromTime == dYearFromTime ? js_toUTCString(dYearFromTime) : js_NaN_date_str;
            case 9:
                return "(new Date(" + ScriptRuntime.toString(dYearFromTime) + "))";
            case 10:
            case 11:
                return ScriptRuntime.wrapNumber(dYearFromTime);
            case 12:
            case 13:
            case 14:
                if (dYearFromTime == dYearFromTime) {
                    if (iMethodId != 14) {
                        dYearFromTime = LocalTime(dYearFromTime);
                    }
                    dYearFromTime = YearFromTime(dYearFromTime);
                    if (iMethodId == 12) {
                        if (!context.hasFeature(1)) {
                            Double.isNaN(dYearFromTime);
                        } else if (1900.0d <= dYearFromTime && dYearFromTime < 2000.0d) {
                            Double.isNaN(dYearFromTime);
                        }
                        dYearFromTime -= 1900.0d;
                    }
                }
                return ScriptRuntime.wrapNumber(dYearFromTime);
            case 15:
            case 16:
                if (dYearFromTime == dYearFromTime) {
                    if (iMethodId == 15) {
                        dYearFromTime = LocalTime(dYearFromTime);
                    }
                    dYearFromTime = MonthFromTime(dYearFromTime);
                }
                return ScriptRuntime.wrapNumber(dYearFromTime);
            case 17:
            case 18:
                if (dYearFromTime == dYearFromTime) {
                    if (iMethodId == 17) {
                        dYearFromTime = LocalTime(dYearFromTime);
                    }
                    dYearFromTime = DateFromTime(dYearFromTime);
                }
                return ScriptRuntime.wrapNumber(dYearFromTime);
            case 19:
            case 20:
                if (dYearFromTime == dYearFromTime) {
                    if (iMethodId == 19) {
                        dYearFromTime = LocalTime(dYearFromTime);
                    }
                    dYearFromTime = WeekDay(dYearFromTime);
                }
                return ScriptRuntime.wrapNumber(dYearFromTime);
            case 21:
            case 22:
                if (dYearFromTime == dYearFromTime) {
                    if (iMethodId == 21) {
                        dYearFromTime = LocalTime(dYearFromTime);
                    }
                    dYearFromTime = HourFromTime(dYearFromTime);
                }
                return ScriptRuntime.wrapNumber(dYearFromTime);
            case 23:
            case 24:
                if (dYearFromTime == dYearFromTime) {
                    if (iMethodId == 23) {
                        dYearFromTime = LocalTime(dYearFromTime);
                    }
                    dYearFromTime = MinFromTime(dYearFromTime);
                }
                return ScriptRuntime.wrapNumber(dYearFromTime);
            case 25:
            case 26:
                if (dYearFromTime == dYearFromTime) {
                    if (iMethodId == 25) {
                        dYearFromTime = LocalTime(dYearFromTime);
                    }
                    dYearFromTime = SecFromTime(dYearFromTime);
                }
                return ScriptRuntime.wrapNumber(dYearFromTime);
            case 27:
            case 28:
                if (dYearFromTime == dYearFromTime) {
                    if (iMethodId == 27) {
                        dYearFromTime = LocalTime(dYearFromTime);
                    }
                    dYearFromTime = msFromTime(dYearFromTime);
                }
                return ScriptRuntime.wrapNumber(dYearFromTime);
            case 29:
                if (dYearFromTime == dYearFromTime) {
                    dYearFromTime = (dYearFromTime - LocalTime(dYearFromTime)) / msPerMinute;
                }
                return ScriptRuntime.wrapNumber(dYearFromTime);
            case 30:
                double dTimeClip2 = TimeClip(ScriptRuntime.toNumber(objArr, 0));
                nativeDate.date = dTimeClip2;
                return ScriptRuntime.wrapNumber(dTimeClip2);
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
                double dMakeTime = makeTime(dYearFromTime, objArr, iMethodId);
                nativeDate.date = dMakeTime;
                return ScriptRuntime.wrapNumber(dMakeTime);
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
                double dMakeDate = makeDate(dYearFromTime, objArr, iMethodId);
                nativeDate.date = dMakeDate;
                return ScriptRuntime.wrapNumber(dMakeDate);
            case 45:
                double number = ScriptRuntime.toNumber(objArr, 0);
                if (number != number || Double.isInfinite(number)) {
                    dTimeClip = ScriptRuntime.NaN;
                } else {
                    double dLocalTime = dYearFromTime != dYearFromTime ? 0.0d : LocalTime(dYearFromTime);
                    if (number >= 0.0d && number <= 99.0d) {
                        number += 1900.0d;
                    }
                    dTimeClip = TimeClip(internalUTC(MakeDate(MakeDay(number, MonthFromTime(dLocalTime), DateFromTime(dLocalTime)), TimeWithinDay(dLocalTime))));
                }
                nativeDate.date = dTimeClip;
                return ScriptRuntime.wrapNumber(dTimeClip);
            case 46:
                if (dYearFromTime == dYearFromTime) {
                    return js_toISOString(dYearFromTime);
                }
                throw ScriptRuntime.constructError("RangeError", ScriptRuntime.getMessage0("msg.invalid.date"));
            default:
                throw new IllegalArgumentException(String.valueOf(iMethodId));
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        Object obj = DATE_TAG;
        addIdFunctionProperty(idFunctionObject, obj, -3, k.d, 0);
        addIdFunctionProperty(idFunctionObject, obj, -2, "parse", 1);
        addIdFunctionProperty(idFunctionObject, obj, -1, Cbreak.f11820do, 7);
        super.fillConstructorProperties(idFunctionObject);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0219 A[FALL_THROUGH] */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int findPrototypeId(String str) {
        String str2;
        int i = 2;
        switch (str.length()) {
            case 6:
                char cCharAt = str.charAt(0);
                if (cCharAt != 'g') {
                    if (cCharAt != 't') {
                        str2 = null;
                        i = 0;
                        break;
                    } else {
                        i = 47;
                        str2 = "toJSON";
                        break;
                    }
                } else {
                    i = 19;
                    str2 = "getDay";
                    break;
                }
            case 7:
                char cCharAt2 = str.charAt(3);
                if (cCharAt2 == 'D') {
                    char cCharAt3 = str.charAt(0);
                    if (cCharAt3 == 'g') {
                        i = 17;
                        str2 = "getDate";
                        break;
                    } else if (cCharAt3 == 's') {
                        i = 39;
                        str2 = "setDate";
                        break;
                    }
                } else if (cCharAt2 == 'T') {
                    char cCharAt4 = str.charAt(0);
                    if (cCharAt4 == 'g') {
                        i = 11;
                        str2 = "getTime";
                        break;
                    } else if (cCharAt4 == 's') {
                        i = 30;
                        str2 = "setTime";
                        break;
                    }
                } else if (cCharAt2 == 'Y') {
                    char cCharAt5 = str.charAt(0);
                    if (cCharAt5 == 'g') {
                        i = 12;
                        str2 = "getYear";
                        break;
                    } else if (cCharAt5 == 's') {
                        i = 45;
                        str2 = "setYear";
                        break;
                    }
                } else if (cCharAt2 == 'u') {
                    i = 10;
                    str2 = "valueOf";
                    break;
                }
            case 8:
                char cCharAt6 = str.charAt(3);
                if (cCharAt6 == 'H') {
                    char cCharAt7 = str.charAt(0);
                    if (cCharAt7 == 'g') {
                        i = 21;
                        str2 = "getHours";
                        break;
                    } else if (cCharAt7 == 's') {
                        i = 37;
                        str2 = "setHours";
                        break;
                    }
                } else if (cCharAt6 == 'M') {
                    char cCharAt8 = str.charAt(0);
                    if (cCharAt8 == 'g') {
                        i = 15;
                        str2 = "getMonth";
                        break;
                    } else if (cCharAt8 == 's') {
                        i = 41;
                        str2 = "setMonth";
                        break;
                    }
                } else if (cCharAt6 == 'o') {
                    str2 = "toSource";
                    i = 9;
                    break;
                } else if (cCharAt6 == 't') {
                    str2 = "toString";
                    break;
                }
            case 9:
                i = 20;
                str2 = "getUTCDay";
                break;
            case 10:
                char cCharAt9 = str.charAt(3);
                if (cCharAt9 == 'M') {
                    char cCharAt10 = str.charAt(0);
                    if (cCharAt10 == 'g') {
                        i = 23;
                        str2 = "getMinutes";
                        break;
                    } else if (cCharAt10 == 's') {
                        i = 35;
                        str2 = "setMinutes";
                        break;
                    }
                } else if (cCharAt9 == 'S') {
                    char cCharAt11 = str.charAt(0);
                    if (cCharAt11 == 'g') {
                        i = 25;
                        str2 = "getSeconds";
                        break;
                    } else if (cCharAt11 == 's') {
                        i = 33;
                        str2 = "setSeconds";
                        break;
                    }
                } else if (cCharAt9 == 'U') {
                    char cCharAt12 = str.charAt(0);
                    if (cCharAt12 == 'g') {
                        i = 18;
                        str2 = "getUTCDate";
                        break;
                    } else if (cCharAt12 == 's') {
                        i = 40;
                        str2 = "setUTCDate";
                        break;
                    }
                }
            case 11:
                char cCharAt13 = str.charAt(3);
                if (cCharAt13 != 'F') {
                    if (cCharAt13 == 'M') {
                        str2 = "toGMTString";
                    } else if (cCharAt13 == 's') {
                        i = 1;
                        str2 = "constructor";
                        break;
                    } else {
                        switch (cCharAt13) {
                            case 'S':
                                i = 46;
                                str2 = "toISOString";
                                break;
                            case 'T':
                                str2 = "toUTCString";
                                break;
                            case 'U':
                                char cCharAt14 = str.charAt(0);
                                if (cCharAt14 != 'g') {
                                    if (cCharAt14 == 's') {
                                        char cCharAt15 = str.charAt(9);
                                        if (cCharAt15 != 'r') {
                                            if (cCharAt15 == 't') {
                                                i = 42;
                                                str2 = "setUTCMonth";
                                                break;
                                            }
                                        } else {
                                            i = 38;
                                            str2 = "setUTCHours";
                                            break;
                                        }
                                    }
                                } else {
                                    char cCharAt16 = str.charAt(9);
                                    if (cCharAt16 != 'r') {
                                        if (cCharAt16 == 't') {
                                            i = 16;
                                            str2 = "getUTCMonth";
                                            break;
                                        }
                                    } else {
                                        i = 22;
                                        str2 = "getUTCHours";
                                        break;
                                    }
                                }
                        }
                    }
                    i = 8;
                    break;
                } else {
                    char cCharAt17 = str.charAt(0);
                    if (cCharAt17 == 'g') {
                        i = 13;
                        str2 = "getFullYear";
                        break;
                    } else if (cCharAt17 == 's') {
                        i = 43;
                        str2 = "setFullYear";
                        break;
                    }
                }
            case 12:
                char cCharAt18 = str.charAt(2);
                if (cCharAt18 == 'D') {
                    i = 4;
                    str2 = "toDateString";
                    break;
                } else if (cCharAt18 == 'T') {
                    str2 = "toTimeString";
                    i = 3;
                    break;
                }
            case 13:
                char cCharAt19 = str.charAt(0);
                if (cCharAt19 == 'g') {
                    char cCharAt20 = str.charAt(6);
                    if (cCharAt20 == 'M') {
                        i = 24;
                        str2 = "getUTCMinutes";
                        break;
                    } else if (cCharAt20 == 'S') {
                        i = 26;
                        str2 = "getUTCSeconds";
                        break;
                    }
                } else if (cCharAt19 == 's') {
                    char cCharAt21 = str.charAt(6);
                    if (cCharAt21 == 'M') {
                        i = 36;
                        str2 = "setUTCMinutes";
                        break;
                    } else if (cCharAt21 == 'S') {
                        i = 34;
                        str2 = "setUTCSeconds";
                        break;
                    }
                }
            case 14:
                char cCharAt22 = str.charAt(0);
                if (cCharAt22 == 'g') {
                    i = 14;
                    str2 = "getUTCFullYear";
                    break;
                } else if (cCharAt22 == 's') {
                    i = 44;
                    str2 = "setUTCFullYear";
                    break;
                } else if (cCharAt22 == 't') {
                    i = 5;
                    str2 = "toLocaleString";
                    break;
                }
            case 15:
                char cCharAt23 = str.charAt(0);
                if (cCharAt23 == 'g') {
                    i = 27;
                    str2 = "getMilliseconds";
                    break;
                } else if (cCharAt23 == 's') {
                    i = 31;
                    str2 = "setMilliseconds";
                    break;
                }
            case 17:
                i = 29;
                str2 = "getTimezoneOffset";
                break;
            case 18:
                char cCharAt24 = str.charAt(0);
                if (cCharAt24 == 'g') {
                    i = 28;
                    str2 = "getUTCMilliseconds";
                    break;
                } else if (cCharAt24 == 's') {
                    i = 32;
                    str2 = "setUTCMilliseconds";
                    break;
                } else if (cCharAt24 == 't') {
                    char cCharAt25 = str.charAt(8);
                    if (cCharAt25 == 'D') {
                        i = 7;
                        str2 = "toLocaleDateString";
                        break;
                    } else if (cCharAt25 == 'T') {
                        str2 = "toLocaleTimeString";
                        i = 6;
                        break;
                    }
                }
        }
        if (str2 == null || str2 == str || str2.equals(str)) {
            return i;
        }
        return 0;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return pk0.f5061new;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object getDefaultValue(Class<?> cls) {
        if (cls == null) {
            cls = ScriptRuntime.StringClass;
        }
        return super.getDefaultValue(cls);
    }

    public double getJSTimeValue() {
        return this.date;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void initPrototypeId(int i) {
        String str;
        String str2;
        int i2 = 0;
        switch (i) {
            case 1:
                str = "constructor";
                i2 = 7;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 2:
                str = "toString";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 3:
                str = "toTimeString";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 4:
                str = "toDateString";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 5:
                str = "toLocaleString";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 6:
                str = "toLocaleTimeString";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 7:
                str = "toLocaleDateString";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 8:
                str = "toUTCString";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 9:
                str = "toSource";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 10:
                str = "valueOf";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 11:
                str = "getTime";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 12:
                str = "getYear";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 13:
                str = "getFullYear";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 14:
                str = "getUTCFullYear";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 15:
                str = "getMonth";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 16:
                str = "getUTCMonth";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 17:
                str = "getDate";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 18:
                str = "getUTCDate";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 19:
                str = "getDay";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 20:
                str = "getUTCDay";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 21:
                str = "getHours";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 22:
                str = "getUTCHours";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 23:
                str = "getMinutes";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 24:
                str = "getUTCMinutes";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 25:
                str = "getSeconds";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 26:
                str = "getUTCSeconds";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 27:
                str = "getMilliseconds";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 28:
                str = "getUTCMilliseconds";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 29:
                str = "getTimezoneOffset";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 30:
                str = "setTime";
                i2 = 1;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 31:
                str = "setMilliseconds";
                i2 = 1;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 32:
                str = "setUTCMilliseconds";
                i2 = 1;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 33:
                str = "setSeconds";
                i2 = 2;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 34:
                str = "setUTCSeconds";
                i2 = 2;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 35:
                str = "setMinutes";
                i2 = 3;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 36:
                str = "setUTCMinutes";
                i2 = 3;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 37:
                str2 = "setHours";
                str = str2;
                i2 = 4;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 38:
                str2 = "setUTCHours";
                str = str2;
                i2 = 4;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 39:
                str = "setDate";
                i2 = 1;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 40:
                str = "setUTCDate";
                i2 = 1;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 41:
                str = "setMonth";
                i2 = 2;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 42:
                str = "setUTCMonth";
                i2 = 2;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 43:
                str = "setFullYear";
                i2 = 3;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 44:
                str = "setUTCFullYear";
                i2 = 3;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 45:
                str = "setYear";
                i2 = 1;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 46:
                str = "toISOString";
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            case 47:
                str = "toJSON";
                i2 = 1;
                initPrototypeMethod(DATE_TAG, i, str, i2);
                return;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
    }
}
