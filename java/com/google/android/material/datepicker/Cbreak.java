package com.google.android.material.datepicker;

import android.annotation.TargetApi;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.lang3.Cclass;

/* renamed from: com.google.android.material.datepicker.break, reason: invalid class name */
/* loaded from: classes.dex */
class Cbreak {

    /* renamed from: do, reason: not valid java name */
    public static final String f11820do = "UTC";

    /* renamed from: if, reason: not valid java name */
    public static AtomicReference<Cthis> f11821if = new AtomicReference<>();

    private Cbreak() {
    }

    /* renamed from: break, reason: not valid java name */
    public static DateFormat m13266break() {
        return m13268catch(Locale.getDefault());
    }

    /* renamed from: case, reason: not valid java name */
    public static Calendar m13267case(Calendar calendar) {
        Calendar calendarM13287switch = m13287switch(calendar);
        Calendar calendarM13285static = m13285static();
        calendarM13285static.set(calendarM13287switch.get(1), calendarM13287switch.get(2), calendarM13287switch.get(5));
        return calendarM13285static;
    }

    /* renamed from: catch, reason: not valid java name */
    public static DateFormat m13268catch(Locale locale) {
        return m13273else(2, locale);
    }

    /* renamed from: class, reason: not valid java name */
    public static DateFormat m13269class() {
        return m13270const(Locale.getDefault());
    }

    /* renamed from: const, reason: not valid java name */
    public static DateFormat m13270const(Locale locale) {
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) m13268catch(locale);
        simpleDateFormat.applyPattern(m13274extends(simpleDateFormat.toPattern()));
        return simpleDateFormat;
    }

    @TargetApi(24)
    /* renamed from: default, reason: not valid java name */
    public static android.icu.text.DateFormat m13271default(Locale locale) {
        return m13291try("yMMMEd", locale);
    }

    /* renamed from: do, reason: not valid java name */
    public static long m13272do(long j) {
        Calendar calendarM13285static = m13285static();
        calendarM13285static.setTimeInMillis(j);
        return m13267case(calendarM13285static).getTimeInMillis();
    }

    /* renamed from: else, reason: not valid java name */
    private static DateFormat m13273else(int i, Locale locale) {
        DateFormat dateInstance = DateFormat.getDateInstance(i, locale);
        dateInstance.setTimeZone(m13281native());
        return dateInstance;
    }

    @NonNull
    /* renamed from: extends, reason: not valid java name */
    private static String m13274extends(@NonNull String str) {
        int iM13279if = m13279if(str, "yY", 1, 0);
        if (iM13279if >= str.length()) {
            return str;
        }
        String str2 = "EMd";
        int iM13279if2 = m13279if(str, "EMd", 1, iM13279if);
        if (iM13279if2 < str.length()) {
            str2 = "EMd,";
        }
        return str.replace(str.substring(m13279if(str, str2, -1, iM13279if) + 1, iM13279if2), Cclass.f28652do).trim();
    }

    /* renamed from: final, reason: not valid java name */
    public static SimpleDateFormat m13275final(String str) {
        return m13286super(str, Locale.getDefault());
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m13276finally(@Nullable Cthis cthis) {
        f11821if.set(cthis);
    }

    @TargetApi(24)
    /* renamed from: for, reason: not valid java name */
    public static android.icu.text.DateFormat m13277for(Locale locale) {
        return m13291try("MMMd", locale);
    }

    /* renamed from: goto, reason: not valid java name */
    public static DateFormat m13278goto() {
        return m13288this(Locale.getDefault());
    }

    /* renamed from: if, reason: not valid java name */
    private static int m13279if(@NonNull String str, @NonNull String str2, int i, int i2) {
        while (i2 >= 0 && i2 < str.length() && str2.indexOf(str.charAt(i2)) == -1) {
            if (str.charAt(i2) == '\'') {
                do {
                    i2 += i;
                    if (i2 < 0 || i2 >= str.length()) {
                        break;
                    }
                } while (str.charAt(i2) != '\'');
            }
            i2 += i;
        }
        return i2;
    }

    /* renamed from: import, reason: not valid java name */
    public static Cthis m13280import() {
        Cthis cthis = f11821if.get();
        return cthis == null ? Cthis.m13335try() : cthis;
    }

    /* renamed from: native, reason: not valid java name */
    private static TimeZone m13281native() {
        return TimeZone.getTimeZone(f11820do);
    }

    @TargetApi(24)
    /* renamed from: new, reason: not valid java name */
    public static android.icu.text.DateFormat m13282new(Locale locale) {
        return m13291try("MMMEd", locale);
    }

    /* renamed from: public, reason: not valid java name */
    public static Calendar m13283public() {
        Calendar calendarM13336for = m13280import().m13336for();
        calendarM13336for.set(11, 0);
        calendarM13336for.set(12, 0);
        calendarM13336for.set(13, 0);
        calendarM13336for.set(14, 0);
        calendarM13336for.setTimeZone(m13281native());
        return calendarM13336for;
    }

    @TargetApi(24)
    /* renamed from: return, reason: not valid java name */
    private static android.icu.util.TimeZone m13284return() {
        return android.icu.util.TimeZone.getTimeZone(f11820do);
    }

    /* renamed from: static, reason: not valid java name */
    public static Calendar m13285static() {
        return m13287switch(null);
    }

    /* renamed from: super, reason: not valid java name */
    private static SimpleDateFormat m13286super(String str, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(m13281native());
        return simpleDateFormat;
    }

    /* renamed from: switch, reason: not valid java name */
    public static Calendar m13287switch(@Nullable Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(m13281native());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }

    /* renamed from: this, reason: not valid java name */
    public static DateFormat m13288this(Locale locale) {
        return m13273else(0, locale);
    }

    /* renamed from: throw, reason: not valid java name */
    public static SimpleDateFormat m13289throw() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(((SimpleDateFormat) DateFormat.getDateInstance(3, Locale.getDefault())).toLocalizedPattern().replaceAll("\\s+", ""), Locale.getDefault());
        simpleDateFormat.setTimeZone(m13281native());
        simpleDateFormat.setLenient(false);
        return simpleDateFormat;
    }

    @TargetApi(24)
    /* renamed from: throws, reason: not valid java name */
    public static android.icu.text.DateFormat m13290throws(Locale locale) {
        return m13291try("yMMMd", locale);
    }

    @TargetApi(24)
    /* renamed from: try, reason: not valid java name */
    private static android.icu.text.DateFormat m13291try(String str, Locale locale) {
        android.icu.text.DateFormat instanceForSkeleton = android.icu.text.DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(m13284return());
        return instanceForSkeleton;
    }

    /* renamed from: while, reason: not valid java name */
    public static String m13292while(Resources resources, SimpleDateFormat simpleDateFormat) throws Resources.NotFoundException {
        String localizedPattern = simpleDateFormat.toLocalizedPattern();
        return localizedPattern.replaceAll("d", resources.getString(R.string.mtrl_picker_text_input_day_abbr)).replaceAll("M", resources.getString(R.string.mtrl_picker_text_input_month_abbr)).replaceAll("y", resources.getString(R.string.mtrl_picker_text_input_year_abbr));
    }
}
