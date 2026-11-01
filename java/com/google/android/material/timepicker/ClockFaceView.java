package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.support.v4.sx0;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.timepicker.ClockHandView;
import java.util.Arrays;

/* loaded from: classes.dex */
class ClockFaceView extends Cfor implements ClockHandView.OnRotateListener {

    /* renamed from: native, reason: not valid java name */
    private static final float f13057native = 0.001f;

    /* renamed from: public, reason: not valid java name */
    private static final int f13058public = 12;

    /* renamed from: return, reason: not valid java name */
    private static final String f13059return = "";

    /* renamed from: break, reason: not valid java name */
    private final int[] f13060break;

    /* renamed from: case, reason: not valid java name */
    private final Rect f13061case;

    /* renamed from: catch, reason: not valid java name */
    private final float[] f13062catch;

    /* renamed from: class, reason: not valid java name */
    private final int f13063class;

    /* renamed from: const, reason: not valid java name */
    private final int f13064const;

    /* renamed from: else, reason: not valid java name */
    private final RectF f13065else;

    /* renamed from: final, reason: not valid java name */
    private final int f13066final;

    /* renamed from: goto, reason: not valid java name */
    private final SparseArray<TextView> f13067goto;

    /* renamed from: import, reason: not valid java name */
    private final ColorStateList f13068import;

    /* renamed from: super, reason: not valid java name */
    private final int f13069super;

    /* renamed from: this, reason: not valid java name */
    private final AccessibilityDelegateCompat f13070this;

    /* renamed from: throw, reason: not valid java name */
    private String[] f13071throw;

    /* renamed from: try, reason: not valid java name */
    private final ClockHandView f13072try;

    /* renamed from: while, reason: not valid java name */
    private float f13073while;

    /* renamed from: com.google.android.material.timepicker.ClockFaceView$do, reason: invalid class name */
    public class Cdo implements ViewTreeObserver.OnPreDrawListener {
        public Cdo() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (!ClockFaceView.this.isShown()) {
                return true;
            }
            ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
            ClockFaceView.this.mo14518for(((ClockFaceView.this.getHeight() / 2) - ClockFaceView.this.f13072try.m14526case()) - ClockFaceView.this.f13063class);
            return true;
        }
    }

    /* renamed from: com.google.android.material.timepicker.ClockFaceView$if, reason: invalid class name */
    public class Cif extends AccessibilityDelegateCompat {
        public Cif() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            int iIntValue = ((Integer) view.getTag(R.id.material_value_index)).intValue();
            if (iIntValue > 0) {
                accessibilityNodeInfoCompat.setTraversalAfter((View) ClockFaceView.this.f13067goto.get(iIntValue - 1));
            }
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, iIntValue, 1, false, view.isSelected()));
        }
    }

    public ClockFaceView(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: break, reason: not valid java name */
    private void m14511break() {
        RectF rectFM14529for = this.f13072try.m14529for();
        for (int i = 0; i < this.f13067goto.size(); i++) {
            TextView textView = this.f13067goto.get(i);
            if (textView != null) {
                textView.getDrawingRect(this.f13061case);
                this.f13061case.offset(textView.getPaddingLeft(), textView.getPaddingTop());
                offsetDescendantRectToMyCoords(textView, this.f13061case);
                this.f13065else.set(this.f13061case);
                textView.getPaint().setShader(m14512catch(rectFM14529for, this.f13065else));
                textView.invalidate();
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private RadialGradient m14512catch(RectF rectF, RectF rectF2) {
        if (RectF.intersects(rectF, rectF2)) {
            return new RadialGradient(rectF.centerX() - this.f13065else.left, rectF.centerY() - this.f13065else.top, rectF.width() * 0.5f, this.f13060break, this.f13062catch, Shader.TileMode.CLAMP);
        }
        return null;
    }

    /* renamed from: class, reason: not valid java name */
    private static float m14513class(float f, float f2, float f3) {
        return Math.max(Math.max(f, f2), f3);
    }

    /* renamed from: const, reason: not valid java name */
    private void m14514const(@StringRes int i) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = this.f13067goto.size();
        for (int i2 = 0; i2 < Math.max(this.f13071throw.length, size); i2++) {
            TextView textView = this.f13067goto.get(i2);
            if (i2 >= this.f13071throw.length) {
                removeView(textView);
                this.f13067goto.remove(i2);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(R.layout.material_clockface_textview, (ViewGroup) this, false);
                    this.f13067goto.put(i2, textView);
                    addView(textView);
                }
                textView.setVisibility(0);
                textView.setText(this.f13071throw[i2]);
                textView.setTag(R.id.material_value_index, Integer.valueOf(i2));
                ViewCompat.setAccessibilityDelegate(textView, this.f13070this);
                textView.setTextColor(this.f13068import);
                if (i != 0) {
                    textView.setContentDescription(getResources().getString(i, this.f13071throw[i2]));
                }
            }
        }
    }

    @Override // com.google.android.material.timepicker.Cfor
    /* renamed from: for, reason: not valid java name */
    public void mo14518for(int i) {
        if (i != m14611if()) {
            super.mo14518for(i);
            this.f13072try.m14525break(m14611if());
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.f13071throw.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m14511break();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i, int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iM14513class = (int) (this.f13069super / m14513class(this.f13064const / displayMetrics.heightPixels, this.f13066final / displayMetrics.widthPixels, 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iM14513class, 1073741824);
        setMeasuredDimension(iM14513class, iM14513class);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnRotateListener
    public void onRotate(float f, boolean z) {
        if (Math.abs(this.f13073while - f) > 0.001f) {
            this.f13073while = f;
            m14511break();
        }
    }

    public void setHandRotation(@FloatRange(from = 0.0d, to = 360.0d) float f) {
        this.f13072try.m14527catch(f);
        m14511break();
    }

    public void setValues(String[] strArr, @StringRes int i) {
        this.f13071throw = strArr;
        m14514const(i);
    }

    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f13061case = new Rect();
        this.f13065else = new RectF();
        this.f13067goto = new SparseArray<>();
        this.f13062catch = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClockFaceView, i, R.style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList colorStateListM7649do = sx0.m7649do(context, typedArrayObtainStyledAttributes, R.styleable.ClockFaceView_clockNumberTextColor);
        this.f13068import = colorStateListM7649do;
        LayoutInflater.from(context).inflate(R.layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R.id.material_clock_hand);
        this.f13072try = clockHandView;
        this.f13063class = resources.getDimensionPixelSize(R.dimen.material_clock_hand_padding);
        int colorForState = colorStateListM7649do.getColorForState(new int[]{android.R.attr.state_selected}, colorStateListM7649do.getDefaultColor());
        this.f13060break = new int[]{colorForState, colorForState, colorStateListM7649do.getDefaultColor()};
        clockHandView.addOnRotateListener(this);
        int defaultColor = AppCompatResources.getColorStateList(context, R.color.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateListM7649do2 = sx0.m7649do(context, typedArrayObtainStyledAttributes, R.styleable.ClockFaceView_clockFaceBackgroundColor);
        setBackgroundColor(colorStateListM7649do2 != null ? colorStateListM7649do2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new Cdo());
        setFocusable(true);
        typedArrayObtainStyledAttributes.recycle();
        this.f13070this = new Cif();
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        setValues(strArr, 0);
        this.f13064const = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_height);
        this.f13066final = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_width);
        this.f13069super = resources.getDimensionPixelSize(R.dimen.material_clock_size);
    }
}
