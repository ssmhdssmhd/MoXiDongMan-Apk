package org.apache.commons.lang3.time;

import android.support.v4.ee2;
import android.support.v4.hy1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.text.DateFormatSymbols;
import java.text.FieldPosition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes3.dex */
public class FastDatePrinter implements DatePrinter, Serializable {
    public static final int FULL = 0;
    public static final int LONG = 1;
    public static final int MEDIUM = 2;
    public static final int SHORT = 3;

    /* renamed from: for, reason: not valid java name */
    private static final ConcurrentMap<Ctry, String> f28783for = new ConcurrentHashMap(7);
    private static final long serialVersionUID = 1;

    /* renamed from: do, reason: not valid java name */
    private transient Rule[] f28784do;

    /* renamed from: if, reason: not valid java name */
    private transient int f28785if;
    private final Locale mLocale;
    private final String mPattern;
    private final TimeZone mTimeZone;

    public interface NumberRule extends Rule {
        void appendTo(StringBuffer stringBuffer, int i);
    }

    public interface Rule {
        void appendTo(StringBuffer stringBuffer, Calendar calendar);

        int estimateLength();
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$break, reason: invalid class name */
    public static class Cbreak implements NumberRule {

        /* renamed from: do, reason: not valid java name */
        public static final Cbreak f28786do = new Cbreak();

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(2) + 1);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            stringBuffer.append((char) ((i / 10) + 48));
            stringBuffer.append((char) ((i % 10) + 48));
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$case, reason: invalid class name */
    public static class Ccase implements Rule {

        /* renamed from: do, reason: not valid java name */
        private final Locale f28787do;

        /* renamed from: for, reason: not valid java name */
        private final String f28788for;

        /* renamed from: if, reason: not valid java name */
        private final int f28789if;

        /* renamed from: new, reason: not valid java name */
        private final String f28790new;

        public Ccase(TimeZone timeZone, Locale locale, int i) {
            this.f28787do = locale;
            this.f28789if = i;
            this.f28788for = FastDatePrinter.getTimeZoneDisplay(timeZone, false, i, locale);
            this.f28790new = FastDatePrinter.getTimeZoneDisplay(timeZone, true, i, locale);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            TimeZone timeZone = calendar.getTimeZone();
            if (!timeZone.useDaylightTime() || calendar.get(16) == 0) {
                stringBuffer.append(FastDatePrinter.getTimeZoneDisplay(timeZone, false, this.f28789if, this.f28787do));
            } else {
                stringBuffer.append(FastDatePrinter.getTimeZoneDisplay(timeZone, true, this.f28789if, this.f28787do));
            }
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return Math.max(this.f28788for.length(), this.f28790new.length());
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$catch, reason: invalid class name */
    public static class Ccatch implements NumberRule {

        /* renamed from: do, reason: not valid java name */
        private final int f28791do;

        public Ccatch(int i) {
            this.f28791do = i;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(this.f28791do));
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i >= 100) {
                stringBuffer.append(Integer.toString(i));
            } else {
                stringBuffer.append((char) ((i / 10) + 48));
                stringBuffer.append((char) ((i % 10) + 48));
            }
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$class, reason: invalid class name */
    public static class Cclass implements NumberRule {

        /* renamed from: do, reason: not valid java name */
        public static final Cclass f28792do = new Cclass();

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(1) % 100);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            stringBuffer.append((char) ((i / 10) + 48));
            stringBuffer.append((char) ((i % 10) + 48));
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$const, reason: invalid class name */
    public static class Cconst implements NumberRule {

        /* renamed from: do, reason: not valid java name */
        public static final Cconst f28793do = new Cconst();

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(2) + 1);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i < 10) {
                stringBuffer.append((char) (i + 48));
            } else {
                stringBuffer.append((char) ((i / 10) + 48));
                stringBuffer.append((char) ((i % 10) + 48));
            }
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$do, reason: invalid class name */
    public static class Cdo implements Rule {

        /* renamed from: do, reason: not valid java name */
        private final char f28794do;

        public Cdo(char c) {
            this.f28794do = c;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.f28794do);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 1;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$else, reason: invalid class name */
    public static class Celse implements Rule {

        /* renamed from: do, reason: not valid java name */
        public final boolean f28797do;

