package org.apache.commons.lang3.time;

import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* renamed from: org.apache.commons.lang3.time.try, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Ctry<F extends Format> {

    /* renamed from: for, reason: not valid java name */
    private static final ConcurrentMap<Cdo, String> f28877for = new ConcurrentHashMap(7);

    /* renamed from: if, reason: not valid java name */
    public static final int f28878if = -1;

    /* renamed from: do, reason: not valid java name */
    private final ConcurrentMap<Cdo, F> f28879do = new ConcurrentHashMap(7);

    /* renamed from: org.apache.commons.lang3.time.try$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final Object[] f28880do;

        /* renamed from: if, reason: not valid java name */
        private int f28881if;

        public Cdo(Object... objArr) {
            this.f28880do = objArr;
        }

        public boolean equals(Object obj) {
            return Arrays.equals(this.f28880do, ((Cdo) obj).f28880do);
        }

        public int hashCode() {
            if (this.f28881if == 0) {
                int iHashCode = 0;
                for (Object obj : this.f28880do) {
                    if (obj != null) {
                        iHashCode = (iHashCode * 7) + obj.hashCode();
                    }
                }
                this.f28881if = iHashCode;
            }
            return this.f28881if;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static String m32695else(Integer num, Integer num2, Locale locale) {
        Cdo cdo = new Cdo(num, num2, locale);
        ConcurrentMap<Cdo, String> concurrentMap = f28877for;
        String str = concurrentMap.get(cdo);
        if (str != null) {
            return str;
        }
        try {
            String pattern = ((SimpleDateFormat) (num == null ? DateFormat.getTimeInstance(num2.intValue(), locale) : num2 == null ? DateFormat.getDateInstance(num.intValue(), locale) : DateFormat.getDateTimeInstance(num.intValue(), num2.intValue(), locale))).toPattern();
            String strPutIfAbsent = concurrentMap.putIfAbsent(cdo, pattern);
            return strPutIfAbsent != null ? strPutIfAbsent : pattern;
        } catch (ClassCastException unused) {
            throw new IllegalArgumentException("No date time pattern for locale: " + locale);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private F m32696new(Integer num, Integer num2, TimeZone timeZone, Locale locale) {
        if (locale == null) {
            locale = Locale.getDefault();
        }
        return (F) m32697case(m32695else(num, num2, locale), timeZone, locale);
    }

    /* renamed from: case, reason: not valid java name */
    public F m32697case(String str, TimeZone timeZone, Locale locale) {
        Objects.requireNonNull(str, "pattern must not be null");
        if (timeZone == null) {
            timeZone = TimeZone.getDefault();
        }
        if (locale == null) {
            locale = Locale.getDefault();
        }
        Cdo cdo = new Cdo(str, timeZone, locale);
        F f = this.f28879do.get(cdo);
        if (f != null) {
            return f;
        }
        F f2 = (F) mo32667do(str, timeZone, locale);
        F f3 = (F) this.f28879do.putIfAbsent(cdo, f2);
        return f3 != null ? f3 : f2;
    }

    /* renamed from: do */
    public abstract F mo32667do(String str, TimeZone timeZone, Locale locale);

    /* renamed from: for, reason: not valid java name */
    public F m32698for(int i, int i2, TimeZone timeZone, Locale locale) {
        return (F) m32696new(Integer.valueOf(i), Integer.valueOf(i2), timeZone, locale);
    }

    /* renamed from: goto, reason: not valid java name */
    public F m32699goto(int i, TimeZone timeZone, Locale locale) {
        return (F) m32696new(null, Integer.valueOf(i), timeZone, locale);
    }

    /* renamed from: if, reason: not valid java name */
    public F m32700if(int i, TimeZone timeZone, Locale locale) {
        return (F) m32696new(Integer.valueOf(i), null, timeZone, locale);
    }

    /* renamed from: try, reason: not valid java name */
    public F m32701try() {
        return (F) m32698for(3, 3, TimeZone.getDefault(), Locale.getDefault());
    }
}
