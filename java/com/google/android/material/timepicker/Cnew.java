package com.google.android.material.timepicker;

import android.os.Build;
import android.view.accessibility.AccessibilityManager;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.material.R;
import com.google.android.material.timepicker.ClockHandView;
import com.google.android.material.timepicker.TimePickerView;

/* renamed from: com.google.android.material.timepicker.new, reason: invalid class name */
/* loaded from: classes.dex */
class Cnew implements ClockHandView.OnRotateListener, TimePickerView.OnSelectionChange, TimePickerView.OnPeriodChangeListener, ClockHandView.OnActionUpListener, TimePickerPresenter {

    /* renamed from: break, reason: not valid java name */
    private static final int f13173break = 6;

    /* renamed from: case, reason: not valid java name */
    private static final String[] f13174case = {"12", "1", ExifInterface.GPS_MEASUREMENT_2D, ExifInterface.GPS_MEASUREMENT_3D, "4", "5", "6", "7", "8", "9", "10", "11"};

    /* renamed from: else, reason: not valid java name */
    private static final String[] f13175else = {"00", ExifInterface.GPS_MEASUREMENT_2D, "4", "6", "8", "10", "12", "14", "16", "18", "20", "22"};

    /* renamed from: goto, reason: not valid java name */
    private static final String[] f13176goto = {"00", "5", "10", "15", "20", "25", "30", "35", "40", "45", "50", "55"};

    /* renamed from: this, reason: not valid java name */
    private static final int f13177this = 30;

    /* renamed from: do, reason: not valid java name */
    private TimePickerView f13178do;

    /* renamed from: for, reason: not valid java name */
    private float f13179for;

    /* renamed from: if, reason: not valid java name */
    private TimeModel f13180if;

    /* renamed from: new, reason: not valid java name */
    private float f13181new;

    /* renamed from: try, reason: not valid java name */
    private boolean f13182try = false;

    public Cnew(TimePickerView timePickerView, TimeModel timeModel) {
        this.f13178do = timePickerView;
        this.f13180if = timeModel;
        initialize();
    }

    /* renamed from: case, reason: not valid java name */
    private void m14615case() {
        m14617else(f13174case, TimeModel.f13130this);
        m14617else(f13175else, TimeModel.f13130this);
        m14617else(f13176goto, TimeModel.f13129goto);
    }

    /* renamed from: do, reason: not valid java name */
    private int m14616do() {
        return this.f13180if.f13134for == 1 ? 15 : 30;
    }

    /* renamed from: else, reason: not valid java name */
    private void m14617else(String[] strArr, String str) {
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = TimeModel.m14577if(this.f13178do.getResources(), strArr[i], str);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m14618for(int i, int i2) {
        TimeModel timeModel = this.f13180if;
        if (timeModel.f13137try == i2 && timeModel.f13136new == i) {
            return;
        }
        this.f13178do.performHapticFeedback(Build.VERSION.SDK_INT >= 21 ? 4 : 1);
    }

    /* renamed from: if, reason: not valid java name */
    private String[] m14619if() {
        return this.f13180if.f13134for == 1 ? f13175else : f13174case;
    }

    /* renamed from: try, reason: not valid java name */
    private void m14620try() {
        TimePickerView timePickerView = this.f13178do;
        TimeModel timeModel = this.f13180if;
        timePickerView.updateTime(timeModel.f13133else, timeModel.m14580for(), this.f13180if.f13137try);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void hide() {
        this.f13178do.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void initialize() {
        if (this.f13180if.f13134for == 0) {
            this.f13178do.m14594catch();
        }
        this.f13178do.addOnRotateListener(this);
        this.f13178do.m14596goto(this);
        this.f13178do.setOnPeriodChangeListener(this);
        this.f13178do.setOnActionUpListener(this);
        m14615case();
        invalidate();
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void invalidate() {
        this.f13181new = this.f13180if.m14580for() * m14616do();
        TimeModel timeModel = this.f13180if;
        this.f13179for = timeModel.f13137try * 6;
        m14621new(timeModel.f13131case, false);
        m14620try();
    }

    /* renamed from: new, reason: not valid java name */
    public void m14621new(int i, boolean z) {
        boolean z2 = i == 12;
        this.f13178do.m14597new(z2);
        this.f13180if.f13131case = i;
        this.f13178do.setValues(z2 ? f13176goto : m14619if(), z2 ? R.string.material_minute_suffix : R.string.material_hour_suffix);
        this.f13178do.m14598try(z2 ? this.f13179for : this.f13181new, z);
        this.f13178do.setActiveSelection(i);
        this.f13178do.m14595else(new Cdo(this.f13178do.getContext(), R.string.material_hour_selection));
        this.f13178do.m14593case(new Cdo(this.f13178do.getContext(), R.string.material_minute_selection));
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnActionUpListener
    public void onActionUp(float f, boolean z) {
        this.f13182try = true;
        TimeModel timeModel = this.f13180if;
        int i = timeModel.f13137try;
        int i2 = timeModel.f13136new;
        if (timeModel.f13131case == 10) {
            this.f13178do.m14598try(this.f13181new, false);
            if (!((AccessibilityManager) ContextCompat.getSystemService(this.f13178do.getContext(), AccessibilityManager.class)).isTouchExplorationEnabled()) {
                m14621new(12, true);
            }
        } else {
            int iRound = Math.round(f);
            if (!z) {
                this.f13180if.m14583this(((iRound + 15) / 30) * 5);
                this.f13179for = this.f13180if.f13137try * 6;
            }
            this.f13178do.m14598try(this.f13179for, z);
        }
        this.f13182try = false;
        m14620try();
        m14618for(i2, i);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnPeriodChangeListener
    public void onPeriodChange(int i) {
        this.f13180if.m14578break(i);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnRotateListener
    public void onRotate(float f, boolean z) {
        if (this.f13182try) {
            return;
        }
        TimeModel timeModel = this.f13180if;
        int i = timeModel.f13136new;
        int i2 = timeModel.f13137try;
        int iRound = Math.round(f);
        TimeModel timeModel2 = this.f13180if;
        if (timeModel2.f13131case == 12) {
            timeModel2.m14583this((iRound + 3) / 6);
            this.f13179for = (float) Math.floor(this.f13180if.f13137try * 6);
        } else {
            this.f13180if.m14579else((iRound + (m14616do() / 2)) / m14616do());
            this.f13181new = this.f13180if.m14580for() * m14616do();
        }
        if (z) {
            return;
        }
        m14620try();
        m14618for(i, i2);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnSelectionChange
    public void onSelectionChanged(int i) {
        m14621new(i, true);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void show() {
        this.f13178do.setVisibility(0);
    }
}
