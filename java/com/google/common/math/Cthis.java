package com.google.common.math;

import android.support.v4.af1;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.primitives.Cnew;

@li0
@o8
/* renamed from: com.google.common.math.this, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cthis {

    /* renamed from: do, reason: not valid java name */
    private final Cclass f15421do = new Cclass();

    /* renamed from: if, reason: not valid java name */
    private final Cclass f15423if = new Cclass();

    /* renamed from: for, reason: not valid java name */
    private double f15422for = 0.0d;

    /* renamed from: new, reason: not valid java name */
    private static double m17358new(double d) {
        return Cnew.m17629case(d, -1.0d, 1.0d);
    }

    /* renamed from: try, reason: not valid java name */
    private double m17359try(double d) {
        if (d > 0.0d) {
            return d;
        }
        return Double.MIN_VALUE;
    }

    /* renamed from: break, reason: not valid java name */
    public Cgoto m17360break() {
        return new Cgoto(this.f15421do.m17274native(), this.f15423if.m17274native(), this.f15422for);
    }

    /* renamed from: case, reason: not valid java name */
    public final Ctry m17361case() {
        af1.t(m17366for() > 1);
        if (Double.isNaN(this.f15422for)) {
            return Ctry.m17371do();
        }
        double dM17277return = this.f15421do.m17277return();
        if (dM17277return > 0.0d) {
            return this.f15423if.m17277return() > 0.0d ? Ctry.m17370case(this.f15421do.m17266class(), this.f15423if.m17266class()).m17380if(this.f15422for / dM17277return) : Ctry.m17372if(this.f15423if.m17266class());
        }
        af1.t(this.f15423if.m17277return() > 0.0d);
        return Ctry.m17373this(this.f15421do.m17266class());
    }

    /* renamed from: catch, reason: not valid java name */
    public Ccatch m17362catch() {
        return this.f15421do.m17274native();
    }

    /* renamed from: class, reason: not valid java name */
    public Ccatch m17363class() {
        return this.f15423if.m17274native();
    }

    /* renamed from: do, reason: not valid java name */
    public void m17364do(double d, double d2) {
        this.f15421do.m17267do(d);
        if (!Cnew.m17637final(d) || !Cnew.m17637final(d2)) {
            this.f15422for = Double.NaN;
        } else if (this.f15421do.m17263break() > 1) {
            this.f15422for += (d - this.f15421do.m17266class()) * (d2 - this.f15423if.m17266class());
        }
        this.f15423if.m17267do(d2);
    }

    /* renamed from: else, reason: not valid java name */
    public final double m17365else() {
        af1.t(m17366for() > 1);
        if (Double.isNaN(this.f15422for)) {
            return Double.NaN;
        }
        double dM17277return = this.f15421do.m17277return();
        double dM17277return2 = this.f15423if.m17277return();
        af1.t(dM17277return > 0.0d);
        af1.t(dM17277return2 > 0.0d);
        return m17358new(this.f15422for / Math.sqrt(m17359try(dM17277return * dM17277return2)));
    }

    /* renamed from: for, reason: not valid java name */
    public long m17366for() {
        return this.f15421do.m17263break();
    }

    /* renamed from: goto, reason: not valid java name */
    public double m17367goto() {
        af1.t(m17366for() != 0);
        double d = this.f15422for;
        double dM17366for = m17366for();
        Double.isNaN(dM17366for);
        return d / dM17366for;
    }

    /* renamed from: if, reason: not valid java name */
    public void m17368if(Cgoto cgoto) {
        if (cgoto.count() == 0) {
            return;
        }
        this.f15421do.m17272if(cgoto.xStats());
        if (this.f15423if.m17263break() == 0) {
            this.f15422for = cgoto.sumOfProductsOfDeltas();
        } else {
            double d = this.f15422for;
            double dSumOfProductsOfDeltas = cgoto.sumOfProductsOfDeltas();
            double dMean = (cgoto.xStats().mean() - this.f15421do.m17266class()) * (cgoto.yStats().mean() - this.f15423if.m17266class());
            double dCount = cgoto.count();
            Double.isNaN(dCount);
            this.f15422for = d + dSumOfProductsOfDeltas + (dMean * dCount);
        }
        this.f15423if.m17272if(cgoto.yStats());
    }

    /* renamed from: this, reason: not valid java name */
    public final double m17369this() {
        af1.t(m17366for() > 1);
        double d = this.f15422for;
        double dM17366for = m17366for() - 1;
        Double.isNaN(dM17366for);
        return d / dM17366for;
    }
}
