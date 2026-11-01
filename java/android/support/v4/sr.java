package android.support.v4;

import java.text.DateFormatSymbols;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.TimeZone;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public class sr {

    /* renamed from: do, reason: not valid java name */
    public static TreeMap<String, Integer> f6236do = new TreeMap<>(new Cdo());

    /* renamed from: if, reason: not valid java name */
    public static TreeMap<String, Integer> f6238if = new TreeMap<>(new Cdo());

    /* renamed from: for, reason: not valid java name */
    private static HashSet<String> f6237for = new HashSet<>();

    /* renamed from: new, reason: not valid java name */
    public static TreeMap<String, TimeZone> f6239new = new TreeMap<>();

    /* renamed from: android.support.v4.sr$do, reason: invalid class name */
    public static class Cdo implements Comparator<String> {
        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(String str, String str2) {
            return str.compareToIgnoreCase(str2);
        }
    }

    static {
        f6237for.add("MEZ");
        f6237for.add("Uhr");
        f6237for.add("h");
        f6237for.add("pm");
        f6237for.add("PM");
        f6237for.add("AM");
        f6237for.add("o'clock");
        for (String str : TimeZone.getAvailableIDs()) {
            f6239new.put(str, TimeZone.getTimeZone(str));
        }
        for (Locale locale : DateFormatSymbols.getAvailableLocales()) {
            if (!"ja".equals(locale.getLanguage()) && !"ko".equals(locale.getLanguage()) && !"zh".equals(locale.getLanguage())) {
                DateFormatSymbols dateFormatSymbols = DateFormatSymbols.getInstance(locale);
                String[] months = dateFormatSymbols.getMonths();
                for (int i = 0; i < months.length; i++) {
                    if (months[i].length() != 0) {
                        m7570new(f6236do, months[i], Integer.valueOf(i));
                    }
                }
                String[] shortMonths = dateFormatSymbols.getShortMonths();
                for (int i2 = 0; i2 < shortMonths.length; i2++) {
                    String str2 = shortMonths[i2];
                    if (str2.length() != 0 && !Character.isDigit(str2.charAt(str2.length() - 1))) {
                        m7570new(f6236do, shortMonths[i2], Integer.valueOf(i2));
                        m7570new(f6236do, shortMonths[i2].replace(".", ""), Integer.valueOf(i2));
                    }
                }
                String[] weekdays = dateFormatSymbols.getWeekdays();
                for (int i3 = 0; i3 < weekdays.length; i3++) {
                    String str3 = weekdays[i3];
                    if (str3.length() != 0) {
                        m7570new(f6238if, str3, Integer.valueOf(i3));
                        m7570new(f6238if, str3.replace(".", ""), Integer.valueOf(i3));
                    }
                }
                String[] shortWeekdays = dateFormatSymbols.getShortWeekdays();
                for (int i4 = 0; i4 < shortWeekdays.length; i4++) {
                    String str4 = shortWeekdays[i4];
                    if (str4.length() != 0) {
                        m7570new(f6238if, str4, Integer.valueOf(i4));
                        m7570new(f6238if, str4.replace(".", ""), Integer.valueOf(i4));
                    }
                }
            }
        }
    }

    /* renamed from: break, reason: not valid java name */
    private static Integer m7562break(String str) {
        if (Character.isDigit(str.charAt(0))) {
            return Integer.valueOf(Integer.parseInt(str) - 1);
        }
        Integer num = f6236do.get(str);
        if (num != null) {
            return Integer.valueOf(num.intValue());
        }
        throw new NullPointerException("can not parse " + str + " as month");
    }

    /* renamed from: case, reason: not valid java name */
    private static Date m7563case(StringTokenizer stringTokenizer, String str) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(2000, 0, 0, 0, 0, 0);
        Integer num = f6236do.get(str);
        if (num == null) {
            throw new NullPointerException("can not parse " + str + " as month");
        }
        gregorianCalendar.set(2, num.intValue());
        if (!stringTokenizer.hasMoreTokens()) {
            return null;
        }
        gregorianCalendar.set(5, Integer.parseInt(stringTokenizer.nextToken()));
        if (!stringTokenizer.hasMoreTokens()) {
            return null;
        }
        String strNextToken = stringTokenizer.nextToken();
        if (Character.isLetter(strNextToken.charAt(0))) {
            if (!stringTokenizer.hasMoreTokens()) {
                return null;
            }
            strNextToken = stringTokenizer.nextToken();
        }
        if (strNextToken.length() == 4) {
            gregorianCalendar.set(1, m7571this(strNextToken));
        } else if (strNextToken.length() == 2) {
            return m7569if(stringTokenizer, gregorianCalendar, strNextToken);
        }
        return m7565do(stringTokenizer, gregorianCalendar, null);
    }

    /* renamed from: catch, reason: not valid java name */
    private static String m7564catch(StringTokenizer stringTokenizer, String str, Calendar calendar) {
        while (true) {
            TimeZone timeZone = f6239new.get(str);
            if (timeZone != null) {
                calendar.setTimeZone(timeZone);
                if (!stringTokenizer.hasMoreTokens()) {
                    return null;
                }
                str = stringTokenizer.nextToken();
            } else {
                if (!f6237for.contains(str)) {
                    return str;
                }
                if (str.equalsIgnoreCase("pm")) {
                    calendar.add(9, 1);
                }
                if (str.equalsIgnoreCase("am")) {
                    calendar.add(9, 0);
                }
                if (!stringTokenizer.hasMoreTokens()) {
                    return null;
                }
                str = stringTokenizer.nextToken();
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static Date m7565do(StringTokenizer stringTokenizer, Calendar calendar, String str) {
        if (str == null) {
            if (!stringTokenizer.hasMoreTokens()) {
                return calendar.getTime();
            }
            str = stringTokenizer.nextToken();
        }
        return m7569if(stringTokenizer, calendar, str);
    }

    /* renamed from: else, reason: not valid java name */
    public static Integer m7566else(String str) {
        return f6236do.get(str);
    }

    /* renamed from: for, reason: not valid java name */
    public static Date m7567for(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Date) {
            return (Date) obj;
        }
        if (obj instanceof Number) {
            return new Date(((Number) obj).longValue());
        }
        if (!(obj instanceof String)) {
            throw new RuntimeException("Primitive: Can not convert " + obj.getClass().getName() + " to int");
        }
        StringTokenizer stringTokenizer = new StringTokenizer((String) obj, " -/:,.+");
        if (!stringTokenizer.hasMoreTokens()) {
            return null;
        }
        String strNextToken = stringTokenizer.nextToken();
        if (strNextToken.length() == 4 && Character.isDigit(strNextToken.charAt(0))) {
            return m7568goto(stringTokenizer, strNextToken);
        }
        if (f6238if.containsKey(strNextToken)) {
            if (!stringTokenizer.hasMoreTokens()) {
                return null;
            }
            strNextToken = stringTokenizer.nextToken();
        }
        if (f6236do.containsKey(strNextToken)) {
            return m7563case(stringTokenizer, strNextToken);
        }
        if (Character.isDigit(strNextToken.charAt(0))) {
            return m7572try(stringTokenizer, strNextToken);
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    private static Date m7568goto(StringTokenizer stringTokenizer, String str) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(2000, 0, 0, 0, 0, 0);
        gregorianCalendar.setTimeInMillis(0L);
        gregorianCalendar.set(1, Integer.parseInt(str));
        if (!stringTokenizer.hasMoreTokens()) {
            return gregorianCalendar.getTime();
        }
        gregorianCalendar.set(2, m7562break(stringTokenizer.nextToken()).intValue());
        if (!stringTokenizer.hasMoreTokens()) {
            return gregorianCalendar.getTime();
        }
        String strNextToken = stringTokenizer.nextToken();
        if (!Character.isDigit(strNextToken.charAt(0))) {
            return gregorianCalendar.getTime();
        }
        if (strNextToken.length() == 5 && strNextToken.charAt(2) == 'T') {
            gregorianCalendar.set(5, Integer.parseInt(strNextToken.substring(0, 2)));
            return m7565do(stringTokenizer, gregorianCalendar, strNextToken.substring(3));
        }
        gregorianCalendar.set(5, Integer.parseInt(strNextToken));
        return m7565do(stringTokenizer, gregorianCalendar, null);
    }

    /* renamed from: if, reason: not valid java name */
    private static Date m7569if(StringTokenizer stringTokenizer, Calendar calendar, String str) {
        calendar.set(11, Integer.parseInt(str));
        if (!stringTokenizer.hasMoreTokens()) {
            return calendar.getTime();
        }
        String strM7564catch = m7564catch(stringTokenizer, stringTokenizer.nextToken(), calendar);
        if (strM7564catch == null) {
            return calendar.getTime();
        }
        calendar.set(12, Integer.parseInt(strM7564catch));
        if (!stringTokenizer.hasMoreTokens()) {
            return calendar.getTime();
        }
        String strM7564catch2 = m7564catch(stringTokenizer, stringTokenizer.nextToken(), calendar);
        if (strM7564catch2 == null) {
            return calendar.getTime();
        }
        calendar.set(13, Integer.parseInt(strM7564catch2));
        if (!stringTokenizer.hasMoreTokens()) {
            return calendar.getTime();
        }
        String strM7564catch3 = m7564catch(stringTokenizer, stringTokenizer.nextToken(), calendar);
        if (strM7564catch3 == null) {
            return calendar.getTime();
        }
        String strM7564catch4 = m7564catch(stringTokenizer, strM7564catch3, calendar);
        if (strM7564catch4.length() == 4 && Character.isDigit(strM7564catch4.charAt(0))) {
            calendar.set(1, m7571this(strM7564catch4));
        }
        return calendar.getTime();
    }

    /* renamed from: new, reason: not valid java name */
    private static void m7570new(TreeMap<String, Integer> treeMap, String str, Integer num) {
        treeMap.put(str, num);
        treeMap.put(str.replace("é", "e").replace("û", com.umeng.analytics.pro.ak.aG), num);
    }

    /* renamed from: this, reason: not valid java name */
    private static int m7571this(String str) throws NumberFormatException {
        int i = Integer.parseInt(str);
        return i < 100 ? i > 23 ? i + 2000 : i + 1900 : i;
    }

    /* renamed from: try, reason: not valid java name */
    private static Date m7572try(StringTokenizer stringTokenizer, String str) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(2000, 0, 0, 0, 0, 0);
        gregorianCalendar.set(5, Integer.parseInt(str));
        if (!stringTokenizer.hasMoreTokens()) {
            return null;
        }
        gregorianCalendar.set(2, m7562break(stringTokenizer.nextToken()).intValue());
        if (!stringTokenizer.hasMoreTokens()) {
            return null;
        }
        gregorianCalendar.set(1, m7571this(stringTokenizer.nextToken()));
        return m7565do(stringTokenizer, gregorianCalendar, null);
    }
}
