package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.lf;
import com.umeng.analytics.pro.ak;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.Cclass;

@ki0
/* renamed from: com.google.common.base.throws, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cthrows {

    /* renamed from: do, reason: not valid java name */
    private final Cfinally f13736do;

    /* renamed from: for, reason: not valid java name */
    private long f13737for;

    /* renamed from: if, reason: not valid java name */
    private boolean f13738if;

    /* renamed from: new, reason: not valid java name */
    private long f13739new;

    /* renamed from: com.google.common.base.throws$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f13740do;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            f13740do = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13740do[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13740do[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13740do[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13740do[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13740do[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f13740do[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public Cthrows() {
        this.f13736do = Cfinally.m15099if();
    }

    /* renamed from: case, reason: not valid java name */
    public static Cthrows m15207case(Cfinally cfinally) {
        return new Cthrows(cfinally);
    }

    /* renamed from: do, reason: not valid java name */
    private static String m15208do(TimeUnit timeUnit) {
        switch (Cdo.f13740do[timeUnit.ordinal()]) {
            case 1:
                return "ns";
            case 2:
                return "μs";
            case 3:
                return "ms";
            case 4:
                return ak.aB;
            case 5:
                return "min";
            case 6:
                return "h";
            case 7:
                return "d";
            default:
                throw new AssertionError();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Cthrows m15209for() {
        return new Cthrows().m15215catch();
    }

    /* renamed from: goto, reason: not valid java name */
    private long m15210goto() {
        return this.f13738if ? (this.f13736do.mo15100do() - this.f13739new) + this.f13737for : this.f13737for;
    }

    /* renamed from: if, reason: not valid java name */
    private static TimeUnit m15211if(long j) {
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (timeUnit.convert(j, timeUnit2) > 0) {
            return timeUnit;
        }
        TimeUnit timeUnit3 = TimeUnit.HOURS;
        if (timeUnit3.convert(j, timeUnit2) > 0) {
            return timeUnit3;
        }
        TimeUnit timeUnit4 = TimeUnit.MINUTES;
        if (timeUnit4.convert(j, timeUnit2) > 0) {
            return timeUnit4;
        }
        TimeUnit timeUnit5 = TimeUnit.SECONDS;
        if (timeUnit5.convert(j, timeUnit2) > 0) {
            return timeUnit5;
        }
        TimeUnit timeUnit6 = TimeUnit.MILLISECONDS;
        if (timeUnit6.convert(j, timeUnit2) > 0) {
            return timeUnit6;
        }
        TimeUnit timeUnit7 = TimeUnit.MICROSECONDS;
        return timeUnit7.convert(j, timeUnit2) > 0 ? timeUnit7 : timeUnit2;
    }

    /* renamed from: new, reason: not valid java name */
    public static Cthrows m15212new(Cfinally cfinally) {
        return new Cthrows(cfinally).m15215catch();
    }

    /* renamed from: try, reason: not valid java name */
    public static Cthrows m15213try() {
        return new Cthrows();
    }

    @lf
    /* renamed from: break, reason: not valid java name */
    public Cthrows m15214break() {
        this.f13737for = 0L;
        this.f13738if = false;
        return this;
    }

    @lf
    /* renamed from: catch, reason: not valid java name */
    public Cthrows m15215catch() {
        af1.u(!this.f13738if, "This stopwatch is already running.");
        this.f13738if = true;
        this.f13739new = this.f13736do.mo15100do();
        return this;
    }

    @lf
    /* renamed from: class, reason: not valid java name */
    public Cthrows m15216class() {
        long jMo15100do = this.f13736do.mo15100do();
        af1.u(this.f13738if, "This stopwatch is already stopped.");
        this.f13738if = false;
        this.f13737for += jMo15100do - this.f13739new;
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public long m15217else(TimeUnit timeUnit) {
        return timeUnit.convert(m15210goto(), TimeUnit.NANOSECONDS);
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m15218this() {
        return this.f13738if;
    }

    public String toString() {
        long jM15210goto = m15210goto();
        TimeUnit timeUnitM15211if = m15211if(jM15210goto);
        double d = jM15210goto;
        double dConvert = TimeUnit.NANOSECONDS.convert(1L, timeUnitM15211if);
        Double.isNaN(d);
        Double.isNaN(dConvert);
        return Cnative.m15118new(d / dConvert) + Cclass.f28652do + m15208do(timeUnitM15211if);
    }

    public Cthrows(Cfinally cfinally) {
        this.f13736do = (Cfinally) af1.m227strictfp(cfinally, "ticker");
    }
}
