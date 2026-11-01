package com.google.android.material.datepicker;

import androidx.annotation.Nullable;
import java.util.Calendar;
import java.util.TimeZone;

/* renamed from: com.google.android.material.datepicker.this, reason: invalid class name */
/* loaded from: classes.dex */
class Cthis {

    /* renamed from: for, reason: not valid java name */
    private static final Cthis f11856for = new Cthis(null, null);

    /* renamed from: do, reason: not valid java name */
    @Nullable
    private final Long f11857do;

    /* renamed from: if, reason: not valid java name */
    @Nullable
    private final TimeZone f11858if;

    private Cthis(@Nullable Long l, @Nullable TimeZone timeZone) {
        this.f11857do = l;
        this.f11858if = timeZone;
    }

    /* renamed from: do, reason: not valid java name */
    public static Cthis m13333do(long j) {
        return new Cthis(Long.valueOf(j), null);
    }

    /* renamed from: if, reason: not valid java name */
    public static Cthis m13334if(long j, @Nullable TimeZone timeZone) {
        return new Cthis(Long.valueOf(j), timeZone);
    }

    /* renamed from: try, reason: not valid java name */
    public static Cthis m13335try() {
        return f11856for;
    }

    /* renamed from: for, reason: not valid java name */
    public Calendar m13336for() {
        return m13337new(this.f11858if);
    }

    /* renamed from: new, reason: not valid java name */
    public Calendar m13337new(@Nullable TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l = this.f11857do;
        if (l != null) {
            calendar.setTimeInMillis(l.longValue());
        }
        return calendar;
    }
}
