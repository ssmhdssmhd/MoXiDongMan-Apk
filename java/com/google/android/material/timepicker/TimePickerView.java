package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import com.google.android.material.timepicker.ClockHandView;
import java.util.Locale;

/* loaded from: classes.dex */
class TimePickerView extends ConstraintLayout implements TimePickerControls {

    /* renamed from: case, reason: not valid java name */
    private final View.OnClickListener f13138case;

    /* renamed from: do, reason: not valid java name */
    private final Chip f13139do;

    /* renamed from: else, reason: not valid java name */
    private OnPeriodChangeListener f13140else;

    /* renamed from: for, reason: not valid java name */
    private final ClockHandView f13141for;

    /* renamed from: goto, reason: not valid java name */
    private OnSelectionChange f13142goto;

    /* renamed from: if, reason: not valid java name */
    private final Chip f13143if;

    /* renamed from: new, reason: not valid java name */
    private final ClockFaceView f13144new;

    /* renamed from: this, reason: not valid java name */
    private OnDoubleTapListener f13145this;

    /* renamed from: try, reason: not valid java name */
    private final MaterialButtonToggleGroup f13146try;

    public interface OnDoubleTapListener {
        void onDoubleTap();
    }

    public interface OnPeriodChangeListener {
        void onPeriodChange(int i);
    }

    public interface OnSelectionChange {
        void onSelectionChanged(int i);
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TimePickerView.this.f13142goto != null) {
                TimePickerView.this.f13142goto.onSelectionChanged(((Integer) view.getTag(R.id.selection_type)).intValue());
            }
        }
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$for, reason: invalid class name */
    public class Cfor extends GestureDetector.SimpleOnGestureListener {
        public Cfor() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            boolean zOnDoubleTap = super.onDoubleTap(motionEvent);
            if (TimePickerView.this.f13145this != null) {
                TimePickerView.this.f13145this.onDoubleTap();
            }
            return zOnDoubleTap;
        }
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$if, reason: invalid class name */
    public class Cif implements MaterialButtonToggleGroup.OnButtonCheckedListener {
        public Cif() {
        }

        @Override // com.google.android.material.button.MaterialButtonToggleGroup.OnButtonCheckedListener
        public void onButtonChecked(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
            int i2 = i == R.id.material_clock_period_pm_button ? 1 : 0;
            if (TimePickerView.this.f13140else == null || !z) {
                return;
            }
            TimePickerView.this.f13140else.onPeriodChange(i2);
        }
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$new, reason: invalid class name */
    public class Cnew implements View.OnTouchListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ GestureDetector f13150do;

        public Cnew(GestureDetector gestureDetector) {
            this.f13150do = gestureDetector;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return this.f13150do.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    public TimePickerView(Context context) {
        this(context, null);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: break, reason: not valid java name */
    private void m14587break() {
        Cnew cnew = new Cnew(new GestureDetector(getContext(), new Cfor()));
        this.f13139do.setOnTouchListener(cnew);
        this.f13143if.setOnTouchListener(cnew);
    }

    /* renamed from: class, reason: not valid java name */
    private void m14588class() {
        if (this.f13146try.getVisibility() == 0) {
            ConstraintSet constraintSet = new ConstraintSet();
            constraintSet.clone(this);
            constraintSet.clear(R.id.material_clock_display, ViewCompat.getLayoutDirection(this) == 0 ? 2 : 1);
            constraintSet.applyTo(this);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m14592this() {
        Chip chip = this.f13139do;
        int i = R.id.selection_type;
        chip.setTag(i, 12);
        this.f13143if.setTag(i, 10);
        this.f13139do.setOnClickListener(this.f13138case);
        this.f13143if.setOnClickListener(this.f13138case);
    }

    public void addOnRotateListener(ClockHandView.OnRotateListener onRotateListener) {
        this.f13141for.addOnRotateListener(onRotateListener);
    }

    /* renamed from: case, reason: not valid java name */
    public void m14593case(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f13139do, accessibilityDelegateCompat);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m14594catch() {
        this.f13146try.setVisibility(0);
    }

    /* renamed from: else, reason: not valid java name */
    public void m14595else(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f13143if, accessibilityDelegateCompat);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m14596goto(OnSelectionChange onSelectionChange) {
        this.f13142goto = onSelectionChange;
    }

    /* renamed from: new, reason: not valid java name */
    public void m14597new(boolean z) {
        this.f13141for.m14530this(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m14588class();
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            m14588class();
        }
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    public void setActiveSelection(int i) {
        this.f13139do.setChecked(i == 12);
        this.f13143if.setChecked(i == 10);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    public void setHandRotation(float f) {
        this.f13141for.m14527catch(f);
    }

    public void setOnActionUpListener(ClockHandView.OnActionUpListener onActionUpListener) {
        this.f13141for.setOnActionUpListener(onActionUpListener);
    }

    public void setOnDoubleTapListener(@Nullable OnDoubleTapListener onDoubleTapListener) {
        this.f13145this = onDoubleTapListener;
    }

    public void setOnPeriodChangeListener(OnPeriodChangeListener onPeriodChangeListener) {
        this.f13140else = onPeriodChangeListener;
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    public void setValues(String[] strArr, @StringRes int i) {
        this.f13144new.setValues(strArr, i);
    }

    /* renamed from: try, reason: not valid java name */
    public void m14598try(float f, boolean z) {
        this.f13141for.m14528class(f, z);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    @SuppressLint({"DefaultLocale"})
    public void updateTime(int i, int i2, int i3) {
        this.f13146try.m12944this(i == 1 ? R.id.material_clock_period_pm_button : R.id.material_clock_period_am_button);
        Locale locale = getResources().getConfiguration().locale;
        String str = String.format(locale, TimeModel.f13129goto, Integer.valueOf(i3));
        String str2 = String.format(locale, TimeModel.f13129goto, Integer.valueOf(i2));
        this.f13139do.setText(str);
        this.f13143if.setText(str2);
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f13138case = new Cdo();
        LayoutInflater.from(context).inflate(R.layout.material_timepicker, this);
        this.f13144new = (ClockFaceView) findViewById(R.id.material_clock_face);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R.id.material_clock_period_toggle);
        this.f13146try = materialButtonToggleGroup;
        materialButtonToggleGroup.addOnButtonCheckedListener(new Cif());
        this.f13139do = (Chip) findViewById(R.id.material_minute_tv);
        this.f13143if = (Chip) findViewById(R.id.material_hour_tv);
        this.f13141for = (ClockHandView) findViewById(R.id.material_clock_hand);
        m14587break();
        m14592this();
    }
}
