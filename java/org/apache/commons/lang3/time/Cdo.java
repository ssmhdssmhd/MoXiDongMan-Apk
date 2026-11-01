package org.apache.commons.lang3.time;

import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;

/* renamed from: org.apache.commons.lang3.time.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: break, reason: not valid java name */
    public static final int f28817break = 4;

    /* renamed from: case, reason: not valid java name */
    private static final int[][] f28818case = {new int[]{14}, new int[]{13}, new int[]{12}, new int[]{11, 10}, new int[]{5, 5, 9}, new int[]{2, 1001}, new int[]{1}, new int[]{0}};

    /* renamed from: catch, reason: not valid java name */
    public static final int f28819catch = 5;

    /* renamed from: class, reason: not valid java name */
    public static final int f28820class = 6;

    /* renamed from: const, reason: not valid java name */
    private static final int f28821const = 0;

    /* renamed from: do, reason: not valid java name */
    public static final long f28822do = 1000;

    /* renamed from: else, reason: not valid java name */
    public static final int f28823else = 1;

    /* renamed from: final, reason: not valid java name */
    private static final int f28824final = 1;

    /* renamed from: for, reason: not valid java name */
    public static final long f28825for = 3600000;

    /* renamed from: goto, reason: not valid java name */
    public static final int f28826goto = 2;

    /* renamed from: if, reason: not valid java name */
    public static final long f28827if = 60000;

    /* renamed from: new, reason: not valid java name */
    public static final long f28828new = 86400000;

    /* renamed from: super, reason: not valid java name */
    private static final int f28829super = 2;

    /* renamed from: this, reason: not valid java name */
    public static final int f28830this = 3;

    /* renamed from: try, reason: not valid java name */
    public static final int f28831try = 1001;

    /* renamed from: org.apache.commons.lang3.time.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0394do implements Iterator<Calendar> {

        /* renamed from: do, reason: not valid java name */
        private final Calendar f28832do;

        /* renamed from: if, reason: not valid java name */
        private final Calendar f28833if;

        public C0394do(Calendar calendar, Calendar calendar2) {
            this.f28832do = calendar2;
            this.f28833if = calendar;
            calendar.add(5, -1);
        }

        @Override // java.util.Iterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Calendar next() {
            if (this.f28833if.equals(this.f28832do)) {
                throw new NoSuchElementException();
            }
            this.f28833if.add(5, 1);
            return (Calendar) this.f28833if.clone();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f28833if.before(this.f28832do);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static Date a(Object obj, int i) {
        if (obj == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        if (obj instanceof Date) {
            return b((Date) obj, i);
        }
        if (obj instanceof Calendar) {
            return m32658synchronized((Calendar) obj, i).getTime();
        }
        throw new ClassCastException("Could not round " + obj);
    }

    /* renamed from: abstract, reason: not valid java name */
    public static Iterator<?> m32627abstract(Object obj, int i) {
        if (obj == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        if (obj instanceof Date) {
            return m32655strictfp((Date) obj, i);
        }
        if (obj instanceof Calendar) {
            return m32633continue((Calendar) obj, i);
        }
        throw new ClassCastException("Could not iterate based on " + obj);
    }

    public static Date b(Date date, int i) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        m32664volatile(calendar, i, 1);
        return calendar.getTime();
    }

    /* renamed from: break, reason: not valid java name */
    public static Calendar m32628break(Calendar calendar, int i) {
        if (calendar == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar2 = (Calendar) calendar.clone();
        m32664volatile(calendar2, i, 2);
        return calendar2;
    }

    private static Date c(Date date, int i, int i2) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setLenient(false);
        calendar.setTime(date);
        calendar.set(i, i2);
        return calendar.getTime();
    }

    /* renamed from: case, reason: not valid java name */
    public static Date m32629case(Date date, int i) {
        return m32635do(date, 2, i);
    }

    /* renamed from: catch, reason: not valid java name */
    public static Date m32630catch(Object obj, int i) {
        if (obj == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        if (obj instanceof Date) {
            return m32631class((Date) obj, i);
        }
        if (obj instanceof Calendar) {
            return m32628break((Calendar) obj, i).getTime();
        }
        throw new ClassCastException("Could not find ceiling of for type: " + obj.getClass());
    }

    /* renamed from: class, reason: not valid java name */
    public static Date m32631class(Date date, int i) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        m32664volatile(calendar, i, 2);
        return calendar.getTime();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0051  */
    /* renamed from: const, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static long m32632const(Calendar calendar, int i, TimeUnit timeUnit) {
        long jConvert;
        if (calendar == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        long jConvert2 = 0;
        TimeUnit timeUnit2 = TimeUnit.DAYS;
        int i2 = timeUnit == timeUnit2 ? 0 : 1;
        if (i != 1) {
            if (i == 2) {
                jConvert = timeUnit.convert(calendar.get(5) - i2, timeUnit2);
            }
            if (i != 1 || i == 2 || i == 5 || i == 6) {
                jConvert2 += timeUnit.convert(calendar.get(11), TimeUnit.HOURS);
            } else {
                switch (i) {
                    case 11:
                        break;
                    case 12:
                        jConvert2 += timeUnit.convert(calendar.get(13), TimeUnit.SECONDS);
                    case 13:
                        return jConvert2 + timeUnit.convert(calendar.get(14), TimeUnit.MILLISECONDS);
                    case 14:
                        return jConvert2;
                    default:
                        throw new IllegalArgumentException("The fragment " + i + " is not supported");
                }
            }
            jConvert2 += timeUnit.convert(calendar.get(12), TimeUnit.MINUTES);
            jConvert2 += timeUnit.convert(calendar.get(13), TimeUnit.SECONDS);
            return jConvert2 + timeUnit.convert(calendar.get(14), TimeUnit.MILLISECONDS);
        }
        jConvert = timeUnit.convert(calendar.get(6) - i2, timeUnit2);
        jConvert2 = 0 + jConvert;
        if (i != 1) {
            jConvert2 += timeUnit.convert(calendar.get(11), TimeUnit.HOURS);
            jConvert2 += timeUnit.convert(calendar.get(12), TimeUnit.MINUTES);
            jConvert2 += timeUnit.convert(calendar.get(13), TimeUnit.SECONDS);
        }
        return jConvert2 + timeUnit.convert(calendar.get(14), TimeUnit.MILLISECONDS);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007e A[LOOP:0: B:29:0x0078->B:31:0x007e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0088 A[LOOP:1: B:32:0x0082->B:34:0x0088, LOOP_END] */
    /* renamed from: continue, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Iterator<Calendar> m32633continue(Calendar calendar, int i) {
        Calendar calendarL;
        Calendar calendarL2;
        int i2;
        if (calendar == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        int i3 = 2;
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
                calendarL = l(calendar, 5);
                calendarL2 = l(calendar, 5);
                if (i == 2) {
                    i2 = 1;
                } else if (i == 3) {
                    i3 = calendar.get(7);
                    i2 = i3 - 1;
                } else if (i != 4) {
                    i2 = 7;
                    i3 = 1;
                } else {
                    int i4 = calendar.get(7) - 3;
                    i2 = calendar.get(7) + 3;
                    i3 = i4;
                }
                if (i3 < 1) {
                    i3 += 7;
                }
                if (i3 > 7) {
                    i3 -= 7;
                }
                if (i2 < 1) {
                    i2 += 7;
                }
                if (i2 > 7) {
                    i2 -= 7;
                }
                while (calendarL.get(7) != i3) {
                    calendarL.add(5, -1);
                }
                while (calendarL2.get(7) != i2) {
                    calendarL2.add(5, 1);
                }
                return new C0394do(calendarL, calendarL2);
            case 5:
            case 6:
                Calendar calendarL3 = l(calendar, 2);
                Calendar calendar2 = (Calendar) calendarL3.clone();
                calendar2.add(2, 1);
                calendar2.add(5, -1);
                if (i == 6) {
                    calendarL2 = calendar2;
                    calendarL = calendarL3;
                    i2 = 1;
                    if (i3 < 1) {
                    }
                    if (i3 > 7) {
                    }
                    if (i2 < 1) {
                    }
                    if (i2 > 7) {
                    }
                    while (calendarL.get(7) != i3) {
                    }
                    while (calendarL2.get(7) != i2) {
                    }
                    return new C0394do(calendarL, calendarL2);
                }
                calendarL2 = calendar2;
                i3 = 1;
                calendarL = calendarL3;
                i2 = 7;
                if (i3 < 1) {
                }
                if (i3 > 7) {
                }
                if (i2 < 1) {
                }
                if (i2 > 7) {
                }
                while (calendarL.get(7) != i3) {
                }
                while (calendarL2.get(7) != i2) {
                }
                return new C0394do(calendarL, calendarL2);
            default:
                throw new IllegalArgumentException("The range style " + i + " is not valid.");
        }
    }

    public static Date d(Date date, int i) {
        return c(date, 5, i);
    }

    /* renamed from: default, reason: not valid java name */
    public static boolean m32634default(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return calendar.get(0) == calendar2.get(0) && calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
    }

    /* renamed from: do, reason: not valid java name */
    private static Date m32635do(Date date, int i, int i2) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(i, i2);
        return calendar.getTime();
    }

    public static Date e(Date date, int i) {
        return c(date, 11, i);
    }

    /* renamed from: else, reason: not valid java name */
    public static Date m32636else(Date date, int i) {
        return m32635do(date, 13, i);
    }

    /* renamed from: extends, reason: not valid java name */
    public static boolean m32637extends(Date date, Date date2) {
        if (date == null || date2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date2);
        return m32634default(calendar, calendar2);
    }

    public static Date f(Date date, int i) {
        return c(date, 14, i);
    }

    /* renamed from: final, reason: not valid java name */
    private static long m32638final(Date date, int i, TimeUnit timeUnit) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return m32632const(calendar, i, timeUnit);
    }

    /* renamed from: finally, reason: not valid java name */
    public static boolean m32639finally(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return calendar.getTime().getTime() == calendar2.getTime().getTime();
    }

    /* renamed from: for, reason: not valid java name */
    public static Date m32640for(Date date, int i) {
        return m32635do(date, 11, i);
    }

    public static Date g(Date date, int i) {
        return c(date, 12, i);
    }

    /* renamed from: goto, reason: not valid java name */
    public static Date m32641goto(Date date, int i) {
        return m32635do(date, 3, i);
    }

    public static Date h(Date date, int i) {
        return c(date, 2, i);
    }

    public static Date i(Date date, int i) {
        return c(date, 13, i);
    }

    /* renamed from: if, reason: not valid java name */
    public static Date m32642if(Date date, int i) {
        return m32635do(date, 5, i);
    }

    /* renamed from: implements, reason: not valid java name */
    public static Date m32643implements(String str, String... strArr) throws ParseException {
        return m32662transient(str, null, strArr);
    }

    /* renamed from: import, reason: not valid java name */
    public static long m32644import(Date date, int i) {
        return m32638final(date, i, TimeUnit.HOURS);
    }

    /* renamed from: instanceof, reason: not valid java name */
    private static Date m32645instanceof(String str, Locale locale, String[] strArr, boolean z) throws ParseException {
        if (str == null || strArr == null) {
            throw new IllegalArgumentException("Date and Patterns must not be null");
        }
        SimpleDateFormat simpleDateFormat = locale == null ? new SimpleDateFormat() : new SimpleDateFormat("", locale);
        simpleDateFormat.setLenient(z);
        ParsePosition parsePosition = new ParsePosition(0);
        for (String str2 : strArr) {
            simpleDateFormat.applyPattern(str2.endsWith("ZZ") ? str2.substring(0, str2.length() - 1) : str2);
            parsePosition.setIndex(0);
            String strReplaceAll = str2.endsWith("ZZ") ? str.replaceAll("([-+][0-9][0-9]):([0-9][0-9])$", "$1$2") : str;
            Date date = simpleDateFormat.parse(strReplaceAll, parsePosition);
            if (date != null && parsePosition.getIndex() == strReplaceAll.length()) {
                return date;
            }
        }
        throw new ParseException("Unable to parse the date: " + str, -1);
    }

    /* renamed from: interface, reason: not valid java name */
    public static Date m32646interface(String str, Locale locale, String... strArr) throws ParseException {
        return m32645instanceof(str, locale, strArr, true);
    }

    public static Date j(Date date, int i) {
        return c(date, 1, i);
    }

    public static Calendar k(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar;
    }

    public static Calendar l(Calendar calendar, int i) {
        if (calendar == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar2 = (Calendar) calendar.clone();
        m32664volatile(calendar2, i, 0);
        return calendar2;
    }

    public static Date m(Object obj, int i) {
        if (obj == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        if (obj instanceof Date) {
            return n((Date) obj, i);
        }
        if (obj instanceof Calendar) {
            return l((Calendar) obj, i).getTime();
        }
        throw new ClassCastException("Could not truncate " + obj);
    }

    public static Date n(Date date, int i) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        m32664volatile(calendar, i, 0);
        return calendar.getTime();
    }

    /* renamed from: native, reason: not valid java name */
    public static long m32647native(Calendar calendar, int i) {
        return m32632const(calendar, i, TimeUnit.MILLISECONDS);
    }

    /* renamed from: new, reason: not valid java name */
    public static Date m32648new(Date date, int i) {
        return m32635do(date, 14, i);
    }

    public static int o(Calendar calendar, Calendar calendar2, int i) {
        return l(calendar, i).compareTo(l(calendar2, i));
    }

    public static int p(Date date, Date date2, int i) {
        return n(date, i).compareTo(n(date2, i));
    }

    /* renamed from: package, reason: not valid java name */
    public static boolean m32649package(Date date, Date date2) {
        if (date == null || date2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return date.getTime() == date2.getTime();
    }

    /* renamed from: private, reason: not valid java name */
    public static boolean m32650private(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return calendar.get(14) == calendar2.get(14) && calendar.get(13) == calendar2.get(13) && calendar.get(12) == calendar2.get(12) && calendar.get(11) == calendar2.get(11) && calendar.get(6) == calendar2.get(6) && calendar.get(1) == calendar2.get(1) && calendar.get(0) == calendar2.get(0) && calendar.getClass() == calendar2.getClass();
    }

    /* renamed from: protected, reason: not valid java name */
    public static Date m32651protected(String str, String... strArr) throws ParseException {
        return m32646interface(str, null, strArr);
    }

    /* renamed from: public, reason: not valid java name */
    public static long m32652public(Date date, int i) {
        return m32638final(date, i, TimeUnit.MILLISECONDS);
    }

    public static boolean q(Calendar calendar, Calendar calendar2, int i) {
        return o(calendar, calendar2, i) == 0;
    }

    public static boolean r(Date date, Date date2, int i) {
        return p(date, date2, i) == 0;
    }

    /* renamed from: return, reason: not valid java name */
    public static long m32653return(Calendar calendar, int i) {
        return m32632const(calendar, i, TimeUnit.MINUTES);
    }

    /* renamed from: static, reason: not valid java name */
    public static long m32654static(Date date, int i) {
        return m32638final(date, i, TimeUnit.MINUTES);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static Iterator<Calendar> m32655strictfp(Date date, int i) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return m32633continue(calendar, i);
    }

    /* renamed from: super, reason: not valid java name */
    public static long m32656super(Calendar calendar, int i) {
        return m32632const(calendar, i, TimeUnit.DAYS);
    }

    /* renamed from: switch, reason: not valid java name */
    public static long m32657switch(Calendar calendar, int i) {
        return m32632const(calendar, i, TimeUnit.SECONDS);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static Calendar m32658synchronized(Calendar calendar, int i) {
        if (calendar == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar2 = (Calendar) calendar.clone();
        m32664volatile(calendar2, i, 1);
        return calendar2;
    }

    /* renamed from: this, reason: not valid java name */
    public static Date m32659this(Date date, int i) {
        return m32635do(date, 1, i);
    }

    /* renamed from: throw, reason: not valid java name */
    public static long m32660throw(Date date, int i) {
        return m32638final(date, i, TimeUnit.DAYS);
    }

    /* renamed from: throws, reason: not valid java name */
    public static long m32661throws(Date date, int i) {
        return m32638final(date, i, TimeUnit.SECONDS);
    }

    /* renamed from: transient, reason: not valid java name */
    public static Date m32662transient(String str, Locale locale, String... strArr) throws ParseException {
        return m32645instanceof(str, null, strArr, false);
    }

    /* renamed from: try, reason: not valid java name */
    public static Date m32663try(Date date, int i) {
        return m32635do(date, 12, i);
    }

    /* renamed from: volatile, reason: not valid java name */
    private static void m32664volatile(Calendar calendar, int i, int i2) {
        int i3;
        boolean z;
        char c;
        if (calendar.get(1) > 280000000) {
            throw new ArithmeticException("Calendar value too large for accurate calculations");
        }
        if (i == 14) {
            return;
        }
        Date time = calendar.getTime();
        long time2 = time.getTime();
        int i4 = calendar.get(14);
        if (i2 == 0 || i4 < 500) {
            time2 -= i4;
        }
        boolean z2 = i == 13;
        int i5 = calendar.get(13);
        if (!z2 && (i2 == 0 || i5 < 30)) {
            time2 -= i5 * 1000;
        }
        if (i == 12) {
            z2 = true;
        }
        int i6 = calendar.get(12);
        if (!z2 && (i2 == 0 || i6 < 30)) {
            time2 -= i6 * f28827if;
        }
        if (time.getTime() != time2) {
            time.setTime(time2);
            calendar.setTime(time);
        }
        boolean z3 = false;
        for (int[] iArr : f28818case) {
            for (int i7 : iArr) {
                if (i7 == i) {
                    if (i2 == 2 || (i2 == 1 && z3)) {
                        if (i == 1001) {
                            if (calendar.get(5) == 1) {
                                calendar.add(5, 15);
                                return;
                            } else {
                                calendar.add(5, -15);
                                calendar.add(2, 1);
                                return;
                            }
                        }
                        if (i != 9) {
                            calendar.add(iArr[0], 1);
                            return;
                        } else if (calendar.get(11) == 0) {
                            calendar.add(11, 12);
                            return;
                        } else {
                            calendar.add(11, -12);
                            calendar.add(5, 1);
                            return;
                        }
                    }
                    return;
                }
            }
            if (i != 9) {
                if (i == 1001 && iArr[0] == 5) {
                    i3 = calendar.get(5) - 1;
                    if (i3 >= 15) {
                        i3 -= 15;
                    }
                    z3 = i3 > 7;
                    z = true;
                }
                i3 = 0;
                z = false;
            } else {
                if (iArr[0] == 11) {
                    int i8 = calendar.get(11);
                    if (i8 >= 12) {
                        i8 -= 12;
                    }
                    int i9 = i8;
                    z3 = i9 >= 6;
                    i3 = i9;
                    z = true;
                }
                i3 = 0;
                z = false;
            }
            if (z) {
                c = 0;
            } else {
                c = 0;
                int actualMinimum = calendar.getActualMinimum(iArr[0]);
                int actualMaximum = calendar.getActualMaximum(iArr[0]);
                int i10 = calendar.get(iArr[0]) - actualMinimum;
                z3 = i10 > (actualMaximum - actualMinimum) / 2;
                i3 = i10;
            }
            if (i3 != 0) {
                calendar.set(iArr[c], calendar.get(iArr[c]) - i3);
            }
        }
        throw new IllegalArgumentException("The field " + i + " is not supported");
    }

    /* renamed from: while, reason: not valid java name */
    public static long m32665while(Calendar calendar, int i) {
        return m32632const(calendar, i, TimeUnit.HOURS);
    }
}
