package org.apache.commons.lang3.time;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.SortedMap;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: org.apache.commons.lang3.time.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements DateParser, Serializable {
    private static final long serialVersionUID = 2;
    private final int century;

    /* renamed from: do, reason: not valid java name */
    private transient Pattern f28862do;

    /* renamed from: for, reason: not valid java name */
    private transient String f28863for;

    /* renamed from: if, reason: not valid java name */
    private transient Celse[] f28864if;
    private final Locale locale;

    /* renamed from: new, reason: not valid java name */
    private transient Celse f28865new;
    private final String pattern;
    private final int startYear;
    private final TimeZone timeZone;
    public static final Locale JAPANESE_IMPERIAL = new Locale("ja", "JP", "JP");

    /* renamed from: try, reason: not valid java name */
    private static final Pattern f28860try = Pattern.compile("D+|E+|F+|G+|H+|K+|M+|S+|W+|Z+|a+|d+|h+|k+|m+|s+|w+|y+|z+|''|'[^']++(''[^']*+)*+'|[^'A-Za-z]++");

    /* renamed from: case, reason: not valid java name */
    private static final ConcurrentMap<Locale, Celse>[] f28846case = new ConcurrentMap[17];

    /* renamed from: else, reason: not valid java name */
    private static final Celse f28850else = new Cdo(1);

    /* renamed from: goto, reason: not valid java name */
    private static final Celse f28852goto = new Cif(2);

    /* renamed from: this, reason: not valid java name */
    private static final Celse f28858this = new Ccase(1);

    /* renamed from: break, reason: not valid java name */
    private static final Celse f28845break = new Ccase(3);

    /* renamed from: catch, reason: not valid java name */
    private static final Celse f28847catch = new Ccase(4);

    /* renamed from: class, reason: not valid java name */
    private static final Celse f28848class = new Ccase(6);

    /* renamed from: const, reason: not valid java name */
    private static final Celse f28849const = new Ccase(5);

    /* renamed from: final, reason: not valid java name */
    private static final Celse f28851final = new Ccase(8);

    /* renamed from: super, reason: not valid java name */
    private static final Celse f28857super = new Ccase(11);

    /* renamed from: throw, reason: not valid java name */
    private static final Celse f28859throw = new Cfor(11);

    /* renamed from: while, reason: not valid java name */
    private static final Celse f28861while = new C0395new(10);

    /* renamed from: import, reason: not valid java name */
    private static final Celse f28853import = new Ccase(10);

    /* renamed from: native, reason: not valid java name */
    private static final Celse f28854native = new Ccase(12);

    /* renamed from: public, reason: not valid java name */
    private static final Celse f28855public = new Ccase(13);

    /* renamed from: return, reason: not valid java name */
    private static final Celse f28856return = new Ccase(14);

    /* renamed from: org.apache.commons.lang3.time.new$case, reason: invalid class name */
    public static class Ccase extends Celse {

        /* renamed from: do, reason: not valid java name */
        private final int f28866do;

        public Ccase(int i) {
            super(null);
            this.f28866do = i;
        }

        @Override // org.apache.commons.lang3.time.Cnew.Celse
        /* renamed from: do, reason: not valid java name */
        public boolean mo32691do(Cnew cnew, StringBuilder sb) {
            if (!cnew.isNextNumber()) {
                sb.append("(\\p{Nd}++)");
                return true;
            }
            sb.append("(\\p{Nd}{");
            sb.append(cnew.getFieldWidth());
            sb.append("}+)");
            return true;
        }

        @Override // org.apache.commons.lang3.time.Cnew.Celse
        /* renamed from: for, reason: not valid java name */
        public void mo32692for(Cnew cnew, Calendar calendar, String str) {
            calendar.set(this.f28866do, mo32694new(Integer.parseInt(str)));
        }

        @Override // org.apache.commons.lang3.time.Cnew.Celse
        /* renamed from: if, reason: not valid java name */
        public boolean mo32693if() {
            return true;
        }

        /* renamed from: new, reason: not valid java name */
        public int mo32694new(int i) {
            return i;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.new$do, reason: invalid class name */
    public static class Cdo extends Ccase {
        public Cdo(int i) {
            super(i);
        }

        @Override // org.apache.commons.lang3.time.Cnew.Ccase, org.apache.commons.lang3.time.Cnew.Celse
        /* renamed from: for */
        public void mo32692for(Cnew cnew, Calendar calendar, String str) throws NumberFormatException {
            int iM32685do = Integer.parseInt(str);
            if (iM32685do < 100) {
                iM32685do = cnew.m32685do(iM32685do);
            }
            calendar.set(1, iM32685do);
        }
    }

    /* renamed from: org.apache.commons.lang3.time.new$else, reason: invalid class name */
    public static abstract class Celse {
        private Celse() {
        }

        /* renamed from: do */
        public abstract boolean mo32691do(Cnew cnew, StringBuilder sb);

        /* renamed from: for */
        public void mo32692for(Cnew cnew, Calendar calendar, String str) {
        }

        /* renamed from: if */
        public boolean mo32693if() {
            return false;
        }

        public /* synthetic */ Celse(Cdo cdo) {
            this();
        }
    }

    /* renamed from: org.apache.commons.lang3.time.new$for, reason: invalid class name */
    public static class Cfor extends Ccase {
        public Cfor(int i) {
            super(i);
        }

        @Override // org.apache.commons.lang3.time.Cnew.Ccase
        /* renamed from: new */
        public int mo32694new(int i) {
            return i % 24;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.new$goto, reason: invalid class name */
    public static class Cgoto extends Celse {

        /* renamed from: do, reason: not valid java name */
        private final int f28867do;

        /* renamed from: if, reason: not valid java name */
        private final Map<String, Integer> f28868if;

        public Cgoto(int i, Calendar calendar, Locale locale) {
            super(null);
            this.f28867do = i;
            this.f28868if = Cnew.m32689new(i, calendar, locale);
        }

        @Override // org.apache.commons.lang3.time.Cnew.Celse
        /* renamed from: do */
        public boolean mo32691do(Cnew cnew, StringBuilder sb) {
            sb.append('(');
            Iterator<String> it = this.f28868if.keySet().iterator();
            while (it.hasNext()) {
                Cnew.m32688if(sb, it.next(), false).append('|');
            }
            sb.setCharAt(sb.length() - 1, ')');
            return true;
        }

        @Override // org.apache.commons.lang3.time.Cnew.Celse
        /* renamed from: for */
        public void mo32692for(Cnew cnew, Calendar calendar, String str) {
            Integer num = this.f28868if.get(str);
            if (num != null) {
                calendar.set(this.f28867do, num.intValue());
                return;
            }
            StringBuilder sb = new StringBuilder(str);
            sb.append(" not in (");
            Iterator<String> it = this.f28868if.keySet().iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append(' ');
            }
            sb.setCharAt(sb.length() - 1, ')');
            throw new IllegalArgumentException(sb.toString());
        }
    }

    /* renamed from: org.apache.commons.lang3.time.new$if, reason: invalid class name */
    public static class Cif extends Ccase {
        public Cif(int i) {
            super(i);
        }

        @Override // org.apache.commons.lang3.time.Cnew.Ccase
        /* renamed from: new */
        public int mo32694new(int i) {
            return i - 1;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.new$new, reason: invalid class name and collision with other inner class name */
    public static class C0395new extends Ccase {
        public C0395new(int i) {
            super(i);
        }

        @Override // org.apache.commons.lang3.time.Cnew.Ccase
        /* renamed from: new */
        public int mo32694new(int i) {
            return i % 12;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.new$this, reason: invalid class name */
    public static class Cthis extends Celse {

        /* renamed from: case, reason: not valid java name */
        private static final int f28869case = 3;

        /* renamed from: else, reason: not valid java name */
        private static final int f28870else = 4;

        /* renamed from: for, reason: not valid java name */
        private static final int f28871for = 0;

        /* renamed from: new, reason: not valid java name */
        private static final int f28872new = 1;

        /* renamed from: try, reason: not valid java name */
        private static final int f28873try = 2;

        /* renamed from: do, reason: not valid java name */
        private final String f28874do;

        /* renamed from: if, reason: not valid java name */
        private final SortedMap<String, TimeZone> f28875if;

        public Cthis(Locale locale) {
            super(null);
            this.f28875if = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            for (String[] strArr : DateFormatSymbols.getInstance(locale).getZoneStrings()) {
                if (!strArr[0].startsWith("GMT")) {
                    TimeZone timeZone = TimeZone.getTimeZone(strArr[0]);
                    if (!this.f28875if.containsKey(strArr[1])) {
                        this.f28875if.put(strArr[1], timeZone);
                    }
                    if (!this.f28875if.containsKey(strArr[2])) {
                        this.f28875if.put(strArr[2], timeZone);
                    }
                    if (timeZone.useDaylightTime()) {
                        if (!this.f28875if.containsKey(strArr[3])) {
                            this.f28875if.put(strArr[3], timeZone);
                        }
                        if (!this.f28875if.containsKey(strArr[4])) {
                            this.f28875if.put(strArr[4], timeZone);
                        }
                    }
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("(GMT[+\\-]\\d{0,1}\\d{2}|[+\\-]\\d{2}:?\\d{2}|");
            Iterator<String> it = this.f28875if.keySet().iterator();
            while (it.hasNext()) {
                Cnew.m32688if(sb, it.next(), false).append('|');
            }
            sb.setCharAt(sb.length() - 1, ')');
            this.f28874do = sb.toString();
        }

        @Override // org.apache.commons.lang3.time.Cnew.Celse
        /* renamed from: do */
        public boolean mo32691do(Cnew cnew, StringBuilder sb) {
            sb.append(this.f28874do);
            return true;
        }

        @Override // org.apache.commons.lang3.time.Cnew.Celse
        /* renamed from: for */
        public void mo32692for(Cnew cnew, Calendar calendar, String str) {
            TimeZone timeZone;
            if (str.charAt(0) == '+' || str.charAt(0) == '-') {
                timeZone = TimeZone.getTimeZone("GMT" + str);
            } else if (str.startsWith("GMT")) {
                timeZone = TimeZone.getTimeZone(str);
            } else {
                timeZone = this.f28875if.get(str);
                if (timeZone == null) {
                    throw new IllegalArgumentException(str + " is not a supported timezone name");
                }
            }
            calendar.setTimeZone(timeZone);
        }
    }

    /* renamed from: org.apache.commons.lang3.time.new$try, reason: invalid class name */
    public static class Ctry extends Celse {

        /* renamed from: do, reason: not valid java name */
        private final String f28876do;

        public Ctry(String str) {
            super(null);
            this.f28876do = str;
        }

        @Override // org.apache.commons.lang3.time.Cnew.Celse
        /* renamed from: do */
        public boolean mo32691do(Cnew cnew, StringBuilder sb) {
            Cnew.m32688if(sb, this.f28876do, true);
            return false;
        }

        @Override // org.apache.commons.lang3.time.Cnew.Celse
        /* renamed from: if */
        public boolean mo32693if() {
            char cCharAt = this.f28876do.charAt(0);
            if (cCharAt == '\'') {
                cCharAt = this.f28876do.charAt(1);
            }
            return Character.isDigit(cCharAt);
        }
    }

    public Cnew(String str, TimeZone timeZone, Locale locale) {
        this(str, timeZone, locale, null);
    }

    /* renamed from: case, reason: not valid java name */
    private Celse m32684case(String str, Calendar calendar) {
        char cCharAt = str.charAt(0);
        if (cCharAt == 'y') {
            return str.length() > 2 ? f28858this : f28850else;
        }
        if (cCharAt != 'z') {
            switch (cCharAt) {
                case '\'':
                    if (str.length() > 2) {
                        return new Ctry(str.substring(1, str.length() - 1));
                    }
                    break;
                case 'K':
                    return f28853import;
                case 'M':
                    return str.length() >= 3 ? m32690try(2, calendar) : f28852goto;
                case 'S':
                    return f28856return;
                case 'W':
                    return f28847catch;
                case 'Z':
                    break;
                case 'a':
                    return m32690try(9, calendar);
                case 'd':
                    return f28849const;
                case 'h':
                    return f28861while;
                case 'k':
                    return f28857super;
                case 'm':
                    return f28854native;
                case 's':
                    return f28855public;
                case 'w':
                    return f28845break;
                default:
                    switch (cCharAt) {
                        case 'D':
                            return f28848class;
                        case 'E':
                            return m32690try(7, calendar);
                        case 'F':
                            return f28851final;
                        case 'G':
                            return m32690try(0, calendar);
                        case 'H':
                            return f28859throw;
                    }
            }
            return new Ctry(str);
        }
        return m32690try(15, calendar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: do, reason: not valid java name */
    public int m32685do(int i) {
        int i2 = this.century + i;
        return i >= this.startYear ? i2 : i2 + 100;
    }

    /* renamed from: else, reason: not valid java name */
    private void m32686else(Calendar calendar) {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        Matcher matcher = f28860try.matcher(this.pattern);
        if (!matcher.lookingAt()) {
            throw new IllegalArgumentException("Illegal pattern character '" + this.pattern.charAt(matcher.regionStart()) + "'");
        }
        String strGroup = matcher.group();
        this.f28863for = strGroup;
        Celse celseM32684case = m32684case(strGroup, calendar);
        while (true) {
            matcher.region(matcher.end(), matcher.regionEnd());
            if (!matcher.lookingAt()) {
                break;
            }
            String strGroup2 = matcher.group();
            this.f28865new = m32684case(strGroup2, calendar);
            if (celseM32684case.mo32691do(this, sb)) {
                arrayList.add(celseM32684case);
            }
            this.f28863for = strGroup2;
            celseM32684case = this.f28865new;
        }
        this.f28865new = null;
        if (matcher.regionStart() == matcher.regionEnd()) {
            if (celseM32684case.mo32691do(this, sb)) {
                arrayList.add(celseM32684case);
            }
            this.f28863for = null;
            this.f28864if = (Celse[]) arrayList.toArray(new Celse[arrayList.size()]);
            this.f28862do = Pattern.compile(sb.toString());
            return;
        }
        throw new IllegalArgumentException("Failed to parse \"" + this.pattern + "\" ; gave up at index " + matcher.regionStart());
    }

    /* renamed from: for, reason: not valid java name */
    private static ConcurrentMap<Locale, Celse> m32687for(int i) {
        ConcurrentMap<Locale, Celse> concurrentMap;
        ConcurrentMap<Locale, Celse>[] concurrentMapArr = f28846case;
        synchronized (concurrentMapArr) {
            if (concurrentMapArr[i] == null) {
                concurrentMapArr[i] = new ConcurrentHashMap(3);
            }
            concurrentMap = concurrentMapArr[i];
        }
        return concurrentMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: if, reason: not valid java name */
    public static StringBuilder m32688if(StringBuilder sb, String str, boolean z) {
        sb.append("\\Q");
        int i = 0;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '\'') {
                if (cCharAt == '\\' && (i = i + 1) != str.length()) {
                    sb.append(cCharAt);
                    cCharAt = str.charAt(i);
                    if (cCharAt == 'E') {
                        sb.append("E\\\\E\\");
                        cCharAt = 'Q';
                    }
                }
            } else if (z) {
                i++;
                if (i == str.length()) {
                    return sb;
                }
                cCharAt = str.charAt(i);
            } else {
                continue;
            }
            sb.append(cCharAt);
            i++;
        }
        sb.append("\\E");
        return sb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static Map<String, Integer> m32689new(int i, Calendar calendar, Locale locale) {
        return calendar.getDisplayNames(i, 0, locale);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m32686else(Calendar.getInstance(this.timeZone, this.locale));
    }

    /* renamed from: try, reason: not valid java name */
    private Celse m32690try(int i, Calendar calendar) {
        ConcurrentMap<Locale, Celse> concurrentMapM32687for = m32687for(i);
        Celse cthis = concurrentMapM32687for.get(this.locale);
        if (cthis == null) {
            cthis = i == 15 ? new Cthis(this.locale) : new Cgoto(i, calendar, this.locale);
            Celse celsePutIfAbsent = concurrentMapM32687for.putIfAbsent(this.locale, cthis);
            if (celsePutIfAbsent != null) {
                return celsePutIfAbsent;
            }
        }
        return cthis;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cnew)) {
            return false;
        }
        Cnew cnew = (Cnew) obj;
        return this.pattern.equals(cnew.pattern) && this.timeZone.equals(cnew.timeZone) && this.locale.equals(cnew.locale);
    }

    public int getFieldWidth() {
        return this.f28863for.length();
    }

    @Override // org.apache.commons.lang3.time.DateParser, org.apache.commons.lang3.time.DatePrinter
    public Locale getLocale() {
        return this.locale;
    }

    public Pattern getParsePattern() {
        return this.f28862do;
    }

    @Override // org.apache.commons.lang3.time.DateParser, org.apache.commons.lang3.time.DatePrinter
    public String getPattern() {
        return this.pattern;
    }

    @Override // org.apache.commons.lang3.time.DateParser, org.apache.commons.lang3.time.DatePrinter
    public TimeZone getTimeZone() {
        return this.timeZone;
    }

    public int hashCode() {
        return this.pattern.hashCode() + ((this.timeZone.hashCode() + (this.locale.hashCode() * 13)) * 13);
    }

    public boolean isNextNumber() {
        Celse celse = this.f28865new;
        return celse != null && celse.mo32693if();
    }

    @Override // org.apache.commons.lang3.time.DateParser
    public Date parse(String str) throws ParseException {
        Date date = parse(str, new ParsePosition(0));
        if (date != null) {
            return date;
        }
        if (!this.locale.equals(JAPANESE_IMPERIAL)) {
            throw new ParseException("Unparseable date: \"" + str + "\" does not match " + this.f28862do.pattern(), 0);
        }
        throw new ParseException("(The " + this.locale + " locale does not support dates before 1868 AD)\nUnparseable date: \"" + str + "\" does not match " + this.f28862do.pattern(), 0);
    }

    @Override // org.apache.commons.lang3.time.DateParser
    public Object parseObject(String str) throws ParseException {
        return parse(str);
    }

    public String toString() {
        return "FastDateParser[" + this.pattern + "," + this.locale + "," + this.timeZone.getID() + "]";
    }

    public Cnew(String str, TimeZone timeZone, Locale locale, Date date) {
        int i;
        this.pattern = str;
        this.timeZone = timeZone;
        this.locale = locale;
        Calendar calendar = Calendar.getInstance(timeZone, locale);
        if (date != null) {
            calendar.setTime(date);
            i = calendar.get(1);
        } else if (locale.equals(JAPANESE_IMPERIAL)) {
            i = 0;
        } else {
            calendar.setTime(new Date());
            i = calendar.get(1) - 80;
        }
        int i2 = (i / 100) * 100;
        this.century = i2;
        this.startYear = i - i2;
        m32686else(calendar);
    }

    @Override // org.apache.commons.lang3.time.DateParser
    public Object parseObject(String str, ParsePosition parsePosition) {
        return parse(str, parsePosition);
    }

    @Override // org.apache.commons.lang3.time.DateParser
    public Date parse(String str, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        Matcher matcher = this.f28862do.matcher(str.substring(index));
        if (!matcher.lookingAt()) {
            return null;
        }
        Calendar calendar = Calendar.getInstance(this.timeZone, this.locale);
        calendar.clear();
        int i = 0;
        while (true) {
            Celse[] celseArr = this.f28864if;
            if (i < celseArr.length) {
                int i2 = i + 1;
                celseArr[i].mo32692for(this, calendar, matcher.group(i2));
                i = i2;
            } else {
                parsePosition.setIndex(index + matcher.end());
                return calendar.getTime();
            }
        }
    }
}
