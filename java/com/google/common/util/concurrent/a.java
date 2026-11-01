package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Cthrows;
import com.google.common.util.concurrent.g;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

@li0
@o8
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: do, reason: not valid java name */
    private final Cdo f15661do;

    /* renamed from: if, reason: not valid java name */
    @l01
    private volatile Object f15662if;

    /* renamed from: com.google.common.util.concurrent.a$do, reason: invalid class name */
    public static abstract class Cdo {

        /* renamed from: com.google.common.util.concurrent.a$do$do, reason: invalid class name and collision with other inner class name */
        public static class C0145do extends Cdo {

            /* renamed from: do, reason: not valid java name */
            public final Cthrows f15663do = Cthrows.m15209for();

            @Override // com.google.common.util.concurrent.a.Cdo
            /* renamed from: for */
            public void mo18066for(long j) {
                if (j > 0) {
                    m.m18260this(j, TimeUnit.MICROSECONDS);
                }
            }

            @Override // com.google.common.util.concurrent.a.Cdo
            /* renamed from: if */
            public long mo18067if() {
                return this.f15663do.m15217else(TimeUnit.MICROSECONDS);
            }
        }

        /* renamed from: do, reason: not valid java name */
        public static Cdo m18065do() {
            return new C0145do();
        }

        /* renamed from: for, reason: not valid java name */
        public abstract void mo18066for(long j);

        /* renamed from: if, reason: not valid java name */
        public abstract long mo18067if();
    }

    public a(Cdo cdo) {
        this.f15661do = (Cdo) af1.m205continue(cdo);
    }

    /* renamed from: case, reason: not valid java name */
    public static a m18044case(double d, long j, TimeUnit timeUnit) {
        af1.m232throw(j >= 0, "warmupPeriod must not be negative: %s", j);
        return m18046else(d, j, timeUnit, 3.0d, Cdo.m18065do());
    }

    /* renamed from: class, reason: not valid java name */
    private Object m18045class() {
        Object obj = this.f15662if;
        if (obj == null) {
            synchronized (this) {
                obj = this.f15662if;
                if (obj == null) {
                    obj = new Object();
                    this.f15662if = obj;
                }
            }
        }
        return obj;
    }

    @af2
    /* renamed from: else, reason: not valid java name */
    public static a m18046else(double d, long j, TimeUnit timeUnit, double d2, Cdo cdo) {
        g.Cfor cfor = new g.Cfor(cdo, j, timeUnit, d2);
        cfor.m18064while(d);
        return cfor;
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m18047for(long j, long j2) {
        return mo18053const(j) - j2 <= j;
    }

    @af2
    /* renamed from: goto, reason: not valid java name */
    public static a m18048goto(double d, Cdo cdo) {
        g.Cif cif = new g.Cif(cdo, 1.0d);
        cif.m18064while(d);
        return cif;
    }

    /* renamed from: new, reason: not valid java name */
    private static void m18049new(int i) {
        af1.m202catch(i > 0, "Requested permits (%s) must be positive", i);
    }

    /* renamed from: try, reason: not valid java name */
    public static a m18050try(double d) {
        return m18048goto(d, Cdo.m18065do());
    }

    /* renamed from: break, reason: not valid java name */
    public abstract void mo18051break(double d, long j);

    /* renamed from: catch, reason: not valid java name */
    public final double m18052catch() {
        double dMo18062this;
        synchronized (m18045class()) {
            dMo18062this = mo18062this();
        }
        return dMo18062this;
    }

    /* renamed from: const, reason: not valid java name */
    public abstract long mo18053const(long j);

    @lf
    /* renamed from: do, reason: not valid java name */
    public double m18054do() {
        return m18056if(1);
    }

    /* renamed from: final, reason: not valid java name */
    public final long m18055final(int i) {
        long jM18061super;
        m18049new(i);
        synchronized (m18045class()) {
            jM18061super = m18061super(i, this.f15661do.mo18067if());
        }
        return jM18061super;
    }

    @lf
    /* renamed from: if, reason: not valid java name */
    public double m18056if(int i) {
        long jM18055final = m18055final(i);
        this.f15661do.mo18066for(jM18055final);
        double d = jM18055final;
        Double.isNaN(d);
        double micros = TimeUnit.SECONDS.toMicros(1L);
        Double.isNaN(micros);
        return (d * 1.0d) / micros;
    }

    /* renamed from: import, reason: not valid java name */
    public boolean m18057import() {
        return m18059public(1, 0L, TimeUnit.MICROSECONDS);
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m18058native(int i) {
        return m18059public(i, 0L, TimeUnit.MICROSECONDS);
    }

    /* renamed from: public, reason: not valid java name */
    public boolean m18059public(int i, long j, TimeUnit timeUnit) {
        long jMax = Math.max(timeUnit.toMicros(j), 0L);
        m18049new(i);
        synchronized (m18045class()) {
            long jMo18067if = this.f15661do.mo18067if();
            if (!m18047for(jMo18067if, jMax)) {
                return false;
            }
            this.f15661do.mo18066for(m18061super(i, jMo18067if));
            return true;
        }
    }

    /* renamed from: return, reason: not valid java name */
    public boolean m18060return(long j, TimeUnit timeUnit) {
        return m18059public(1, j, timeUnit);
    }

    /* renamed from: super, reason: not valid java name */
    public final long m18061super(int i, long j) {
        return Math.max(mo18063throw(i, j) - j, 0L);
    }

    /* renamed from: this, reason: not valid java name */
    public abstract double mo18062this();

    /* renamed from: throw, reason: not valid java name */
    public abstract long mo18063throw(int i, long j);

    public String toString() {
        return String.format(Locale.ROOT, "RateLimiter[stableRate=%3.1fqps]", Double.valueOf(m18052catch()));
    }

    /* renamed from: while, reason: not valid java name */
    public final void m18064while(double d) {
        af1.m235try(d > 0.0d && !Double.isNaN(d), "rate must be positive");
        synchronized (m18045class()) {
            mo18051break(d, this.f15661do.mo18067if());
        }
    }
}
