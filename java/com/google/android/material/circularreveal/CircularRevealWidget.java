package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.v4.zx0;
import android.util.Property;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.CircularRevealHelper;

/* loaded from: classes.dex */
public interface CircularRevealWidget extends CircularRevealHelper.Delegate {

    /* renamed from: com.google.android.material.circularreveal.CircularRevealWidget$for, reason: invalid class name */
    public static class Cfor extends Property<CircularRevealWidget, Ctry> {

        /* renamed from: do, reason: not valid java name */
        public static final Property<CircularRevealWidget, Ctry> f11664do = new Cfor("circularReveal");

        private Cfor(String str) {
            super(Ctry.class, str);
        }

        @Override // android.util.Property
        @Nullable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ctry get(@NonNull CircularRevealWidget circularRevealWidget) {
            return circularRevealWidget.getRevealInfo();
        }

        @Override // android.util.Property
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void set(@NonNull CircularRevealWidget circularRevealWidget, @Nullable Ctry ctry) {
            circularRevealWidget.setRevealInfo(ctry);
        }
    }

    /* renamed from: com.google.android.material.circularreveal.CircularRevealWidget$if, reason: invalid class name */
    public static class Cif implements TypeEvaluator<Ctry> {

        /* renamed from: if, reason: not valid java name */
        public static final TypeEvaluator<Ctry> f11665if = new Cif();

        /* renamed from: do, reason: not valid java name */
        private final Ctry f11666do = new Ctry();

        @Override // android.animation.TypeEvaluator
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ctry evaluate(float f, @NonNull Ctry ctry, @NonNull Ctry ctry2) {
            this.f11666do.m13108if(zx0.m10314case(ctry.f11669do, ctry2.f11669do, f), zx0.m10314case(ctry.f11671if, ctry2.f11671if, f), zx0.m10314case(ctry.f11670for, ctry2.f11670for, f));
            return this.f11666do;
        }
    }

    /* renamed from: com.google.android.material.circularreveal.CircularRevealWidget$new, reason: invalid class name */
    public static class Cnew extends Property<CircularRevealWidget, Integer> {

        /* renamed from: do, reason: not valid java name */
        public static final Property<CircularRevealWidget, Integer> f11667do = new Cnew("circularRevealScrimColor");

        private Cnew(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Integer get(@NonNull CircularRevealWidget circularRevealWidget) {
            return Integer.valueOf(circularRevealWidget.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void set(@NonNull CircularRevealWidget circularRevealWidget, @NonNull Integer num) {
            circularRevealWidget.setCircularRevealScrimColor(num.intValue());
        }
    }

    /* renamed from: com.google.android.material.circularreveal.CircularRevealWidget$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: new, reason: not valid java name */
        public static final float f11668new = Float.MAX_VALUE;

        /* renamed from: do, reason: not valid java name */
        public float f11669do;

        /* renamed from: for, reason: not valid java name */
        public float f11670for;

        /* renamed from: if, reason: not valid java name */
        public float f11671if;

        /* renamed from: do, reason: not valid java name */
        public boolean m13106do() {
            return this.f11670for == Float.MAX_VALUE;
        }

        /* renamed from: for, reason: not valid java name */
        public void m13107for(@NonNull Ctry ctry) {
            m13108if(ctry.f11669do, ctry.f11671if, ctry.f11670for);
        }

        /* renamed from: if, reason: not valid java name */
        public void m13108if(float f, float f2, float f3) {
            this.f11669do = f;
            this.f11671if = f2;
            this.f11670for = f3;
        }

        private Ctry() {
        }

        public Ctry(float f, float f2, float f3) {
            this.f11669do = f;
            this.f11671if = f2;
            this.f11670for = f3;
        }

        public Ctry(@NonNull Ctry ctry) {
            this(ctry.f11669do, ctry.f11671if, ctry.f11670for);
        }
    }

    void buildCircularRevealCache();

    void destroyCircularRevealCache();

    void draw(Canvas canvas);

    @Nullable
    Drawable getCircularRevealOverlayDrawable();

    @ColorInt
    int getCircularRevealScrimColor();

    @Nullable
    Ctry getRevealInfo();

    boolean isOpaque();

    void setCircularRevealOverlayDrawable(@Nullable Drawable drawable);

    void setCircularRevealScrimColor(@ColorInt int i);

    void setRevealInfo(@Nullable Ctry ctry);
}
