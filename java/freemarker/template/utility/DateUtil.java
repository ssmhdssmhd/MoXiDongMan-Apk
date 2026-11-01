package freemarker.template.utility;

import android.support.v4.ay0;
import android.support.v4.hy1;
import android.support.v4.ic2;
import android.support.v4.w41;
import com.google.android.material.datepicker.Cbreak;
import java.text.ParseException;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.Ctry;

/* loaded from: classes3.dex */
public class DateUtil {

    /* renamed from: break, reason: not valid java name */
    private static final String f25127break = "(Z|(?:[-+][0-9]{2}:[0-9]{2}))?";

    /* renamed from: catch, reason: not valid java name */
    private static final String f25129catch = "(Z|(?:[-+][0-9]{2}(?:[0-9]{2})?))?";

    /* renamed from: class, reason: not valid java name */
    private static final String f25130class = "(Z|(?:[-+][0-9]{2}(?::[0-9]{2})?))?";

    /* renamed from: const, reason: not valid java name */
    private static final String f25131const = "(-?[0-9]+)-([0-9]{2})-([0-9]{2})";

    /* renamed from: do, reason: not valid java name */
    public static final int f25133do = 4;

    /* renamed from: for, reason: not valid java name */
    public static final int f25138for = 6;

    /* renamed from: goto, reason: not valid java name */
    private static final String f25139goto = "Z|(?:[-+][0-9]{2}(?:[0-9]{2})?)";

    /* renamed from: if, reason: not valid java name */
    public static final int f25140if = 5;

    /* renamed from: import, reason: not valid java name */
    private static final String f25141import = "([0-9]{2})(?::([0-9]{2})(?::([0-9]{2})(?:[\\.,]([0-9]+))?)?)?";

    /* renamed from: new, reason: not valid java name */
    public static final int f25143new = 7;

    /* renamed from: private, reason: not valid java name */
    private static final String f25145private = "Year 0 is not allowed in XML schema dates. BC 1 is -1, AD 1 is 1.";

    /* renamed from: this, reason: not valid java name */
    private static final String f25151this = "Z|(?:[-+][0-9]{2}(?::[0-9]{2})?)";

    /* renamed from: throw, reason: not valid java name */
    private static final String f25152throw = "([0-9]{2}):([0-9]{2}):([0-9]{2})(?:\\.([0-9]+))?";

    /* renamed from: try, reason: not valid java name */
    public static final int f25154try = 8;

    /* renamed from: while, reason: not valid java name */
    private static final String f25155while = "([0-9]{2})(?:([0-9]{2})(?:([0-9]{2})(?:[\\.,]([0-9]+))?)?)?";

    /* renamed from: case, reason: not valid java name */
    public static final TimeZone f25128case = TimeZone.getTimeZone(Cbreak.f11820do);

    /* renamed from: native, reason: not valid java name */
    private static final Pattern f25142native = Pattern.compile("(-?[0-9]+)-([0-9]{2})-([0-9]{2})(Z|(?:[-+][0-9]{2}:[0-9]{2}))?");

    /* renamed from: final, reason: not valid java name */
    private static final String f25136final = "(-?[0-9]{4,}?)([0-9]{2})([0-9]{2})";

    /* renamed from: public, reason: not valid java name */
    private static final Pattern f25146public = Pattern.compile(f25136final);

    /* renamed from: super, reason: not valid java name */
    private static final String f25149super = "(-?[0-9]{4,})-([0-9]{2})-([0-9]{2})";

    /* renamed from: return, reason: not valid java name */
    private static final Pattern f25147return = Pattern.compile(f25149super);

    /* renamed from: static, reason: not valid java name */
    private static final Pattern f25148static = Pattern.compile("([0-9]{2}):([0-9]{2}):([0-9]{2})(?:\\.([0-9]+))?(Z|(?:[-+][0-9]{2}:[0-9]{2}))?");

    /* renamed from: switch, reason: not valid java name */
    private static final Pattern f25150switch = Pattern.compile("([0-9]{2})(?:([0-9]{2})(?:([0-9]{2})(?:[\\.,]([0-9]+))?)?)?(Z|(?:[-+][0-9]{2}(?:[0-9]{2})?))?");

    /* renamed from: throws, reason: not valid java name */
    private static final Pattern f25153throws = Pattern.compile("([0-9]{2})(?::([0-9]{2})(?::([0-9]{2})(?:[\\.,]([0-9]+))?)?)?(Z|(?:[-+][0-9]{2}(?::[0-9]{2})?))?");

