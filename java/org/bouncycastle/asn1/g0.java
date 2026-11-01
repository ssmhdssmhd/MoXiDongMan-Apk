package org.bouncycastle.asn1;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes3.dex */
class g0 {

    /* renamed from: do, reason: not valid java name */
    private static Long f29071do = m33028for(0);

    /* renamed from: if, reason: not valid java name */
    private static final Map f29073if = new HashMap();

    /* renamed from: for, reason: not valid java name */
    public static Locale f29072for = m33029if();

    /* renamed from: do, reason: not valid java name */
    public static Date m33027do(Date date) throws ParseException {
        Locale locale = Locale.getDefault();
        if (locale == null) {
            return date;
        }
        Map map = f29073if;
        synchronized (map) {
            Long lM33028for = (Long) map.get(locale);
            if (lM33028for == null) {
                long time = new SimpleDateFormat("yyyyMMddHHmmssz").parse("19700101000000GMT+00:00").getTime();
                lM33028for = time == 0 ? f29071do : m33028for(time);
                map.put(locale, lM33028for);
            }
            if (lM33028for != f29071do) {
                return new Date(date.getTime() - lM33028for.longValue());
            }
            return date;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static Long m33028for(long j) {
        return Long.valueOf(j);
    }

    /* renamed from: if, reason: not valid java name */
    private static Locale m33029if() {
        if ("en".equalsIgnoreCase(Locale.getDefault().getLanguage())) {
            return Locale.getDefault();
        }
        Locale[] availableLocales = Locale.getAvailableLocales();
        for (int i = 0; i != availableLocales.length; i++) {
            if ("en".equalsIgnoreCase(availableLocales[i].getLanguage())) {
                return availableLocales[i];
            }
        }
        return Locale.getDefault();
    }
}
