package com.google.android.material.timepicker;

import androidx.annotation.IntRange;
import androidx.annotation.StringRes;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
interface TimePickerControls {

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.material.timepicker.TimePickerControls$do, reason: invalid class name */
    public @interface Cdo {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.material.timepicker.TimePickerControls$if, reason: invalid class name */
    public @interface Cif {
    }

    void setActiveSelection(int i);

    void setHandRotation(float f);

    void setValues(String[] strArr, @StringRes int i);

    void updateTime(int i, int i2, @IntRange(from = 0) int i3);
}
