package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Build;
import android.text.format.DateUtils;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* renamed from: com.google.android.material.datepicker.new, reason: invalid class name */
/* loaded from: classes.dex */
class Cnew {
    private Cnew() {
    }

    /* renamed from: break, reason: not valid java name */
    public static String m13320break(long j) {
        return m13322catch(j, Locale.getDefault());
    }

    /* renamed from: case, reason: not valid java name */
    public static String m13321case(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? Cbreak.m13277for(locale).format(new Date(j)) : Cbreak.m13270const(locale).format(new Date(j));
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m13322catch(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? Cbreak.m13290throws(locale).format(new Date(j)) : Cbreak.m13268catch(locale).format(new Date(j));
    }

    /* renamed from: class, reason: not valid java name */
    public static String m13323class(long j) {
        return m13324const(j, Locale.getDefault());
    }

    /* renamed from: const, reason: not valid java name */
    public static String m13324const(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? Cbreak.m13271default(locale).format(new Date(j)) : Cbreak.m13288this(locale).format(new Date(j));
    }

    /* renamed from: do, reason: not valid java name */
    public static Pair<String, String> m13325do(@Nullable Long l, @Nullable Long l2) {
        return m13329if(l, l2, null);
    }

    /* renamed from: else, reason: not valid java name */
    public static String m13326else(long j) {
        return m13328goto(j, Locale.getDefault());
    }

    /* renamed from: for, reason: not valid java name */
    public static String m13327for(long j) {
        return m13330new(j, null);
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m13328goto(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? Cbreak.m13282new(locale).format(new Date(j)) : Cbreak.m13288this(locale).format(new Date(j));
    }

    /* renamed from: if, reason: not valid java name */
    public static Pair<String, String> m13329if(@Nullable Long l, @Nullable Long l2, @Nullable SimpleDateFormat simpleDateFormat) {
        if (l == null && l2 == null) {
            return Pair.create(null, null);
        }
        if (l == null) {
            return Pair.create(null, m13330new(l2.longValue(), simpleDateFormat));
        }
        if (l2 == null) {
            return Pair.create(m13330new(l.longValue(), simpleDateFormat), null);
        }
        Calendar calendarM13283public = Cbreak.m13283public();
        Calendar calendarM13285static = Cbreak.m13285static();
        calendarM13285static.setTimeInMillis(l.longValue());
        Calendar calendarM13285static2 = Cbreak.m13285static();
        calendarM13285static2.setTimeInMillis(l2.longValue());
        if (simpleDateFormat != null) {
            return Pair.create(simpleDateFormat.format(new Date(l.longValue())), simpleDateFormat.format(new Date(l2.longValue())));
        }
        return calendarM13285static.get(1) == calendarM13285static2.get(1) ? calendarM13285static.get(1) == calendarM13283public.get(1) ? Pair.create(m13321case(l.longValue(), Locale.getDefault()), m13321case(l2.longValue(), Locale.getDefault())) : Pair.create(m13321case(l.longValue(), Locale.getDefault()), m13322catch(l2.longValue(), Locale.getDefault())) : Pair.create(m13322catch(l.longValue(), Locale.getDefault()), m13322catch(l2.longValue(), Locale.getDefault()));
    }

    /* renamed from: new, reason: not valid java name */
    public static String m13330new(long j, @Nullable SimpleDateFormat simpleDateFormat) {
        Calendar calendarM13283public = Cbreak.m13283public();
        Calendar calendarM13285static = Cbreak.m13285static();
        calendarM13285static.setTimeInMillis(j);
        return simpleDateFormat != null ? simpleDateFormat.format(new Date(j)) : calendarM13283public.get(1) == calendarM13285static.get(1) ? m13332try(j) : m13320break(j);
    }

    /* renamed from: this, reason: not valid java name */
    public static String m13331this(Context context, long j) {
        return DateUtils.formatDateTime(context, j - TimeZone.getDefault().getOffset(j), 36);
    }

    /* renamed from: try, reason: not valid java name */
    public static String m13332try(long j) {
        return m13321case(j, Locale.getDefault());
    }
}
