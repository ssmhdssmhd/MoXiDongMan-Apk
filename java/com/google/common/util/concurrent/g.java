package com.google.common.util.concurrent;

import android.support.v4.li0;
import com.google.common.math.Ccase;
import com.google.common.util.concurrent.a;
import java.util.concurrent.TimeUnit;

@li0
/* loaded from: classes2.dex */
abstract class g extends a {

    /* renamed from: case, reason: not valid java name */
    private long f15761case;

    /* renamed from: for, reason: not valid java name */
    public double f15762for;

    /* renamed from: new, reason: not valid java name */
    public double f15763new;

    /* renamed from: try, reason: not valid java name */
    public double f15764try;

    /* renamed from: com.google.common.util.concurrent.g$for, reason: invalid class name */
    public static final class Cfor extends g {

        /* renamed from: break, reason: not valid java name */
        private double f15765break;

        /* renamed from: else, reason: not valid java name */
        private final long f15766else;

        /* renamed from: goto, reason: not valid java name */
        private double f15767goto;

        /* renamed from: this, reason: not valid java name */
        private double f15768this;

        public Cfor(a.Cdo cdo, long j, TimeUnit timeUnit, double d) {
            super(cdo);
            this.f15766else = timeUnit.toMicros(j);
            this.f15765break = d;
        }

        /* renamed from: extends, reason: not valid java name */
        private double m18167extends(double d) {
            return this.f15764try + (d * this.f15767goto);
        }

        @Override // com.google.common.util.concurrent.g
        /* renamed from: default */
        public long mo18163default(double d, double d2) {
            long jM18167extends;
            double d3 = d - this.f15768this;
            if (d3 > 0.0d) {
                double dMin = Math.min(d3, d2);
                jM18167extends = (long) (((m18167extends(d3) + m18167extends(d3 - dMin)) * dMin) / 2.0d);
                d2 -= dMin;
            } else {
                jM18167extends = 0;
            }
            return jM18167extends + ((long) (this.f15764try * d2));
        }

        @Override // com.google.common.util.concurrent.g
        /* renamed from: static */
        public double mo18164static() {
            double d = this.f15766else;
            double d2 = this.f15763new;
            Double.isNaN(d);
            return d / d2;
        }

        @Override // com.google.common.util.concurrent.g
        /* renamed from: switch */
        public void mo18165switch(double d, double d2) {
            double d3 = this.f15763new;
            double d4 = this.f15765break * d2;
            long j = this.f15766else;
            double d5 = j;
            Double.isNaN(d5);
            double d6 = (d5 * 0.5d) / d2;
            this.f15768this = d6;
            double d7 = j;
            Double.isNaN(d7);
            double d8 = ((d7 * 2.0d) / (d2 + d4)) + d6;
            this.f15763new = d8;
            this.f15767goto = (d4 - d2) / (d8 - d6);
            if (d3 == Double.POSITIVE_INFINITY) {
                this.f15762for = 0.0d;
                return;
            }
            if (d3 != 0.0d) {
                d8 = (this.f15762for * d8) / d3;
            }
            this.f15762for = d8;
        }
    }

    /* renamed from: com.google.common.util.concurrent.g$if, reason: invalid class name */
    public static final class Cif extends g {

        /* renamed from: else, reason: not valid java name */
        public final double f15769else;

        public Cif(a.Cdo cdo, double d) {
            super(cdo);
            this.f15769else = d;
        }

        @Override // com.google.common.util.concurrent.g
        /* renamed from: default */
        public long mo18163default(double d, double d2) {
            return 0L;
        }

        @Override // com.google.common.util.concurrent.g
        /* renamed from: static */
        public double mo18164static() {
            return this.f15764try;
        }

        @Override // com.google.common.util.concurrent.g
        /* renamed from: switch */
        public void mo18165switch(double d, double d2) {
            double d3 = this.f15763new;
            double d4 = this.f15769else * d;
            this.f15763new = d4;
            if (d3 == Double.POSITIVE_INFINITY) {
                this.f15762for = d4;
            } else {
                this.f15762for = d3 != 0.0d ? (this.f15762for * d4) / d3 : 0.0d;
            }
        }
    }

    @Override // com.google.common.util.concurrent.a
    /* renamed from: break */
    public final void mo18051break(double d, long j) {
        m18166throws(j);
        double micros = TimeUnit.SECONDS.toMicros(1L);
        Double.isNaN(micros);
        double d2 = micros / d;
        this.f15764try = d2;
        mo18165switch(d, d2);
    }

    @Override // com.google.common.util.concurrent.a
    /* renamed from: const */
    public final long mo18053const(long j) {
        return this.f15761case;
    }

    /* renamed from: default, reason: not valid java name */
    public abstract long mo18163default(double d, double d2);

    /* renamed from: static, reason: not valid java name */
    public abstract double mo18164static();

    /* renamed from: switch, reason: not valid java name */
    public abstract void mo18165switch(double d, double d2);

    @Override // com.google.common.util.concurrent.a
    /* renamed from: this */
    public final double mo18062this() {
        double micros = TimeUnit.SECONDS.toMicros(1L);
        double d = this.f15764try;
        Double.isNaN(micros);
        return micros / d;
    }

    @Override // com.google.common.util.concurrent.a
    /* renamed from: throw */
    public final long mo18063throw(int i, long j) {
        m18166throws(j);
        long j2 = this.f15761case;
        double d = i;
        double dMin = Math.min(d, this.f15762for);
        Double.isNaN(d);
        this.f15761case = Ccase.m17251switch(this.f15761case, mo18163default(this.f15762for, dMin) + ((long) ((d - dMin) * this.f15764try)));
        this.f15762for -= dMin;
        return j2;
    }

    /* renamed from: throws, reason: not valid java name */
    public void m18166throws(long j) {
        long j2 = this.f15761case;
        if (j > j2) {
            double d = j - j2;
            double dMo18164static = mo18164static();
            Double.isNaN(d);
            this.f15762for = Math.min(this.f15763new, this.f15762for + (d / dMo18164static));
            this.f15761case = j;
        }
    }

    private g(a.Cdo cdo) {
        super(cdo);
        this.f15761case = 0L;
    }
}
