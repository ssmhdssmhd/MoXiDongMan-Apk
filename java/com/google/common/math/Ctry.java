package com.google.common.math;

import android.support.v4.af1;
import android.support.v4.fs0;
import android.support.v4.li0;
import android.support.v4.o8;

@li0
@o8
/* renamed from: com.google.common.math.try, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Ctry {

    /* renamed from: com.google.common.math.try$for, reason: invalid class name */
    public static final class Cfor extends Ctry {

        /* renamed from: do, reason: not valid java name */
        public static final Cfor f15424do = new Cfor();

        private Cfor() {
        }

        @Override // com.google.common.math.Ctry
        /* renamed from: else */
        public double mo17374else() {
            return Double.NaN;
        }

        @Override // com.google.common.math.Ctry
        /* renamed from: for */
        public Ctry mo17375for() {
            return this;
        }

        @Override // com.google.common.math.Ctry
        /* renamed from: goto */
        public double mo17376goto(double d) {
            return Double.NaN;
        }

        @Override // com.google.common.math.Ctry
        /* renamed from: new */
        public boolean mo17377new() {
            return false;
        }

        public String toString() {
            return "NaN";
        }

        @Override // com.google.common.math.Ctry
        /* renamed from: try */
        public boolean mo17378try() {
            return false;
        }
    }

    /* renamed from: com.google.common.math.try$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        private final double f15425do;

        /* renamed from: if, reason: not valid java name */
        private final double f15426if;

        /* renamed from: do, reason: not valid java name */
        public Ctry m17379do(double d, double d2) {
            af1.m220new(com.google.common.math.Cfor.m17312new(d) && com.google.common.math.Cfor.m17312new(d2));
            double d3 = this.f15425do;
            if (d != d3) {
                return m17380if((d2 - this.f15426if) / (d - d3));
            }
            af1.m220new(d2 != this.f15426if);
            return new C0132try(this.f15425do);
        }

        /* renamed from: if, reason: not valid java name */
        public Ctry m17380if(double d) {
            af1.m220new(!Double.isNaN(d));
            return com.google.common.math.Cfor.m17312new(d) ? new Cnew(d, this.f15426if - (this.f15425do * d)) : new C0132try(this.f15425do);
        }

        private Cif(double d, double d2) {
            this.f15425do = d;
            this.f15426if = d2;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static Cif m17370case(double d, double d2) {
        af1.m220new(com.google.common.math.Cfor.m17312new(d) && com.google.common.math.Cfor.m17312new(d2));
        return new Cif(d, d2);
    }

    /* renamed from: do, reason: not valid java name */
    public static Ctry m17371do() {
        return Cfor.f15424do;
    }

    /* renamed from: if, reason: not valid java name */
    public static Ctry m17372if(double d) {
        af1.m220new(com.google.common.math.Cfor.m17312new(d));
        return new Cnew(0.0d, d);
    }

    /* renamed from: this, reason: not valid java name */
    public static Ctry m17373this(double d) {
        af1.m220new(com.google.common.math.Cfor.m17312new(d));
        return new C0132try(d);
    }

    /* renamed from: else, reason: not valid java name */
    public abstract double mo17374else();

    /* renamed from: for, reason: not valid java name */
    public abstract Ctry mo17375for();

    /* renamed from: goto, reason: not valid java name */
    public abstract double mo17376goto(double d);

    /* renamed from: new, reason: not valid java name */
    public abstract boolean mo17377new();

    /* renamed from: try, reason: not valid java name */
    public abstract boolean mo17378try();

    /* renamed from: com.google.common.math.try$try, reason: invalid class name and collision with other inner class name */
    public static final class C0132try extends Ctry {

        /* renamed from: do, reason: not valid java name */
        public final double f15430do;

        /* renamed from: if, reason: not valid java name */
        @fs0
        public Ctry f15431if;

        public C0132try(double d) {
            this.f15430do = d;
            this.f15431if = null;
        }

        /* renamed from: break, reason: not valid java name */
        private Ctry m17382break() {
            return new Cnew(0.0d, this.f15430do, this);
        }

        @Override // com.google.common.math.Ctry
        /* renamed from: else */
        public double mo17374else() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.math.Ctry
        /* renamed from: for */
        public Ctry mo17375for() {
            Ctry ctry = this.f15431if;
            if (ctry != null) {
                return ctry;
            }
            Ctry ctryM17382break = m17382break();
            this.f15431if = ctryM17382break;
            return ctryM17382break;
        }

        @Override // com.google.common.math.Ctry
        /* renamed from: goto */
        public double mo17376goto(double d) {
            throw new IllegalStateException();
        }

        @Override // com.google.common.math.Ctry
        /* renamed from: new */
        public boolean mo17377new() {
            return false;
        }

        public String toString() {
            return String.format("x = %g", Double.valueOf(this.f15430do));
        }

        @Override // com.google.common.math.Ctry
        /* renamed from: try */
        public boolean mo17378try() {
            return true;
        }

        public C0132try(double d, Ctry ctry) {
            this.f15430do = d;
            this.f15431if = ctry;
        }
    }

    /* renamed from: com.google.common.math.try$new, reason: invalid class name */
    public static final class Cnew extends Ctry {

        /* renamed from: do, reason: not valid java name */
        public final double f15427do;

        /* renamed from: for, reason: not valid java name */
        @fs0
        public Ctry f15428for;

        /* renamed from: if, reason: not valid java name */
        public final double f15429if;

        public Cnew(double d, double d2) {
            this.f15427do = d;
            this.f15429if = d2;
            this.f15428for = null;
        }

        /* renamed from: break, reason: not valid java name */
        private Ctry m17381break() {
            double d = this.f15427do;
            return d != 0.0d ? new Cnew(1.0d / d, (this.f15429if * (-1.0d)) / d, this) : new C0132try(this.f15429if, this);
        }

        @Override // com.google.common.math.Ctry
        /* renamed from: else */
        public double mo17374else() {
            return this.f15427do;
        }

        @Override // com.google.common.math.Ctry
        /* renamed from: for */
        public Ctry mo17375for() {
            Ctry ctry = this.f15428for;
            if (ctry != null) {
                return ctry;
            }
            Ctry ctryM17381break = m17381break();
            this.f15428for = ctryM17381break;
            return ctryM17381break;
        }

        @Override // com.google.common.math.Ctry
        /* renamed from: goto */
        public double mo17376goto(double d) {
            return (d * this.f15427do) + this.f15429if;
        }

        @Override // com.google.common.math.Ctry
        /* renamed from: new */
        public boolean mo17377new() {
            return this.f15427do == 0.0d;
        }

        public String toString() {
            return String.format("y = %g * x + %g", Double.valueOf(this.f15427do), Double.valueOf(this.f15429if));
        }

        @Override // com.google.common.math.Ctry
        /* renamed from: try */
        public boolean mo17378try() {
            return false;
        }

        public Cnew(double d, double d2, Ctry ctry) {
            this.f15427do = d;
            this.f15429if = d2;
            this.f15428for = ctry;
        }
    }
}
