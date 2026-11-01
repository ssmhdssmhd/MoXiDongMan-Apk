package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.support.v4.px0;
import android.support.v4.sx0;
import androidx.annotation.NonNull;
import com.google.android.material.R;

/* renamed from: com.google.android.material.datepicker.if, reason: invalid class name */
/* loaded from: classes.dex */
final class Cif {

    /* renamed from: case, reason: not valid java name */
    @NonNull
    public final Cdo f11848case;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    public final Cdo f11849do;

    /* renamed from: else, reason: not valid java name */
    @NonNull
    public final Cdo f11850else;

    /* renamed from: for, reason: not valid java name */
    @NonNull
    public final Cdo f11851for;

    /* renamed from: goto, reason: not valid java name */
    @NonNull
    public final Paint f11852goto;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    public final Cdo f11853if;

    /* renamed from: new, reason: not valid java name */
    @NonNull
    public final Cdo f11854new;

    /* renamed from: try, reason: not valid java name */
    @NonNull
    public final Cdo f11855try;

    public Cif(@NonNull Context context) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(px0.m6244else(context, R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), R.styleable.MaterialCalendar);
        this.f11849do = Cdo.m13307do(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_dayStyle, 0));
        this.f11850else = Cdo.m13307do(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_dayInvalidStyle, 0));
        this.f11853if = Cdo.m13307do(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_daySelectedStyle, 0));
        this.f11851for = Cdo.m13307do(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList colorStateListM7649do = sx0.m7649do(context, typedArrayObtainStyledAttributes, R.styleable.MaterialCalendar_rangeFillColor);
        this.f11854new = Cdo.m13307do(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_yearStyle, 0));
        this.f11855try = Cdo.m13307do(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_yearSelectedStyle, 0));
        this.f11848case = Cdo.m13307do(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_yearTodayStyle, 0));
        Paint paint = new Paint();
        this.f11852goto = paint;
        paint.setColor(colorStateListM7649do.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