        /* renamed from: if, reason: not valid java name */
        public static final Celse f28796if = new Celse(true);

        /* renamed from: for, reason: not valid java name */
        public static final Celse f28795for = new Celse(false);

        public Celse(boolean z) {
            this.f28797do = z;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int i = calendar.get(15) + calendar.get(16);
            if (i < 0) {
                stringBuffer.append(hy1.f2561for);
                i = -i;
            } else {
                stringBuffer.append(hy1.f2562if);
            }
            int i2 = i / 3600000;
            stringBuffer.append((char) ((i2 / 10) + 48));
            stringBuffer.append((char) ((i2 % 10) + 48));
            if (this.f28797do) {
                stringBuffer.append(':');
            }
            int i3 = (i / 60000) - (i2 * 60);
            stringBuffer.append((char) ((i3 / 10) + 48));
            stringBuffer.append((char) ((i3 % 10) + 48));
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 5;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$final, reason: invalid class name */
    public static class Cfinal implements NumberRule {

        /* renamed from: do, reason: not valid java name */
        private final int f28798do;

        public Cfinal(int i) {
            this.f28798do = i;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(this.f28798do));
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 4;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i < 10) {
                stringBuffer.append((char) (i + 48));
            } else if (i >= 100) {
                stringBuffer.append(Integer.toString(i));
            } else {
                stringBuffer.append((char) ((i / 10) + 48));
                stringBuffer.append((char) ((i % 10) + 48));
            }
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$for, reason: invalid class name */
    public static class Cfor implements Rule {

        /* renamed from: do, reason: not valid java name */
        private final String f28799do;

        public Cfor(String str) {
            this.f28799do = str;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.f28799do);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.f28799do.length();
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$if, reason: invalid class name */
    public static class Cif implements NumberRule {

        /* renamed from: do, reason: not valid java name */
        private final int f28801do;

        /* renamed from: if, reason: not valid java name */
        private final int f28802if;

        public Cif(int i, int i2) {
            if (i2 < 3) {
                throw new IllegalArgumentException();
            }
            this.f28801do = i;
            this.f28802if = i2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(this.f28801do));
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 4;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            int length;
            if (i < 100) {
                int i2 = this.f28802if;
                while (true) {
                    i2--;
                    if (i2 < 2) {
                        stringBuffer.append((char) ((i / 10) + 48));
                        stringBuffer.append((char) ((i % 10) + 48));
                        return;
                    }
                    stringBuffer.append('0');
                }
            } else {
                if (i < 1000) {
                    length = 3;
                } else {
                    ee2.m1834native(i > -1, "Negative values should not be possible", i);
                    length = Integer.toString(i).length();
                }
                int i3 = this.f28802if;
                while (true) {
                    i3--;
                    if (i3 < length) {
                        stringBuffer.append(Integer.toString(i));
                        return;
                    }
                    stringBuffer.append('0');
                }
            }
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$new, reason: invalid class name */
    public static class Cnew implements Rule {

        /* renamed from: do, reason: not valid java name */
        private final int f28803do;

        /* renamed from: if, reason: not valid java name */
        private final String[] f28804if;

        public Cnew(int i, String[] strArr) {
            this.f28803do = i;
            this.f28804if = strArr;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.f28804if[calendar.get(this.f28803do)]);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            int length = this.f28804if.length;
            int i = 0;
            while (true) {
                length--;
                if (length < 0) {
                    return i;
                }
                int length2 = this.f28804if[length].length();
                if (length2 > i) {
                    i = length2;
                }
            }
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        private final TimeZone f28806do;

        /* renamed from: for, reason: not valid java name */
        private final Locale f28807for;

        /* renamed from: if, reason: not valid java name */
        private final int f28808if;

        public Ctry(TimeZone timeZone, boolean z, int i, Locale locale) {
            this.f28806do = timeZone;
            if (z) {
                this.f28808if = Integer.MIN_VALUE | i;
            } else {
                this.f28808if = i;
            }
            this.f28807for = locale;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Ctry)) {
                return false;
            }
            Ctry ctry = (Ctry) obj;
            return this.f28806do.equals(ctry.f28806do) && this.f28808if == ctry.f28808if && this.f28807for.equals(ctry.f28807for);
        }

        public int hashCode() {
            return (((this.f28808if * 31) + this.f28807for.hashCode()) * 31) + this.f28806do.hashCode();
        }
    }

    public FastDatePrinter(String str, TimeZone timeZone, Locale locale) {
        this.mPattern = str;
        this.mTimeZone = timeZone;
        this.mLocale = locale;
        m32610if();
    }

    /* renamed from: do, reason: not valid java name */
    private String m32608do(Calendar calendar) {
        return applyRules(calendar, new StringBuffer(this.f28785if)).toString();
    }

    /* renamed from: for, reason: not valid java name */
    private GregorianCalendar m32609for() {
        return new GregorianCalendar(this.mTimeZone, this.mLocale);
    }

    public static String getTimeZoneDisplay(TimeZone timeZone, boolean z, int i, Locale locale) {
        Ctry ctry = new Ctry(timeZone, z, i, locale);
        ConcurrentMap<Ctry, String> concurrentMap = f28783for;
        String str = concurrentMap.get(ctry);
        if (str != null) {
            return str;
        }
        String displayName = timeZone.getDisplayName(z, i, locale);
        String strPutIfAbsent = concurrentMap.putIfAbsent(ctry, displayName);
        return strPutIfAbsent != null ? strPutIfAbsent : displayName;
    }

    /* renamed from: if, reason: not valid java name */
    private void m32610if() {
        List<Rule> pattern = parsePattern();
        Rule[] ruleArr = (Rule[]) pattern.toArray(new Rule[pattern.size()]);
        this.f28784do = ruleArr;
        int length = ruleArr.length;
        int iEstimateLength = 0;
        while (true) {
            length--;
            if (length < 0) {
                this.f28785if = iEstimateLength;
                return;
            }
            iEstimateLength += this.f28784do[length].estimateLength();
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m32610if();
    }

    public StringBuffer applyRules(Calendar calendar, StringBuffer stringBuffer) {
        for (Rule rule : this.f28784do) {
            rule.appendTo(stringBuffer, calendar);
        }
        return stringBuffer;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FastDatePrinter)) {
            return false;
        }
        FastDatePrinter fastDatePrinter = (FastDatePrinter) obj;
        return this.mPattern.equals(fastDatePrinter.mPattern) && this.mTimeZone.equals(fastDatePrinter.mTimeZone) && this.mLocale.equals(fastDatePrinter.mLocale);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (obj instanceof Date) {
            return format((Date) obj, stringBuffer);
        }
        if (obj instanceof Calendar) {
            return format((Calendar) obj, stringBuffer);
        }
        if (obj instanceof Long) {
            return format(((Long) obj).longValue(), stringBuffer);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unknown class: ");
        sb.append(obj == null ? "<null>" : obj.getClass().getName());
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public Locale getLocale() {
        return this.mLocale;
    }

    public int getMaxLengthEstimate() {
        return this.f28785if;
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public String getPattern() {
        return this.mPattern;
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public TimeZone getTimeZone() {
        return this.mTimeZone;
    }

    public int hashCode() {
        return this.mPattern.hashCode() + ((this.mTimeZone.hashCode() + (this.mLocale.hashCode() * 13)) * 13);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v14, types: [org.apache.commons.lang3.time.FastDatePrinter$for] */
    /* JADX WARN: Type inference failed for: r9v15, types: [org.apache.commons.lang3.time.FastDatePrinter$do] */
    /* JADX WARN: Type inference failed for: r9v21, types: [org.apache.commons.lang3.time.FastDatePrinter$new] */
    /* JADX WARN: Type inference failed for: r9v22, types: [org.apache.commons.lang3.time.FastDatePrinter$new] */
    /* JADX WARN: Type inference failed for: r9v27, types: [org.apache.commons.lang3.time.FastDatePrinter$else] */
    /* JADX WARN: Type inference failed for: r9v28, types: [org.apache.commons.lang3.time.FastDatePrinter$else] */
    /* JADX WARN: Type inference failed for: r9v29, types: [org.apache.commons.lang3.time.FastDatePrinter$new] */
    /* JADX WARN: Type inference failed for: r9v42, types: [org.apache.commons.lang3.time.FastDatePrinter$new] */
    /* JADX WARN: Type inference failed for: r9v45, types: [org.apache.commons.lang3.time.FastDatePrinter$new] */
    /* JADX WARN: Type inference failed for: r9v8, types: [org.apache.commons.lang3.time.FastDatePrinter$case] */
    /* JADX WARN: Type inference failed for: r9v9, types: [org.apache.commons.lang3.time.FastDatePrinter$case] */
    public List<Rule> parsePattern() {
        NumberRule numberRuleSelectNumberRule;
        Cclass ccase;
        NumberRule ccase2;
        DateFormatSymbols dateFormatSymbols = new DateFormatSymbols(this.mLocale);
        ArrayList arrayList = new ArrayList();
        String[] eras = dateFormatSymbols.getEras();
        String[] months = dateFormatSymbols.getMonths();
        String[] shortMonths = dateFormatSymbols.getShortMonths();
        String[] weekdays = dateFormatSymbols.getWeekdays();
        String[] shortWeekdays = dateFormatSymbols.getShortWeekdays();
        String[] amPmStrings = dateFormatSymbols.getAmPmStrings();
        int length = this.mPattern.length();
        int[] iArr = new int[1];
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            iArr[i] = i2;
            String token = parseToken(this.mPattern, iArr);
            int i3 = iArr[i];
            int length2 = token.length();
            if (length2 == 0) {
                return arrayList;
            }
            char cCharAt = token.charAt(i);
            if (cCharAt != 'y') {
                if (cCharAt != 'z') {
                    switch (cCharAt) {
                        case '\'':
                            String strSubstring = token.substring(1);
                            if (strSubstring.length() != 1) {
                                ccase2 = new Cfor(strSubstring);
                                break;
                            } else {
                                ccase2 = new Cdo(strSubstring.charAt(0));
                                break;
                            }
                        case 'K':
                            ccase2 = selectNumberRule(10, length2);
                            break;
                        case 'M':
                            if (length2 < 4) {
                                if (length2 != 3) {
                                    if (length2 != 2) {
                                        ccase2 = Cconst.f28793do;
                                        break;
                                    } else {
                                        ccase2 = Cbreak.f28786do;
                                        break;
                                    }
                                } else {
                                    ccase2 = new Cnew(2, shortMonths);
                                    break;
                                }
                            } else {
                                ccase2 = new Cnew(2, months);
                                break;
                            }
                        case 'S':
                            ccase2 = selectNumberRule(14, length2);
                            break;
                        case 'W':
                            ccase2 = selectNumberRule(4, length2);
                            break;
                        case 'Z':
                            if (length2 != 1) {
                                ccase2 = Celse.f28796if;
                                break;
                            } else {
                                ccase2 = Celse.f28795for;
                                break;
                            }
                        case 'a':
                            ccase2 = new Cnew(9, amPmStrings);
                            break;
                        case 'd':
                            ccase2 = selectNumberRule(5, length2);
                            break;
                        case 'h':
                            ccase2 = new Cgoto(selectNumberRule(10, length2));
                            break;
                        case 'k':
                            numberRuleSelectNumberRule = new Cthis(selectNumberRule(11, length2));
                            break;
                        case 'm':
                            ccase2 = selectNumberRule(12, length2);
                            break;
                        case 's':
                            ccase2 = selectNumberRule(13, length2);
                            break;
                        case 'w':
                            ccase2 = selectNumberRule(3, length2);
                            break;
                        default:
                            switch (cCharAt) {
                                case 'D':
                                    ccase2 = selectNumberRule(6, length2);
                                    break;
                                case 'E':
                                    ccase2 = new Cnew(7, length2 < 4 ? shortWeekdays : weekdays);
                                    break;
                                case 'F':
                                    ccase2 = selectNumberRule(8, length2);
                                    break;
                                case 'G':
                                    ccase2 = new Cnew(0, eras);
                                    break;
                                case 'H':
                                    ccase2 = selectNumberRule(11, length2);
                                    break;
                                default:
                                    throw new IllegalArgumentException("Illegal pattern component: " + token);
                            }
                    }
                } else if (length2 >= 4) {
                    ccase2 = new Ccase(this.mTimeZone, this.mLocale, 1);
                } else {
                    ccase = new Ccase(this.mTimeZone, this.mLocale, 0);
                    numberRuleSelectNumberRule = ccase;
                }
                numberRuleSelectNumberRule = ccase2;
            } else if (length2 == 2) {
                ccase = Cclass.f28792do;
                numberRuleSelectNumberRule = ccase;
            } else {
                if (length2 < 4) {
                    length2 = 4;
                }
                numberRuleSelectNumberRule = selectNumberRule(1, length2);
            }
            arrayList.add(numberRuleSelectNumberRule);
            i2 = i3 + 1;
            i = 0;
        }
        return arrayList;
    }

    public String parseToken(String str, int[] iArr) {
        StringBuilder sb = new StringBuilder();
        int i = iArr[0];
        int length = str.length();
        char cCharAt = str.charAt(i);
        if ((cCharAt < 'A' || cCharAt > 'Z') && (cCharAt < 'a' || cCharAt > 'z')) {
            sb.append('\'');
            boolean z = false;
            while (i < length) {
                char cCharAt2 = str.charAt(i);
                if (cCharAt2 != '\'') {
                    if (!z && ((cCharAt2 >= 'A' && cCharAt2 <= 'Z') || (cCharAt2 >= 'a' && cCharAt2 <= 'z'))) {
                        i--;
                        break;
                    }
                    sb.append(cCharAt2);
                } else {
                    int i2 = i + 1;
                    if (i2 >= length || str.charAt(i2) != '\'') {
                        z = !z;
                    } else {
                        sb.append(cCharAt2);
                        i = i2;
                    }
                }
                i++;
            }
        } else {
            sb.append(cCharAt);
            while (true) {
                int i3 = i + 1;
                if (i3 >= length || str.charAt(i3) != cCharAt) {
                    break;
                }
                sb.append(cCharAt);
                i = i3;
            }
        }
        iArr[0] = i;
        return sb.toString();
    }

    public NumberRule selectNumberRule(int i, int i2) {
        return i2 != 1 ? i2 != 2 ? new Cif(i, i2) : new Ccatch(i) : new Cfinal(i);
    }

    public String toString() {
        return "FastDatePrinter[" + this.mPattern + "," + this.mLocale + "," + this.mTimeZone.getID() + "]";
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$goto, reason: invalid class name */
    public static class Cgoto implements NumberRule {

        /* renamed from: do, reason: not valid java name */
        private final NumberRule f28800do;

        public Cgoto(NumberRule numberRule) {
            this.f28800do = numberRule;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int leastMaximum = calendar.get(10);
            if (leastMaximum == 0) {
                leastMaximum = calendar.getLeastMaximum(10) + 1;
            }
            this.f28800do.appendTo(stringBuffer, leastMaximum);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.f28800do.estimateLength();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public void appendTo(StringBuffer stringBuffer, int i) {
            this.f28800do.appendTo(stringBuffer, i);
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$this, reason: invalid class name */
    public static class Cthis implements NumberRule {

        /* renamed from: do, reason: not valid java name */
        private final NumberRule f28805do;

        public Cthis(NumberRule numberRule) {
            this.f28805do = numberRule;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int maximum = calendar.get(11);
            if (maximum == 0) {
                maximum = calendar.getMaximum(11) + 1;
            }
            this.f28805do.appendTo(stringBuffer, maximum);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.f28805do.estimateLength();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public void appendTo(StringBuffer stringBuffer, int i) {
            this.f28805do.appendTo(stringBuffer, i);
        }
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public String format(long j) {
        GregorianCalendar gregorianCalendarM32609for = m32609for();
        gregorianCalendarM32609for.setTimeInMillis(j);
        return m32608do(gregorianCalendarM32609for);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public String format(Date date) {
        GregorianCalendar gregorianCalendarM32609for = m32609for();
        gregorianCalendarM32609for.setTime(date);
        return m32608do(gregorianCalendarM32609for);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public String format(Calendar calendar) {
        return format(calendar, new StringBuffer(this.f28785if)).toString();
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(long j, StringBuffer stringBuffer) {
        return format(new Date(j), stringBuffer);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(Date date, StringBuffer stringBuffer) {
        GregorianCalendar gregorianCalendarM32609for = m32609for();
        gregorianCalendarM32609for.setTime(date);
        return applyRules(gregorianCalendarM32609for, stringBuffer);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(Calendar calendar, StringBuffer stringBuffer) {
        return applyRules(calendar, stringBuffer);
    }
}