    /* renamed from: default, reason: not valid java name */
    private static final Pattern f25132default = Pattern.compile("(-?[0-9]+)-([0-9]{2})-([0-9]{2})T([0-9]{2}):([0-9]{2}):([0-9]{2})(?:\\.([0-9]+))?(Z|(?:[-+][0-9]{2}:[0-9]{2}))?");

    /* renamed from: extends, reason: not valid java name */
    private static final Pattern f25135extends = Pattern.compile("(-?[0-9]{4,}?)([0-9]{2})([0-9]{2})T([0-9]{2})(?:([0-9]{2})(?:([0-9]{2})(?:[\\.,]([0-9]+))?)?)?(Z|(?:[-+][0-9]{2}(?:[0-9]{2})?))?");

    /* renamed from: finally, reason: not valid java name */
    private static final Pattern f25137finally = Pattern.compile("(-?[0-9]{4,})-([0-9]{2})-([0-9]{2})T([0-9]{2})(?::([0-9]{2})(?::([0-9]{2})(?:[\\.,]([0-9]+))?)?)?(Z|(?:[-+][0-9]{2}(?::[0-9]{2})?))?");

    /* renamed from: else, reason: not valid java name */
    private static final String f25134else = "Z|(?:[-+][0-9]{2}:[0-9]{2})";

    /* renamed from: package, reason: not valid java name */
    private static final Pattern f25144package = Pattern.compile(f25134else);

    public interface CalendarFieldsToDateConverter {
        Date calculate(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, TimeZone timeZone);
    }

    public interface DateToISO8601CalendarFactory {
        GregorianCalendar get(TimeZone timeZone, Date date);
    }

    /* renamed from: freemarker.template.utility.DateUtil$do, reason: invalid class name */
    public static final class Cdo extends ParseException {
        public Cdo(String str) {
            super(str, 0);
        }
    }

    /* renamed from: freemarker.template.utility.DateUtil$for, reason: invalid class name */
    public static final class Cfor implements DateToISO8601CalendarFactory {

        /* renamed from: do, reason: not valid java name */
        private GregorianCalendar f25156do;

        /* renamed from: if, reason: not valid java name */
        private TimeZone f25157if;

