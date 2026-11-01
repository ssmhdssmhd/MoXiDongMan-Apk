package com.google.common.math;

import android.support.v4.af1;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.primitives.Cnew;
import java.util.Iterator;

@li0
@o8
/* renamed from: com.google.common.math.class, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cclass {

    /* renamed from: do, reason: not valid java name */
    private long f15386do = 0;

    /* renamed from: if, reason: not valid java name */
    private double f15388if = 0.0d;

    /* renamed from: for, reason: not valid java name */
    private double f15387for = 0.0d;

    /* renamed from: new, reason: not valid java name */
    private double f15389new = Double.NaN;

    /* renamed from: try, reason: not valid java name */
    private double f15390try = Double.NaN;

    /* renamed from: const, reason: not valid java name */
    private void m17261const(long j, double d, double d2, double d3, double d4) {
        long j2 = this.f15386do;
        if (j2 == 0) {
            this.f15386do = j;
            this.f15388if = d;
            this.f15387for = d2;
            this.f15389new = d3;
            this.f15390try = d4;
            return;
        }
        this.f15386do = j2 + j;
        if (Cnew.m17637final(this.f15388if) && Cnew.m17637final(d)) {
            double d5 = this.f15388if;
            double d6 = d - d5;
            double d7 = j;
            Double.isNaN(d7);
            double d8 = this.f15386do;
            Double.isNaN(d8);
            double d9 = d5 + ((d6 * d7) / d8);
            this.f15388if = d9;
            double d10 = this.f15387for;
            Double.isNaN(d7);
            this.f15387for = d10 + d2 + (d6 * (d - d9) * d7);
        } else {
            this.f15388if = m17262this(this.f15388if, d);
            this.f15387for = Double.NaN;
        }
        this.f15389new = Math.min(this.f15389new, d3);
        this.f15390try = Math.max(this.f15390try, d4);
    }

    /* renamed from: this, reason: not valid java name */
    public static double m17262this(double d, double d2) {
        if (Cnew.m17637final(d)) {
            return d2;
        }
        if (Cnew.m17637final(d2) || d == d2) {
            return d;
        }
        return Double.NaN;
    }

    /* renamed from: break, reason: not valid java name */
    public long m17263break() {
        return this.f15386do;
    }

    /* renamed from: case, reason: not valid java name */
    public void m17264case(double... dArr) {
        for (double d : dArr) {
            m17267do(d);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public double m17265catch() {
        af1.t(this.f15386do != 0);
        return this.f15390try;
    }

    /* renamed from: class, reason: not valid java name */
    public double m17266class() {
        af1.t(this.f15386do != 0);
        return this.f15388if;
    }

    /* renamed from: do, reason: not valid java name */
    public void m17267do(double d) {
        long j = this.f15386do;
        if (j == 0) {
            this.f15386do = 1L;
            this.f15388if = d;
            this.f15389new = d;
            this.f15390try = d;
            if (Cnew.m17637final(d)) {
                return;
            }
            this.f15387for = Double.NaN;
            return;
        }
        this.f15386do = j + 1;
        if (Cnew.m17637final(d) && Cnew.m17637final(this.f15388if)) {
            double d2 = this.f15388if;
            double d3 = d - d2;
            double d4 = this.f15386do;
            Double.isNaN(d4);
            double d5 = d2 + (d3 / d4);
            this.f15388if = d5;
            this.f15387for += d3 * (d - d5);
        } else {
            this.f15388if = m17262this(this.f15388if, d);
            this.f15387for = Double.NaN;
        }
        this.f15389new = Math.min(this.f15389new, d);
        this.f15390try = Math.max(this.f15390try, d);
    }

    /* renamed from: else, reason: not valid java name */
    public void m17268else(int... iArr) {
        for (int i : iArr) {
            m17267do(i);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public double m17269final() {
        af1.t(this.f15386do != 0);
        return this.f15389new;
    }

    /* renamed from: for, reason: not valid java name */
    public void m17270for(Cclass cclass) {
        if (cclass.m17263break() == 0) {
            return;
        }
        m17261const(cclass.m17263break(), cclass.m17266class(), cclass.m17277return(), cclass.m17269final(), cclass.m17265catch());
    }

    /* renamed from: goto, reason: not valid java name */
    public void m17271goto(long... jArr) {
        for (long j : jArr) {
            m17267do(j);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m17272if(Ccatch ccatch) {
        if (ccatch.count() == 0) {
            return;
        }
        m17261const(ccatch.count(), ccatch.mean(), ccatch.sumOfSquaresOfDeltas(), ccatch.min(), ccatch.max());
    }

    /* renamed from: import, reason: not valid java name */
    public final double m17273import() {
        af1.t(this.f15386do > 1);
        if (Double.isNaN(this.f15387for)) {
            return Double.NaN;
        }
        double dM17311if = Cfor.m17311if(this.f15387for);
        double d = this.f15386do - 1;
        Double.isNaN(d);
        return dM17311if / d;
    }

    /* renamed from: native, reason: not valid java name */
    public Ccatch m17274native() {
        return new Ccatch(this.f15386do, this.f15388if, this.f15387for, this.f15389new, this.f15390try);
    }

    /* renamed from: new, reason: not valid java name */
    public void m17275new(Iterable<? extends Number> iterable) {
        Iterator<? extends Number> it = iterable.iterator();
        while (it.hasNext()) {
            m17267do(it.next().doubleValue());
        }
    }

    /* renamed from: public, reason: not valid java name */
    public final double m17276public() {
        double d = this.f15388if;
        double d2 = this.f15386do;
        Double.isNaN(d2);
        return d * d2;
    }

    /* renamed from: return, reason: not valid java name */
    public double m17277return() {
        return this.f15387for;
    }

    /* renamed from: super, reason: not valid java name */
    public final double m17278super() {
        return Math.sqrt(m17279throw());
    }

    /* renamed from: throw, reason: not valid java name */
    public final double m17279throw() {
        af1.t(this.f15386do != 0);
        if (Double.isNaN(this.f15387for)) {
            return Double.NaN;
        }
        if (this.f15386do == 1) {
            return 0.0d;
        }
        double dM17311if = Cfor.m17311if(this.f15387for);
        double d = this.f15386do;
        Double.isNaN(d);
        return dM17311if / d;
    }

    /* renamed from: try, reason: not valid java name */
    public void m17280try(Iterator<? extends Number> it) {
        while (it.hasNext()) {
            m17267do(it.next().doubleValue());
        }
    }

    /* renamed from: while, reason: not valid java name */
    public final double m17281while() {
        return Math.sqrt(m17273import());
    }
}