        @Override // freemarker.template.utility.DateUtil.DateToISO8601CalendarFactory
        public GregorianCalendar get(TimeZone timeZone, Date date) {
            GregorianCalendar gregorianCalendar = this.f25156do;
            if (gregorianCalendar == null) {
                GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone, Locale.US);
                this.f25156do = gregorianCalendar2;
                gregorianCalendar2.setGregorianChange(new Date(Long.MIN_VALUE));
            } else if (this.f25157if != timeZone) {
                gregorianCalendar.setTimeZone(timeZone);
                this.f25157if = timeZone;
            }
            this.f25156do.setTime(date);
            return this.f25156do;
        }
    }

    /* renamed from: freemarker.template.utility.DateUtil$if, reason: invalid class name */
    public static final class Cif implements CalendarFieldsToDateConverter {

        /* renamed from: do, reason: not valid java name */
        private GregorianCalendar f25158do;

        /* renamed from: if, reason: not valid java name */
        private TimeZone f25159if;

        @Override // freemarker.template.utility.DateUtil.CalendarFieldsToDateConverter
        public Date calculate(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, TimeZone timeZone) {
            GregorianCalendar gregorianCalendar = this.f25158do;
            if (gregorianCalendar == null) {
                GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone, Locale.US);
                this.f25158do = gregorianCalendar2;
                gregorianCalendar2.setLenient(false);
                this.f25158do.setGregorianChange(new Date(Long.MIN_VALUE));
            } else if (this.f25159if != timeZone) {
                gregorianCalendar.setTimeZone(timeZone);
                this.f25159if = timeZone;
            }
            this.f25158do.set(0, i);
            this.f25158do.set(1, i2);
            this.f25158do.set(2, i3);
            this.f25158do.set(5, i4);
            this.f25158do.set(11, i5);
            this.f25158do.set(12, i6);
            this.f25158do.set(13, i7);
            this.f25158do.set(14, i8);
            if (z) {
                this.f25158do.add(5, 1);
            }
            return this.f25158do.getTime();
        }
    }

    private DateUtil() {
    }

    /* renamed from: break, reason: not valid java name */
    private static Date m29231break(Matcher matcher, TimeZone timeZone, boolean z, CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws Cdo {
        int i;
        int i2;
        w41.check("defaultTZ", timeZone);
        try {
            int iM29232case = m29232case(matcher.group(1), "year", Integer.MIN_VALUE, Integer.MAX_VALUE);
            if (iM29232case <= 0) {
                int i3 = (-iM29232case) + (!z ? 1 : 0);
                if (i3 == 0) {
                    throw new Cdo(f25145private);
                }
                i = i3;
                i2 = 0;
            } else {
                i = iM29232case;
                i2 = 1;
            }
            int iM29232case2 = m29232case(matcher.group(2), "month", 1, 12) - 1;
            int iM29232case3 = m29232case(matcher.group(3), "day-of-month", 1, 31);
            if (z) {
                timeZone = m29238final(matcher.group(4), timeZone);
            }
            return calendarFieldsToDateConverter.calculate(i2, i, iM29232case2, iM29232case3, 0, 0, 0, 0, false, timeZone);
        } catch (IllegalArgumentException unused) {
            throw new Cdo("Date calculation faliure. Probably the date is formally correct, but refers to an unexistent date (like February 30).");
        }
    }

    /* renamed from: case, reason: not valid java name */
    private static int m29232case(String str, String str2, int i, int i2) throws Cdo, NumberFormatException {
        boolean z;
        if (str == null) {
            throw new Cdo("The " + str2 + " part is missing.");
        }
        int i3 = 0;
        if (str.startsWith("-")) {
            z = true;
            i3 = 1;
        } else {
            z = false;
        }
        while (i3 < str.length() - 1 && str.charAt(i3) == '0') {
            i3++;
        }
        if (i3 != 0) {
            str = str.substring(i3);
        }
        try {
            int i4 = Integer.parseInt(str);
            if (z) {
                i4 = -i4;
            }
            if (i4 < i) {
                throw new Cdo("The " + str2 + " part must be at least " + i + ".");
            }
            if (i4 <= i2) {
                return i4;
            }
            throw new Cdo("The " + str2 + " part can't be more than " + i2 + ".");
        } catch (NumberFormatException unused) {
            throw new Cdo("The " + str2 + " part is a malformed integer.");
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static Date m29233catch(String str, TimeZone timeZone, CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws Cdo {
        Pattern pattern = f25147return;
        Matcher matcher = pattern.matcher(str);
        if (!matcher.matches()) {
            Pattern pattern2 = f25146public;
            Matcher matcher2 = pattern2.matcher(str);
            if (!matcher2.matches()) {
                throw new Cdo("The value didn't match the expected pattern: " + pattern + " or " + pattern2);
            }
            matcher = matcher2;
        }
        return m29231break(matcher, timeZone, false, calendarFieldsToDateConverter);
    }

    /* renamed from: class, reason: not valid java name */
    public static Date m29234class(String str, TimeZone timeZone, CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws Cdo {
        Pattern pattern = f25137finally;
        Matcher matcher = pattern.matcher(str);
        if (!matcher.matches()) {
            Pattern pattern2 = f25135extends;
            Matcher matcher2 = pattern2.matcher(str);
            if (!matcher2.matches()) {
                throw new Cdo("The value (" + str + ") didn't match the expected pattern: " + pattern + " or " + pattern2);
            }
            matcher = matcher2;
        }
        return m29246this(matcher, timeZone, false, calendarFieldsToDateConverter);
    }

    /* renamed from: const, reason: not valid java name */
    public static Date m29235const(String str, TimeZone timeZone, CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws Cdo {
        Pattern pattern = f25153throws;
        Matcher matcher = pattern.matcher(str);
        if (!matcher.matches()) {
            Pattern pattern2 = f25150switch;
            Matcher matcher2 = pattern2.matcher(str);
            if (!matcher2.matches()) {
                throw new Cdo("The value didn't match the expected pattern: " + pattern + " or " + pattern2);
            }
            matcher = matcher2;
        }
        return m29245super(matcher, timeZone, calendarFieldsToDateConverter);
    }

    /* renamed from: do, reason: not valid java name */
    private static int m29236do(char[] cArr, int i, int i2) {
        int i3 = i + 1;
        cArr[i] = (char) ((i2 / 10) + 48);
        int i4 = i3 + 1;
        cArr[i3] = (char) ((i2 % 10) + 48);
        return i4;
    }

    /* renamed from: else, reason: not valid java name */
    private static int m29237else(String str) throws Cdo, NumberFormatException {
        if (str == null) {
            return 0;
        }
        if (str.length() > 3) {
            str = str.substring(0, 3);
        }
        int iM29232case = m29232case(str, "partial-seconds", 0, Integer.MAX_VALUE);
        return str.length() == 1 ? iM29232case * 100 : str.length() == 2 ? iM29232case * 10 : iM29232case;
    }

    /* renamed from: final, reason: not valid java name */
    private static TimeZone m29238final(String str, TimeZone timeZone) throws Cdo, NumberFormatException {
        if (str == null) {
            return timeZone;
        }
        if (str.equals("Z")) {
            return f25128case;
        }
        StringBuilder sb = new StringBuilder(9);
        sb.append("GMT");
        sb.append(str.charAt(0));
        String strSubstring = str.substring(1, 3);
        m29232case(strSubstring, "offset-hours", 0, 23);
        sb.append(strSubstring);
        if (str.length() > 3) {
            int i = str.charAt(3) == ':' ? 4 : 3;
            String strSubstring2 = str.substring(i, i + 2);
            m29232case(strSubstring2, "offset-minutes", 0, 59);
            sb.append(':');
            sb.append(strSubstring2);
        }
        return TimeZone.getTimeZone(sb.toString());
    }

    /* renamed from: for, reason: not valid java name */
    private static String m29239for(Date date, boolean z, boolean z2, boolean z3, int i, TimeZone timeZone, boolean z4, DateToISO8601CalendarFactory dateToISO8601CalendarFactory) {
        Date date2;
        TimeZone timeZone2;
        int i2;
        int iM29236do;
        int i3;
        if (!z4 && !z2 && z3) {
            throw new IllegalArgumentException("ISO 8601:2004 doesn't specify any formats where the offset is shown but the time isn't.");
        }
        if (timeZone == null) {
            timeZone2 = f25128case;
            date2 = date;
        } else {
            date2 = date;
            timeZone2 = timeZone;
        }
        GregorianCalendar gregorianCalendar = dateToISO8601CalendarFactory.get(timeZone2, date2);
        if (z2) {
            i2 = !z ? 18 : 29;
        } else {
            i2 = (z4 ? 6 : 0) + 10;
        }
        char[] cArr = new char[i2];
        char c = hy1.f2561for;
        boolean z5 = true;
        if (z) {
            int i4 = gregorianCalendar.get(1);
            if (i4 > 0 && gregorianCalendar.get(0) == 0) {
                i4 = (-i4) + (!z4 ? 1 : 0);
            }
            int i5 = 4;
            if (i4 < 0 || i4 >= 9999) {
                String strValueOf = String.valueOf(i4);
                char[] cArr2 = new char[(i2 - 4) + strValueOf.length()];
                int i6 = 0;
                i5 = 0;
                while (i6 < strValueOf.length()) {
                    cArr2[i5] = strValueOf.charAt(i6);
                    i6++;
                    i5++;
                }
                cArr = cArr2;
            } else {
                cArr[0] = (char) ((i4 / 1000) + 48);
                cArr[1] = (char) (((i4 % 1000) / 100) + 48);
                cArr[2] = (char) (((i4 % 100) / 10) + 48);
                cArr[3] = (char) ((i4 % 10) + 48);
            }
            cArr[i5] = hy1.f2561for;
            int iM29236do2 = m29236do(cArr, i5 + 1, gregorianCalendar.get(2) + 1);
            cArr[iM29236do2] = hy1.f2561for;
            iM29236do = m29236do(cArr, iM29236do2 + 1, gregorianCalendar.get(5));
            if (z2) {
                cArr[iM29236do] = 'T';
                iM29236do++;
            }
        } else {
            iM29236do = 0;
        }
        if (z2) {
            iM29236do = m29236do(cArr, iM29236do, gregorianCalendar.get(11));
            if (i >= 5) {
                cArr[iM29236do] = ':';
                iM29236do = m29236do(cArr, iM29236do + 1, gregorianCalendar.get(12));
                if (i >= 6) {
                    cArr[iM29236do] = ':';
                    iM29236do = m29236do(cArr, iM29236do + 1, gregorianCalendar.get(13));
                    if (i >= 7) {
                        int i7 = gregorianCalendar.get(14);
                        int i8 = i != 8 ? 0 : 3;
                        if (i7 != 0 || i8 != 0) {
                            if (i7 > 999) {
                                throw new RuntimeException("Calendar.MILLISECOND > 999");
                            }
                            int i9 = iM29236do + 1;
                            cArr[iM29236do] = Ctry.f28883do;
                            while (true) {
                                iM29236do = i9 + 1;
                                cArr[i9] = (char) ((i7 / 100) + 48);
                                i8--;
                                i7 = (i7 % 100) * 10;
                                if (i7 == 0 && i8 <= 0) {
                                    break;
                                }
                                i9 = iM29236do;
                            }
                        }
                    }
                }
            }
        }
        if (z3) {
            if (timeZone2 == f25128case) {
                i3 = iM29236do + 1;
                cArr[iM29236do] = ay0.f286for;
            } else {
                int offset = timeZone2.getOffset(date.getTime());
                if (offset < 0) {
                    offset = -offset;
                    z5 = false;
                }
                int i10 = offset / 1000;
                int i11 = i10 % 60;
                int i12 = i10 / 60;
                int i13 = i12 % 60;
                int i14 = i12 / 60;
                if (i11 == 0 && i13 == 0 && i14 == 0) {
                    i3 = iM29236do + 1;
                    cArr[iM29236do] = ay0.f286for;
                } else {
                    int i15 = iM29236do + 1;
                    if (z5) {
                        c = hy1.f2562if;
                    }
                    cArr[iM29236do] = c;
                    int iM29236do3 = m29236do(cArr, i15, i14);
                    cArr[iM29236do3] = ':';
                    iM29236do = m29236do(cArr, iM29236do3 + 1, i13);
                    if (i11 != 0) {
                        cArr[iM29236do] = ':';
                        iM29236do = m29236do(cArr, iM29236do + 1, i11);
                    }
                }
            }
            iM29236do = i3;
        }
        return new String(cArr, 0, iM29236do);
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean m29240goto(String str) {
        if (str.length() < 3) {
            return false;
        }
        char cCharAt = str.charAt(0);
        char cCharAt2 = str.charAt(1);
        char cCharAt3 = str.charAt(2);
        if (((cCharAt != 'G' && cCharAt != 'g') || ((cCharAt2 != 'M' && cCharAt2 != 'm') || (cCharAt3 != 'T' && cCharAt3 != 't'))) && (((cCharAt != 'U' && cCharAt != 'u') || ((cCharAt2 != 'T' && cCharAt2 != 't') || (cCharAt3 != 'C' && cCharAt3 != 'c'))) && ((cCharAt != 'U' && cCharAt != 'u') || ((cCharAt2 != 'T' && cCharAt2 != 't') || cCharAt3 != '1')))) {
            return false;
        }
        if (str.length() == 3) {
            return true;
        }
        String strSubstring = str.substring(3);
        return strSubstring.startsWith("+") ? strSubstring.equals("+0") || strSubstring.equals("+00") || strSubstring.equals("+00:00") : strSubstring.equals("-0") || strSubstring.equals("-00") || strSubstring.equals("-00:00");
    }

    /* renamed from: if, reason: not valid java name */
    public static String m29241if(Date date, boolean z, boolean z2, boolean z3, int i, TimeZone timeZone, DateToISO8601CalendarFactory dateToISO8601CalendarFactory) {
        return m29239for(date, z, z2, z3, i, timeZone, false, dateToISO8601CalendarFactory);
    }

    /* renamed from: import, reason: not valid java name */
    public static Date m29242import(String str, TimeZone timeZone, CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws Cdo {
        Pattern pattern = f25148static;
        Matcher matcher = pattern.matcher(str);
        if (matcher.matches()) {
            return m29245super(matcher, timeZone, calendarFieldsToDateConverter);
        }
        throw new Cdo("The value didn't match the expected pattern: " + pattern);
    }

    /* renamed from: native, reason: not valid java name */
    public static TimeZone m29243native(String str) throws Cdo {
        Pattern pattern = f25144package;
        if (pattern.matcher(str).matches()) {
            return m29238final(str, null);
        }
        throw new Cdo("The time zone offset didn't match the expected pattern: " + pattern);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m29244new(Date date, boolean z, boolean z2, boolean z3, int i, TimeZone timeZone, DateToISO8601CalendarFactory dateToISO8601CalendarFactory) {
        return m29239for(date, z, z2, z3, i, timeZone, true, dateToISO8601CalendarFactory);
    }

    /* renamed from: super, reason: not valid java name */
    private static Date m29245super(Matcher matcher, TimeZone timeZone, CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws Cdo {
        int i;
        boolean z;
        int i2;
        w41.check("defaultTZ", timeZone);
        try {
            int iM29232case = m29232case(matcher.group(1), "hour-of-day", 0, 24);
            if (iM29232case == 24) {
                z = true;
                i = 0;
            } else {
                i = iM29232case;
                z = false;
            }
            String strGroup = matcher.group(2);
            int iM29232case2 = strGroup != null ? m29232case(strGroup, "minute", 0, 59) : 0;
            String strGroup2 = matcher.group(3);
            int iM29232case3 = strGroup2 != null ? m29232case(strGroup2, "second", 0, 60) : 0;
            int iM29237else = m29237else(matcher.group(4));
            TimeZone timeZoneM29238final = m29238final(matcher.group(5), timeZone);
            if (!z) {
                i2 = 1;
            } else {
                if (iM29232case2 != 0 || iM29232case3 != 0 || iM29237else != 0) {
                    throw new Cdo("Hour 24 is only allowed in the case of midnight.");
                }
                i2 = 2;
            }
            return calendarFieldsToDateConverter.calculate(1, 1970, 0, i2, i, iM29232case2, iM29232case3, iM29237else, false, timeZoneM29238final);
        } catch (IllegalArgumentException unused) {
            throw new Cdo("Unexpected time calculation faliure.");
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static Date m29246this(Matcher matcher, TimeZone timeZone, boolean z, CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws Cdo {
        int i;
        int i2;
        boolean z2;
        w41.check("defaultTZ", timeZone);
        try {
            int iM29232case = m29232case(matcher.group(1), "year", Integer.MIN_VALUE, Integer.MAX_VALUE);
            if (iM29232case <= 0) {
                int i3 = (-iM29232case) + (!z ? 1 : 0);
                if (i3 == 0) {
                    throw new Cdo(f25145private);
                }
                i = i3;
                i2 = 0;
            } else {
                i = iM29232case;
                i2 = 1;
            }
            int iM29232case2 = m29232case(matcher.group(2), "month", 1, 12) - 1;
            int iM29232case3 = m29232case(matcher.group(3), "day-of-month", 1, 31);
            int iM29232case4 = m29232case(matcher.group(4), "hour-of-day", 0, 24);
            if (iM29232case4 == 24) {
                iM29232case4 = 0;
                z2 = true;
            } else {
                z2 = false;
            }
            String strGroup = matcher.group(5);
            int iM29232case5 = strGroup != null ? m29232case(strGroup, "minute", 0, 59) : 0;
            String strGroup2 = matcher.group(6);
            int iM29232case6 = strGroup2 != null ? m29232case(strGroup2, "second", 0, 60) : 0;
            int iM29237else = m29237else(matcher.group(7));
            TimeZone timeZoneM29238final = m29238final(matcher.group(8), timeZone);
            if (z2 && (iM29232case5 != 0 || iM29232case6 != 0 || iM29237else != 0)) {
                throw new Cdo("Hour 24 is only allowed in the case of midnight.");
            }
            return calendarFieldsToDateConverter.calculate(i2, i, iM29232case2, iM29232case3, iM29232case4, iM29232case5, iM29232case6, iM29237else, z2, timeZoneM29238final);
        } catch (IllegalArgumentException unused) {
            throw new Cdo("Date-time calculation faliure. Probably the date-time is formally correct, but refers to an unexistent date-time (like February 30).");
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static Date m29247throw(String str, TimeZone timeZone, CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws Cdo {
        Pattern pattern = f25142native;
        Matcher matcher = pattern.matcher(str);
        if (matcher.matches()) {
            return m29231break(matcher, timeZone, true, calendarFieldsToDateConverter);
        }
        throw new Cdo("The value didn't match the expected pattern: " + pattern);
    }

    /* renamed from: try, reason: not valid java name */
    public static TimeZone m29248try(String str) throws ic2 {
        if (m29240goto(str)) {
            return str.equalsIgnoreCase(Cbreak.f11820do) ? f25128case : TimeZone.getTimeZone(str);
        }
        TimeZone timeZone = TimeZone.getTimeZone(str);
        if (m29240goto(timeZone.getID())) {
            throw new ic2(str);
        }
        return timeZone;
    }

    /* renamed from: while, reason: not valid java name */
    public static Date m29249while(String str, TimeZone timeZone, CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws Cdo {
        Pattern pattern = f25132default;
        Matcher matcher = pattern.matcher(str);
        if (matcher.matches()) {
            return m29246this(matcher, timeZone, true, calendarFieldsToDateConverter);
        }
        throw new Cdo("The value didn't match the expected pattern: " + pattern);
    }
}
