package com.google.android.material.slider;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.i30;
import android.support.v4.iz;
import android.support.v4.k62;
import android.support.v4.sx0;
import android.support.v4.vx0;
import android.support.v4.w1;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R;
import com.google.android.material.internal.ViewOverlayImpl;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.slider.BaseOnChangeListener;
import com.google.android.material.slider.BaseOnSliderTouchListener;
import com.google.android.material.slider.BaseSlider;
import com.google.android.material.tooltip.TooltipDrawable;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends BaseOnChangeListener<S>, T extends BaseOnSliderTouchListener<S>> extends View {
    private static final long A = 117;
    private static final String n = "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)";
    private static final String o = "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)";
    private static final String p = "valueFrom(%s) must be smaller than valueTo(%s)";
    private static final String q = "valueTo(%s) must be greater than valueFrom(%s)";
    private static final String r = "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range";
    private static final String s = "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.";
    private static final int t = 200;
    private static final int u = 63;
    private static final double v = 1.0E-4d;
    public static final int x = 1;
    public static final int y = 0;
    private static final long z = 83;
    private int a;

    /* renamed from: abstract, reason: not valid java name */
    private LabelFormatter f12633abstract;
    private boolean b;

    /* renamed from: break, reason: not valid java name */
    @NonNull
    private final TooltipDrawableFactory f12634break;
    private boolean c;

    /* renamed from: case, reason: not valid java name */
    @NonNull
    private final Paint f12635case;

    /* renamed from: catch, reason: not valid java name */
    @NonNull
    private final List<TooltipDrawable> f12636catch;

    /* renamed from: class, reason: not valid java name */
    @NonNull
    private final List<L> f12637class;

    /* renamed from: const, reason: not valid java name */
    @NonNull
    private final List<T> f12638const;

    /* renamed from: continue, reason: not valid java name */
    private boolean f12639continue;
    private boolean d;

    /* renamed from: default, reason: not valid java name */
    private int f12640default;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final Paint f12641do;

    @NonNull
    private ColorStateList e;

    /* renamed from: else, reason: not valid java name */
    @NonNull
    private final Ctry f12642else;

    /* renamed from: extends, reason: not valid java name */
    private int f12643extends;

    @NonNull
    private ColorStateList f;

    /* renamed from: final, reason: not valid java name */
    private boolean f12644final;

    /* renamed from: finally, reason: not valid java name */
    private int f12645finally;

    /* renamed from: for, reason: not valid java name */
    @NonNull
    private final Paint f12646for;

    @NonNull
    private ColorStateList g;

    /* renamed from: goto, reason: not valid java name */
    private final AccessibilityManager f12647goto;

    @NonNull
    private ColorStateList h;

    @NonNull
    private ColorStateList i;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final Paint f12648if;

    /* renamed from: implements, reason: not valid java name */
    private float f12649implements;

    /* renamed from: import, reason: not valid java name */
    private int f12650import;

    /* renamed from: instanceof, reason: not valid java name */
    private float[] f12651instanceof;

    /* renamed from: interface, reason: not valid java name */
    private ArrayList<Float> f12652interface;

    @NonNull
    private final MaterialShapeDrawable j;
    private float k;
    private int l;

    /* renamed from: native, reason: not valid java name */
    private int f12653native;

    /* renamed from: new, reason: not valid java name */
    @NonNull
    private final Paint f12654new;

    /* renamed from: package, reason: not valid java name */
    private float f12655package;

    /* renamed from: private, reason: not valid java name */
    private MotionEvent f12656private;

    /* renamed from: protected, reason: not valid java name */
    private int f12657protected;

    /* renamed from: public, reason: not valid java name */
    private int f12658public;

    /* renamed from: return, reason: not valid java name */
    private int f12659return;

    /* renamed from: static, reason: not valid java name */
    private int f12660static;

    /* renamed from: strictfp, reason: not valid java name */
    private float f12661strictfp;

    /* renamed from: super, reason: not valid java name */
    private ValueAnimator f12662super;

    /* renamed from: switch, reason: not valid java name */
    private int f12663switch;

    /* renamed from: synchronized, reason: not valid java name */
    private boolean f12664synchronized;

    /* renamed from: this, reason: not valid java name */
    private BaseSlider<S, L, T>.Cnew f12665this;

    /* renamed from: throw, reason: not valid java name */
    private ValueAnimator f12666throw;

    /* renamed from: throws, reason: not valid java name */
    private int f12667throws;

    /* renamed from: transient, reason: not valid java name */
    private int f12668transient;

    /* renamed from: try, reason: not valid java name */
    @NonNull
    private final Paint f12669try;

    /* renamed from: volatile, reason: not valid java name */
    private float f12670volatile;

    /* renamed from: while, reason: not valid java name */
    private final int f12671while;
    private static final String m = BaseSlider.class.getSimpleName();
    public static final int w = R.style.Widget_MaterialComponents_Slider;

    public static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public float f12672do;

        /* renamed from: for, reason: not valid java name */
        public ArrayList<Float> f12673for;

        /* renamed from: if, reason: not valid java name */
        public float f12674if;

        /* renamed from: new, reason: not valid java name */
        public float f12675new;

        /* renamed from: try, reason: not valid java name */
        public boolean f12676try;

        /* renamed from: com.google.android.material.slider.BaseSlider$SliderState$do, reason: invalid class name */
        public static class Cdo implements Parcelable.Creator<SliderState> {
            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public SliderState createFromParcel(@NonNull Parcel parcel) {
                return new SliderState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public SliderState[] newArray(int i) {
                return new SliderState[i];
            }
        }

        public /* synthetic */ SliderState(Parcel parcel, Cdo cdo) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f12672do);
            parcel.writeFloat(this.f12674if);
            parcel.writeList(this.f12673for);
            parcel.writeFloat(this.f12675new);
            parcel.writeBooleanArray(new boolean[]{this.f12676try});
        }

        public SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        private SliderState(@NonNull Parcel parcel) {
            super(parcel);
            this.f12672do = parcel.readFloat();
            this.f12674if = parcel.readFloat();
            ArrayList<Float> arrayList = new ArrayList<>();
            this.f12673for = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.f12675new = parcel.readFloat();
            this.f12676try = parcel.createBooleanArray()[0];
        }
    }

    public interface TooltipDrawableFactory {
        TooltipDrawable createTooltipDrawable();
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$do, reason: invalid class name */
    public class Cdo implements TooltipDrawableFactory {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AttributeSet f12677do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f12679if;

        public Cdo(AttributeSet attributeSet, int i) {
            this.f12677do = attributeSet;
            this.f12679if = i;
        }

        @Override // com.google.android.material.slider.BaseSlider.TooltipDrawableFactory
        public TooltipDrawable createTooltipDrawable() {
            TypedArray typedArrayM4267break = k62.m4267break(BaseSlider.this.getContext(), this.f12677do, R.styleable.Slider, this.f12679if, BaseSlider.w, new int[0]);
            TooltipDrawable tooltipDrawableI = BaseSlider.i(BaseSlider.this.getContext(), typedArrayM4267break);
            typedArrayM4267break.recycle();
            return tooltipDrawableI;
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$for, reason: invalid class name */
    public class Cfor extends AnimatorListenerAdapter {
        public Cfor() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            Iterator it = BaseSlider.this.f12636catch.iterator();
            while (it.hasNext()) {
                ViewUtils.m13616else(BaseSlider.this).remove((TooltipDrawable) it.next());
            }
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {
        public Cif() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Iterator it = BaseSlider.this.f12636catch.iterator();
            while (it.hasNext()) {
                ((TooltipDrawable) it.next()).w0(fFloatValue);
            }
            ViewCompat.postInvalidateOnAnimation(BaseSlider.this);
        }
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$try, reason: invalid class name */
    public static class Ctry extends ExploreByTouchHelper {

        /* renamed from: do, reason: not valid java name */
        private final BaseSlider<?, ?, ?> f12684do;

        /* renamed from: if, reason: not valid java name */
        public Rect f12685if;

        public Ctry(BaseSlider<?, ?, ?> baseSlider) {
            super(baseSlider);
            this.f12685if = new Rect();
            this.f12684do = baseSlider;
        }

        @NonNull
        /* renamed from: do, reason: not valid java name */
        private String m14165do(int i) {
            return i == this.f12684do.getValues().size() + (-1) ? this.f12684do.getContext().getString(R.string.material_slider_range_end) : i == 0 ? this.f12684do.getContext().getString(R.string.material_slider_range_start) : "";
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public int getVirtualViewAt(float f, float f2) {
            for (int i = 0; i < this.f12684do.getValues().size(); i++) {
                this.f12684do.t(i, this.f12685if);
                if (this.f12685if.contains((int) f, (int) f2)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void getVisibleVirtualViews(List<Integer> list) {
            for (int i = 0; i < this.f12684do.getValues().size(); i++) {
                list.add(Integer.valueOf(i));
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (!this.f12684do.isEnabled()) {
                return false;
            }
            if (i2 != 4096 && i2 != 8192) {
                if (i2 == 16908349 && bundle != null && bundle.containsKey(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE)) {
                    if (this.f12684do.r(i, bundle.getFloat(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE))) {
                        this.f12684do.u();
                        this.f12684do.postInvalidate();
                        invalidateVirtualView(i);
                        return true;
                    }
                }
                return false;
            }
            float fM14126catch = this.f12684do.m14126catch(20);
            if (i2 == 8192) {
                fM14126catch = -fM14126catch;
            }
            if (this.f12684do.m14159protected()) {
                fM14126catch = -fM14126catch;
            }
            if (!this.f12684do.r(i, MathUtils.clamp(this.f12684do.getValues().get(i).floatValue() + fM14126catch, this.f12684do.getValueFrom(), this.f12684do.getValueTo()))) {
                return false;
            }
            this.f12684do.u();
            this.f12684do.postInvalidate();
            invalidateVirtualView(i);
            return true;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SET_PROGRESS);
            List<Float> values = this.f12684do.getValues();
            float fFloatValue = values.get(i).floatValue();
            float valueFrom = this.f12684do.getValueFrom();
            float valueTo = this.f12684do.getValueTo();
            if (this.f12684do.isEnabled()) {
                if (fFloatValue > valueFrom) {
                    accessibilityNodeInfoCompat.addAction(8192);
                }
                if (fFloatValue < valueTo) {
                    accessibilityNodeInfoCompat.addAction(4096);
                }
            }
            accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, valueFrom, valueTo, fFloatValue));
            accessibilityNodeInfoCompat.setClassName(SeekBar.class.getName());
            StringBuilder sb = new StringBuilder();
            if (this.f12684do.getContentDescription() != null) {
                sb.append(this.f12684do.getContentDescription());
                sb.append(",");
            }
            if (values.size() > 1) {
                sb.append(m14165do(i));
                sb.append(this.f12684do.m14142package(fFloatValue));
            }
            accessibilityNodeInfoCompat.setContentDescription(sb.toString());
            this.f12684do.t(i, this.f12685if);
            accessibilityNodeInfoCompat.setBoundsInParent(this.f12685if);
        }
    }

    public BaseSlider(@NonNull Context context) {
        this(context, null);
    }

    private void A() {
        Iterator<Float> it = this.f12652interface.iterator();
        while (it.hasNext()) {
            Float next = it.next();
            if (next.floatValue() < this.f12661strictfp || next.floatValue() > this.f12670volatile) {
                throw new IllegalStateException(String.format(n, Float.toString(next.floatValue()), Float.toString(this.f12661strictfp), Float.toString(this.f12670volatile)));
            }
            if (this.f12649implements > 0.0f && !B(next.floatValue())) {
                throw new IllegalStateException(String.format(o, Float.toString(next.floatValue()), Float.toString(this.f12661strictfp), Float.toString(this.f12649implements), Float.toString(this.f12649implements)));
            }
        }
    }

    private boolean B(float f) {
        double dDoubleValue = new BigDecimal(Float.toString(f)).subtract(new BigDecimal(Float.toString(this.f12661strictfp))).divide(new BigDecimal(Float.toString(this.f12649implements)), MathContext.DECIMAL64).doubleValue();
        double dRound = Math.round(dDoubleValue);
        Double.isNaN(dRound);
        return Math.abs(dRound - dDoubleValue) < v;
    }

    private float C(float f) {
        return (e(f) * this.a) + this.f12663switch;
    }

    private void D() {
        float f = this.f12649implements;
        if (f == 0.0f) {
            return;
        }
        if (((int) f) != f) {
            String.format(s, "stepSize", Float.valueOf(f));
        }
        float f2 = this.f12661strictfp;
        if (((int) f2) != f2) {
            String.format(s, "valueFrom", Float.valueOf(f2));
        }
        float f3 = this.f12670volatile;
        if (((int) f3) != f3) {
            String.format(s, "valueTo", Float.valueOf(f3));
        }
    }

    private void a(@NonNull Canvas canvas) {
        if (!this.f12664synchronized || this.f12649implements <= 0.0f) {
            return;
        }
        float[] activeRange = getActiveRange();
        int iK = k(this.f12651instanceof, activeRange[0]);
        int iK2 = k(this.f12651instanceof, activeRange[1]);
        int i = iK * 2;
        canvas.drawPoints(this.f12651instanceof, 0, i, this.f12669try);
        int i2 = iK2 * 2;
        canvas.drawPoints(this.f12651instanceof, i, i2 - i, this.f12635case);
        float[] fArr = this.f12651instanceof;
        canvas.drawPoints(fArr, i2, fArr.length - i2, this.f12669try);
    }

    /* renamed from: abstract, reason: not valid java name */
    private float m14123abstract(int i, float f) {
        float minSeparation = this.f12649implements == 0.0f ? getMinSeparation() : 0.0f;
        if (this.l == 0) {
            minSeparation = m14137import(minSeparation);
        }
        if (m14159protected()) {
            minSeparation = -minSeparation;
        }
        int i2 = i + 1;
        int i3 = i - 1;
        return MathUtils.clamp(f, i3 < 0 ? this.f12661strictfp : this.f12652interface.get(i3).floatValue() + minSeparation, i2 >= this.f12652interface.size() ? this.f12670volatile : this.f12652interface.get(i2).floatValue() - minSeparation);
    }

    private void b() {
        this.f12663switch = this.f12650import + Math.max(this.f12640default - this.f12653native, 0);
        if (ViewCompat.isLaidOut(this)) {
            v(getWidth());
        }
    }

    /* renamed from: break, reason: not valid java name */
    private float m14124break() {
        float f = this.f12649implements;
        if (f == 0.0f) {
            return 1.0f;
        }
        return f;
    }

    private boolean c(int i) {
        int i2 = this.f12668transient;
        int iClamp = (int) MathUtils.clamp(i2 + i, 0L, this.f12652interface.size() - 1);
        this.f12668transient = iClamp;
        if (iClamp == i2) {
            return false;
        }
        if (this.f12657protected != -1) {
            this.f12657protected = iClamp;
        }
        u();
        postInvalidate();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public float m14126catch(int i) {
        float fM14124break = m14124break();
        return (this.f12670volatile - this.f12661strictfp) / fM14124break <= i ? fM14124break : Math.round(r1 / r4) * fM14124break;
    }

    /* renamed from: class, reason: not valid java name */
    private int m14127class() {
        return this.f12667throws + (this.f12659return == 1 ? this.f12636catch.get(0).getIntrinsicHeight() : 0);
    }

    @ColorInt
    /* renamed from: continue, reason: not valid java name */
    private int m14128continue(@NonNull ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    private boolean d(int i) {
        if (m14159protected()) {
            i = i == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i;
        }
        return c(i);
    }

    /* renamed from: default, reason: not valid java name */
    private void m14129default() {
        if (this.f12644final) {
            this.f12644final = false;
            ValueAnimator valueAnimatorM14147super = m14147super(false);
            this.f12666throw = valueAnimatorM14147super;
            this.f12662super = null;
            valueAnimatorM14147super.addListener(new Cfor());
            this.f12666throw.start();
        }
    }

    private float e(float f) {
        float f2 = this.f12661strictfp;
        float f3 = (f - f2) / (this.f12670volatile - f2);
        return m14159protected() ? 1.0f - f3 : f3;
    }

    /* renamed from: extends, reason: not valid java name */
    private void m14132extends(int i) {
        if (i == 1) {
            c(Integer.MAX_VALUE);
            return;
        }
        if (i == 2) {
            c(Integer.MIN_VALUE);
        } else if (i == 17) {
            d(Integer.MAX_VALUE);
        } else {
            if (i != 66) {
                return;
            }
            d(Integer.MIN_VALUE);
        }
    }

    private Boolean f(int i, @NonNull KeyEvent keyEvent) {
        if (i == 61) {
            return keyEvent.hasNoModifiers() ? Boolean.valueOf(c(1)) : keyEvent.isShiftPressed() ? Boolean.valueOf(c(-1)) : Boolean.FALSE;
        }
        if (i != 66) {
            if (i != 81) {
                if (i == 69) {
                    c(-1);
                    return Boolean.TRUE;
                }
                if (i != 70) {
                    switch (i) {
                        case 21:
                            d(-1);
                            break;
                        case 22:
                            d(1);
                            break;
                    }
                    return Boolean.TRUE;
                }
            }
            c(1);
            return Boolean.TRUE;
        }
        this.f12657protected = this.f12668transient;
        postInvalidate();
        return Boolean.TRUE;
    }

    private void g() {
        Iterator<T> it = this.f12638const.iterator();
        while (it.hasNext()) {
            it.next().onStartTrackingTouch(this);
        }
    }

    private float[] getActiveRange() {
        float fFloatValue = ((Float) Collections.max(getValues())).floatValue();
        float fFloatValue2 = ((Float) Collections.min(getValues())).floatValue();
        if (this.f12652interface.size() == 1) {
            fFloatValue2 = this.f12661strictfp;
        }
        float fE = e(fFloatValue2);
        float fE2 = e(fFloatValue);
        return m14159protected() ? new float[]{fE2, fE} : new float[]{fE, fE2};
    }

    private float getValueOfTouchPosition() {
        double dQ = q(this.k);
        if (m14159protected()) {
            dQ = 1.0d - dQ;
        }
        float f = this.f12670volatile;
        float f2 = this.f12661strictfp;
        double d = f - f2;
        Double.isNaN(d);
        double d2 = f2;
        Double.isNaN(d2);
        return (float) ((dQ * d) + d2);
    }

    private float getValueOfTouchPositionAbsolute() {
        float f = this.k;
        if (m14159protected()) {
            f = 1.0f - f;
        }
        float f2 = this.f12670volatile;
        float f3 = this.f12661strictfp;
        return (f * (f2 - f3)) + f3;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m14134goto(TooltipDrawable tooltipDrawable) {
        tooltipDrawable.v0(ViewUtils.m13611case(this));
    }

    private void h() {
        Iterator<T> it = this.f12638const.iterator();
        while (it.hasNext()) {
            it.next().onStopTrackingTouch(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static TooltipDrawable i(@NonNull Context context, @NonNull TypedArray typedArray) {
        return TooltipDrawable.g0(context, null, 0, typedArray.getResourceId(R.styleable.Slider_labelStyle, R.style.Widget_MaterialComponents_Tooltip));
    }

    /* renamed from: implements, reason: not valid java name */
    private void m14136implements(@NonNull Resources resources) throws Resources.NotFoundException {
        this.f12658public = resources.getDimensionPixelSize(R.dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_side_padding);
        this.f12650import = dimensionPixelOffset;
        this.f12663switch = dimensionPixelOffset;
        this.f12653native = resources.getDimensionPixelSize(R.dimen.mtrl_slider_thumb_radius);
        this.f12667throws = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_top);
        this.f12645finally = resources.getDimensionPixelSize(R.dimen.mtrl_slider_label_padding);
    }

    /* renamed from: import, reason: not valid java name */
    private float m14137import(float f) {
        if (f == 0.0f) {
            return 0.0f;
        }
        float f2 = (f - this.f12663switch) / this.a;
        float f3 = this.f12661strictfp;
        return (f2 * (f3 - this.f12670volatile)) + f3;
    }

    /* renamed from: instanceof, reason: not valid java name */
    private void m14138instanceof() {
        if (this.f12649implements <= 0.0f) {
            return;
        }
        w();
        int iMin = Math.min((int) (((this.f12670volatile - this.f12661strictfp) / this.f12649implements) + 1.0f), (this.a / (this.f12660static * 2)) + 1);
        float[] fArr = this.f12651instanceof;
        if (fArr == null || fArr.length != iMin * 2) {
            this.f12651instanceof = new float[iMin * 2];
        }
        float f = this.a / (iMin - 1);
        for (int i = 0; i < iMin * 2; i += 2) {
            float[] fArr2 = this.f12651instanceof;
            fArr2[i] = this.f12663switch + ((i / 2) * f);
            fArr2[i + 1] = m14127class();
        }
    }

    /* renamed from: interface, reason: not valid java name */
    private boolean m14139interface() {
        ViewParent parent = getParent();
        while (true) {
            if (!(parent instanceof ViewGroup)) {
                return false;
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
            parent = parent.getParent();
        }
    }

    private static int k(float[] fArr, float f) {
        return Math.round(f * ((fArr.length / 2) - 1));
    }

    private void l(Context context, AttributeSet attributeSet, int i) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException, InvocationTargetException {
        TypedArray typedArrayM4267break = k62.m4267break(context, attributeSet, R.styleable.Slider, i, w, new int[0]);
        this.f12661strictfp = typedArrayM4267break.getFloat(R.styleable.Slider_android_valueFrom, 0.0f);
        this.f12670volatile = typedArrayM4267break.getFloat(R.styleable.Slider_android_valueTo, 1.0f);
        setValues(Float.valueOf(this.f12661strictfp));
        this.f12649implements = typedArrayM4267break.getFloat(R.styleable.Slider_android_stepSize, 0.0f);
        int i2 = R.styleable.Slider_trackColor;
        boolean zHasValue = typedArrayM4267break.hasValue(i2);
        int i3 = zHasValue ? i2 : R.styleable.Slider_trackColorInactive;
        if (!zHasValue) {
            i2 = R.styleable.Slider_trackColorActive;
        }
        ColorStateList colorStateListM7649do = sx0.m7649do(context, typedArrayM4267break, i3);
        if (colorStateListM7649do == null) {
            colorStateListM7649do = AppCompatResources.getColorStateList(context, R.color.material_slider_inactive_track_color);
        }
        setTrackInactiveTintList(colorStateListM7649do);
        ColorStateList colorStateListM7649do2 = sx0.m7649do(context, typedArrayM4267break, i2);
        if (colorStateListM7649do2 == null) {
            colorStateListM7649do2 = AppCompatResources.getColorStateList(context, R.color.material_slider_active_track_color);
        }
        setTrackActiveTintList(colorStateListM7649do2);
        this.j.z(sx0.m7649do(context, typedArrayM4267break, R.styleable.Slider_thumbColor));
        int i4 = R.styleable.Slider_thumbStrokeColor;
        if (typedArrayM4267break.hasValue(i4)) {
            setThumbStrokeColor(sx0.m7649do(context, typedArrayM4267break, i4));
        }
        setThumbStrokeWidth(typedArrayM4267break.getDimension(R.styleable.Slider_thumbStrokeWidth, 0.0f));
        ColorStateList colorStateListM7649do3 = sx0.m7649do(context, typedArrayM4267break, R.styleable.Slider_haloColor);
        if (colorStateListM7649do3 == null) {
            colorStateListM7649do3 = AppCompatResources.getColorStateList(context, R.color.material_slider_halo_color);
        }
        setHaloTintList(colorStateListM7649do3);
        this.f12664synchronized = typedArrayM4267break.getBoolean(R.styleable.Slider_tickVisible, true);
        int i5 = R.styleable.Slider_tickColor;
        boolean zHasValue2 = typedArrayM4267break.hasValue(i5);
        int i6 = zHasValue2 ? i5 : R.styleable.Slider_tickColorInactive;
        if (!zHasValue2) {
            i5 = R.styleable.Slider_tickColorActive;
        }
        ColorStateList colorStateListM7649do4 = sx0.m7649do(context, typedArrayM4267break, i6);
        if (colorStateListM7649do4 == null) {
            colorStateListM7649do4 = AppCompatResources.getColorStateList(context, R.color.material_slider_inactive_tick_marks_color);
        }
        setTickInactiveTintList(colorStateListM7649do4);
        ColorStateList colorStateListM7649do5 = sx0.m7649do(context, typedArrayM4267break, i5);
        if (colorStateListM7649do5 == null) {
            colorStateListM7649do5 = AppCompatResources.getColorStateList(context, R.color.material_slider_active_tick_marks_color);
        }
        setTickActiveTintList(colorStateListM7649do5);
        setThumbRadius(typedArrayM4267break.getDimensionPixelSize(R.styleable.Slider_thumbRadius, 0));
        setHaloRadius(typedArrayM4267break.getDimensionPixelSize(R.styleable.Slider_haloRadius, 0));
        setThumbElevation(typedArrayM4267break.getDimension(R.styleable.Slider_thumbElevation, 0.0f));
        setTrackHeight(typedArrayM4267break.getDimensionPixelSize(R.styleable.Slider_trackHeight, 0));
        this.f12659return = typedArrayM4267break.getInt(R.styleable.Slider_labelBehavior, 0);
        if (!typedArrayM4267break.getBoolean(R.styleable.Slider_android_enabled, true)) {
            setEnabled(false);
        }
        typedArrayM4267break.recycle();
    }

    private void m(int i) {
        BaseSlider<S, L, T>.Cnew cnew = this.f12665this;
        if (cnew == null) {
            this.f12665this = new Cnew(this, null);
        } else {
            removeCallbacks(cnew);
        }
        this.f12665this.m14164do(i);
        postDelayed(this.f12665this, 200L);
    }

    private void n(TooltipDrawable tooltipDrawable, float f) {
        tooltipDrawable.x0(m14142package(f));
        int iE = (this.f12663switch + ((int) (e(f) * this.a))) - (tooltipDrawable.getIntrinsicWidth() / 2);
        int iM14127class = m14127class() - (this.f12645finally + this.f12640default);
        tooltipDrawable.setBounds(iE, iM14127class - tooltipDrawable.getIntrinsicHeight(), tooltipDrawable.getIntrinsicWidth() + iE, iM14127class);
        Rect rect = new Rect(tooltipDrawable.getBounds());
        iz.m3637for(ViewUtils.m13611case(this), this, rect);
        tooltipDrawable.setBounds(rect);
        ViewUtils.m13616else(this).add(tooltipDrawable);
    }

    /* renamed from: native, reason: not valid java name */
    private void m14140native(int i) {
        Iterator<L> it = this.f12637class.iterator();
        while (it.hasNext()) {
            it.next().onValueChange(this, this.f12652interface.get(i).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.f12647goto;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return;
        }
        m(i);
    }

    private boolean o() {
        return this.b || Build.VERSION.SDK_INT < 21 || !(getBackground() instanceof RippleDrawable);
    }

    private boolean p(float f) {
        return r(this.f12657protected, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: package, reason: not valid java name */
    public String m14142package(float f) {
        if (mo14160strictfp()) {
            return this.f12633abstract.getFormattedValue(f);
        }
        return String.format(((float) ((int) f)) == f ? "%.0f" : "%.2f", Float.valueOf(f));
    }

    /* renamed from: private, reason: not valid java name */
    private static float m14143private(ValueAnimator valueAnimator, float f) {
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return f;
        }
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        valueAnimator.cancel();
        return fFloatValue;
    }

    /* renamed from: public, reason: not valid java name */
    private void m14144public() {
        for (L l : this.f12637class) {
            Iterator<Float> it = this.f12652interface.iterator();
            while (it.hasNext()) {
                l.onValueChange(this, it.next().floatValue(), false);
            }
        }
    }

    private double q(float f) {
        float f2 = this.f12649implements;
        if (f2 <= 0.0f) {
            return f;
        }
        int i = (int) ((this.f12670volatile - this.f12661strictfp) / f2);
        double dRound = Math.round(f * i);
        double d = i;
        Double.isNaN(dRound);
        Double.isNaN(d);
        return dRound / d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r(int i, float f) {
        if (Math.abs(f - this.f12652interface.get(i).floatValue()) < v) {
            return false;
        }
        this.f12652interface.set(i, Float.valueOf(m14123abstract(i, f)));
        this.f12668transient = i;
        m14140native(i);
        return true;
    }

    /* renamed from: return, reason: not valid java name */
    private void m14145return(@NonNull Canvas canvas, int i, int i2) {
        float[] activeRange = getActiveRange();
        int i3 = this.f12663switch;
        float f = i;
        float f2 = i2;
        canvas.drawLine(i3 + (activeRange[0] * f), f2, i3 + (activeRange[1] * f), f2, this.f12648if);
    }

    private boolean s() {
        return p(getValueOfTouchPosition());
    }

    private void setValuesInternal(@NonNull ArrayList<Float> arrayList) {
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("At least one value must be set");
        }
        Collections.sort(arrayList);
        if (this.f12652interface.size() == arrayList.size() && this.f12652interface.equals(arrayList)) {
            return;
        }
        this.f12652interface = arrayList;
        this.d = true;
        this.f12668transient = 0;
        u();
        m14151throw();
        m14144public();
        postInvalidate();
    }

    /* renamed from: static, reason: not valid java name */
    private void m14146static(@NonNull Canvas canvas, int i, int i2) {
        float[] activeRange = getActiveRange();
        float f = i;
        float f2 = this.f12663switch + (activeRange[1] * f);
        if (f2 < r1 + i) {
            float f3 = i2;
            canvas.drawLine(f2, f3, r1 + i, f3, this.f12641do);
        }
        int i3 = this.f12663switch;
        float f4 = i3 + (activeRange[0] * f);
        if (f4 > i3) {
            float f5 = i2;
            canvas.drawLine(i3, f5, f4, f5, this.f12641do);
        }
    }

    /* renamed from: super, reason: not valid java name */
    private ValueAnimator m14147super(boolean z2) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(m14143private(z2 ? this.f12666throw : this.f12662super, z2 ? 0.0f : 1.0f), z2 ? 1.0f : 0.0f);
        valueAnimatorOfFloat.setDuration(z2 ? z : A);
        valueAnimatorOfFloat.setInterpolator(z2 ? w1.f7373try : w1.f7370for);
        valueAnimatorOfFloat.addUpdateListener(new Cif());
        return valueAnimatorOfFloat;
    }

    /* renamed from: switch, reason: not valid java name */
    private void m14148switch(@NonNull Canvas canvas, int i, int i2) {
        if (!isEnabled()) {
            Iterator<Float> it = this.f12652interface.iterator();
            while (it.hasNext()) {
                canvas.drawCircle(this.f12663switch + (e(it.next().floatValue()) * i), i2, this.f12640default, this.f12646for);
            }
        }
        Iterator<Float> it2 = this.f12652interface.iterator();
        while (it2.hasNext()) {
            Float next = it2.next();
            canvas.save();
            int iE = this.f12663switch + ((int) (e(next.floatValue()) * i));
            int i3 = this.f12640default;
            canvas.translate(iE - i3, i2 - i3);
            this.j.draw(canvas);
            canvas.restore();
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    private void m14149synchronized(@NonNull Canvas canvas, int i, int i2) {
        if (o()) {
            int iE = (int) (this.f12663switch + (e(this.f12652interface.get(this.f12668transient).floatValue()) * i));
            if (Build.VERSION.SDK_INT < 28) {
                int i3 = this.f12643extends;
                canvas.clipRect(iE - i3, i2 - i3, iE + i3, i3 + i2, Region.Op.UNION);
            }
            canvas.drawCircle(iE, i2, this.f12643extends, this.f12654new);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private Float m14150this(int i) {
        float fM14126catch = this.c ? m14126catch(20) : m14124break();
        if (i == 21) {
            if (!m14159protected()) {
                fM14126catch = -fM14126catch;
            }
            return Float.valueOf(fM14126catch);
        }
        if (i == 22) {
            if (m14159protected()) {
                fM14126catch = -fM14126catch;
            }
            return Float.valueOf(fM14126catch);
        }
        if (i == 69) {
            return Float.valueOf(-fM14126catch);
        }
        if (i == 70 || i == 81) {
            return Float.valueOf(fM14126catch);
        }
        return null;
    }

    /* renamed from: throw, reason: not valid java name */
    private void m14151throw() {
        if (this.f12636catch.size() > this.f12652interface.size()) {
            List<TooltipDrawable> listSubList = this.f12636catch.subList(this.f12652interface.size(), this.f12636catch.size());
            for (TooltipDrawable tooltipDrawable : listSubList) {
                if (ViewCompat.isAttachedToWindow(this)) {
                    m14155while(tooltipDrawable);
                }
            }
            listSubList.clear();
        }
        while (this.f12636catch.size() < this.f12652interface.size()) {
            TooltipDrawable tooltipDrawableCreateTooltipDrawable = this.f12634break.createTooltipDrawable();
            this.f12636catch.add(tooltipDrawableCreateTooltipDrawable);
            if (ViewCompat.isAttachedToWindow(this)) {
                m14134goto(tooltipDrawableCreateTooltipDrawable);
            }
        }
        int i = this.f12636catch.size() == 1 ? 0 : 1;
        Iterator<TooltipDrawable> it = this.f12636catch.iterator();
        while (it.hasNext()) {
            it.next().T(i);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    private void m14152throws() {
        if (this.f12659return == 2) {
            return;
        }
        if (!this.f12644final) {
            this.f12644final = true;
            ValueAnimator valueAnimatorM14147super = m14147super(true);
            this.f12662super = valueAnimatorM14147super;
            this.f12666throw = null;
            valueAnimatorM14147super.start();
        }
        Iterator<TooltipDrawable> it = this.f12636catch.iterator();
        for (int i = 0; i < this.f12652interface.size() && it.hasNext(); i++) {
            if (i != this.f12668transient) {
                n(it.next(), this.f12652interface.get(i).floatValue());
            }
        }
        if (!it.hasNext()) {
            throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.f12636catch.size()), Integer.valueOf(this.f12652interface.size())));
        }
        n(it.next(), this.f12652interface.get(this.f12668transient).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        if (o() || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int iE = (int) ((e(this.f12652interface.get(this.f12668transient).floatValue()) * this.a) + this.f12663switch);
            int iM14127class = m14127class();
            int i = this.f12643extends;
            DrawableCompat.setHotspotBounds(background, iE - i, iM14127class - i, iE + i, iM14127class + i);
        }
    }

    private void v(int i) {
        this.a = Math.max(i - (this.f12663switch * 2), 0);
        m14138instanceof();
    }

    /* renamed from: volatile, reason: not valid java name */
    private void m14154volatile() {
        this.f12641do.setStrokeWidth(this.f12660static);
        this.f12648if.setStrokeWidth(this.f12660static);
        this.f12669try.setStrokeWidth(this.f12660static / 2.0f);
        this.f12635case.setStrokeWidth(this.f12660static / 2.0f);
    }

    private void w() {
        if (this.d) {
            y();
            z();
            x();
            A();
            D();
            this.d = false;
        }
    }

    /* renamed from: while, reason: not valid java name */
    private void m14155while(TooltipDrawable tooltipDrawable) {
        ViewOverlayImpl viewOverlayImplM13616else = ViewUtils.m13616else(this);
        if (viewOverlayImplM13616else != null) {
            viewOverlayImplM13616else.remove(tooltipDrawable);
            tooltipDrawable.i0(ViewUtils.m13611case(this));
        }
    }

    private void x() {
        if (this.f12649implements > 0.0f && !B(this.f12670volatile)) {
            throw new IllegalStateException(String.format(r, Float.toString(this.f12649implements), Float.toString(this.f12661strictfp), Float.toString(this.f12670volatile)));
        }
    }

    private void y() {
        if (this.f12661strictfp >= this.f12670volatile) {
            throw new IllegalStateException(String.format(p, Float.toString(this.f12661strictfp), Float.toString(this.f12670volatile)));
        }
    }

    private void z() {
        if (this.f12670volatile <= this.f12661strictfp) {
            throw new IllegalStateException(String.format(q, Float.toString(this.f12670volatile), Float.toString(this.f12661strictfp)));
        }
    }

    public void addOnChangeListener(@Nullable L l) {
        this.f12637class.add(l);
    }

    public void addOnSliderTouchListener(@NonNull T t2) {
        this.f12638const.add(t2);
    }

    /* renamed from: const, reason: not valid java name */
    public void mo14156const() {
        this.f12637class.clear();
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return this.f12642else.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        this.f12641do.setColor(m14128continue(this.i));
        this.f12648if.setColor(m14128continue(this.h));
        this.f12669try.setColor(m14128continue(this.g));
        this.f12635case.setColor(m14128continue(this.f));
        for (TooltipDrawable tooltipDrawable : this.f12636catch) {
            if (tooltipDrawable.isStateful()) {
                tooltipDrawable.setState(getDrawableState());
            }
        }
        if (this.j.isStateful()) {
            this.j.setState(getDrawableState());
        }
        this.f12654new.setColor(m14128continue(this.e));
        this.f12654new.setAlpha(63);
    }

    /* renamed from: final, reason: not valid java name */
    public void mo14157final() {
        this.f12638const.clear();
    }

    @VisibleForTesting
    /* renamed from: finally, reason: not valid java name */
    public void m14158finally(boolean z2) {
        this.b = z2;
    }

    @Override // android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    @VisibleForTesting
    public final int getAccessibilityFocusedVirtualViewId() {
        return this.f12642else.getAccessibilityFocusedVirtualViewId();
    }

    public int getActiveThumbIndex() {
        return this.f12657protected;
    }

    public int getFocusedThumbIndex() {
        return this.f12668transient;
    }

    @Dimension
    public int getHaloRadius() {
        return this.f12643extends;
    }

    @NonNull
    public ColorStateList getHaloTintList() {
        return this.e;
    }

    public int getLabelBehavior() {
        return this.f12659return;
    }

    public float getMinSeparation() {
        return 0.0f;
    }

    public float getStepSize() {
        return this.f12649implements;
    }

    public float getThumbElevation() {
        return this.j.m13959switch();
    }

    @Dimension
    public int getThumbRadius() {
        return this.f12640default;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.j.m13950instanceof();
    }

    public float getThumbStrokeWidth() {
        return this.j.b();
    }

    @NonNull
    public ColorStateList getThumbTintList() {
        return this.j.m13961throws();
    }

    @NonNull
    public ColorStateList getTickActiveTintList() {
        return this.f;
    }

    @NonNull
    public ColorStateList getTickInactiveTintList() {
        return this.g;
    }

    @NonNull
    public ColorStateList getTickTintList() {
        if (this.g.equals(this.f)) {
            return this.f;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    @NonNull
    public ColorStateList getTrackActiveTintList() {
        return this.h;
    }

    @Dimension
    public int getTrackHeight() {
        return this.f12660static;
    }

    @NonNull
    public ColorStateList getTrackInactiveTintList() {
        return this.i;
    }

    @Dimension
    public int getTrackSidePadding() {
        return this.f12663switch;
    }

    @NonNull
    public ColorStateList getTrackTintList() {
        if (this.i.equals(this.h)) {
            return this.h;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    @Dimension
    public int getTrackWidth() {
        return this.a;
    }

    public float getValueFrom() {
        return this.f12661strictfp;
    }

    public float getValueTo() {
        return this.f12670volatile;
    }

    @NonNull
    public List<Float> getValues() {
        return new ArrayList(this.f12652interface);
    }

    public boolean j() {
        if (this.f12657protected != -1) {
            return true;
        }
        float valueOfTouchPositionAbsolute = getValueOfTouchPositionAbsolute();
        float fC = C(valueOfTouchPositionAbsolute);
        this.f12657protected = 0;
        float fAbs = Math.abs(this.f12652interface.get(0).floatValue() - valueOfTouchPositionAbsolute);
        for (int i = 1; i < this.f12652interface.size(); i++) {
            float fAbs2 = Math.abs(this.f12652interface.get(i).floatValue() - valueOfTouchPositionAbsolute);
            float fC2 = C(this.f12652interface.get(i).floatValue());
            if (Float.compare(fAbs2, fAbs) > 1) {
                break;
            }
            boolean z2 = !m14159protected() ? fC2 - fC >= 0.0f : fC2 - fC <= 0.0f;
            if (Float.compare(fAbs2, fAbs) < 0) {
                this.f12657protected = i;
            } else {
                if (Float.compare(fAbs2, fAbs) != 0) {
                    continue;
                } else {
                    if (Math.abs(fC2 - fC) < this.f12671while) {
                        this.f12657protected = -1;
                        return false;
                    }
                    if (z2) {
                        this.f12657protected = i;
                    }
                }
            }
            fAbs = fAbs2;
        }
        return this.f12657protected != -1;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Iterator<TooltipDrawable> it = this.f12636catch.iterator();
        while (it.hasNext()) {
            m14134goto(it.next());
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        BaseSlider<S, L, T>.Cnew cnew = this.f12665this;
        if (cnew != null) {
            removeCallbacks(cnew);
        }
        this.f12644final = false;
        Iterator<TooltipDrawable> it = this.f12636catch.iterator();
        while (it.hasNext()) {
            m14155while(it.next());
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        if (this.d) {
            w();
            m14138instanceof();
        }
        super.onDraw(canvas);
        int iM14127class = m14127class();
        m14146static(canvas, this.a, iM14127class);
        if (((Float) Collections.max(getValues())).floatValue() > this.f12661strictfp) {
            m14145return(canvas, this.a, iM14127class);
        }
        a(canvas);
        if ((this.f12639continue || isFocused()) && isEnabled()) {
            m14149synchronized(canvas, this.a, iM14127class);
            if (this.f12657protected != -1) {
                m14152throws();
            }
        }
        m14148switch(canvas, this.a, iM14127class);
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z2, int i, @Nullable Rect rect) {
        super.onFocusChanged(z2, i, rect);
        if (z2) {
            m14132extends(i);
            this.f12642else.requestKeyboardFocusForVirtualView(this.f12668transient);
        } else {
            this.f12657protected = -1;
            m14129default();
            this.f12642else.clearKeyboardFocusForVirtualView(this.f12668transient);
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, @NonNull KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.f12652interface.size() == 1) {
            this.f12657protected = 0;
        }
        if (this.f12657protected == -1) {
            Boolean boolF = f(i, keyEvent);
            return boolF != null ? boolF.booleanValue() : super.onKeyDown(i, keyEvent);
        }
        this.c |= keyEvent.isLongPress();
        Float fM14150this = m14150this(i);
        if (fM14150this != null) {
            if (p(this.f12652interface.get(this.f12657protected).floatValue() + fM14150this.floatValue())) {
                u();
                postInvalidate();
            }
            return true;
        }
        if (i != 23) {
            if (i == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return c(1);
                }
                if (keyEvent.isShiftPressed()) {
                    return c(-1);
                }
                return false;
            }
            if (i != 66) {
                return super.onKeyDown(i, keyEvent);
            }
        }
        this.f12657protected = -1;
        m14129default();
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, @NonNull KeyEvent keyEvent) {
        this.c = false;
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.f12658public + (this.f12659return == 1 ? this.f12636catch.get(0).getIntrinsicHeight() : 0), 1073741824));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.f12661strictfp = sliderState.f12672do;
        this.f12670volatile = sliderState.f12674if;
        setValuesInternal(sliderState.f12673for);
        this.f12649implements = sliderState.f12675new;
        if (sliderState.f12676try) {
            requestFocus();
        }
        m14144public();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.f12672do = this.f12661strictfp;
        sliderState.f12674if = this.f12670volatile;
        sliderState.f12673for = new ArrayList<>(this.f12652interface);
        sliderState.f12675new = this.f12649implements;
        sliderState.f12676try = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        v(i);
        u();
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float x2 = motionEvent.getX();
        float f = (x2 - this.f12663switch) / this.a;
        this.k = f;
        float fMax = Math.max(0.0f, f);
        this.k = fMax;
        this.k = Math.min(1.0f, fMax);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f12655package = x2;
            if (!m14139interface()) {
                getParent().requestDisallowInterceptTouchEvent(true);
                if (j()) {
                    requestFocus();
                    this.f12639continue = true;
                    s();
                    u();
                    invalidate();
                    g();
                }
            }
        } else if (actionMasked == 1) {
            this.f12639continue = false;
            MotionEvent motionEvent2 = this.f12656private;
            if (motionEvent2 != null && motionEvent2.getActionMasked() == 0 && Math.abs(this.f12656private.getX() - motionEvent.getX()) <= this.f12671while && Math.abs(this.f12656private.getY() - motionEvent.getY()) <= this.f12671while && j()) {
                g();
            }
            if (this.f12657protected != -1) {
                s();
                this.f12657protected = -1;
                h();
            }
            m14129default();
            invalidate();
        } else if (actionMasked == 2) {
            if (!this.f12639continue) {
                if (m14139interface() && Math.abs(x2 - this.f12655package) < this.f12671while) {
                    return false;
                }
                getParent().requestDisallowInterceptTouchEvent(true);
                g();
            }
            if (j()) {
                this.f12639continue = true;
                s();
                u();
                invalidate();
            }
        }
        setPressed(this.f12639continue);
        this.f12656private = MotionEvent.obtain(motionEvent);
        return true;
    }

    /* renamed from: protected, reason: not valid java name */
    public final boolean m14159protected() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    public void removeOnChangeListener(@NonNull L l) {
        this.f12637class.remove(l);
    }

    public void removeOnSliderTouchListener(@NonNull T t2) {
        this.f12638const.remove(t2);
    }

    public void setActiveThumbIndex(int i) {
        this.f12657protected = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
        setLayerType(z2 ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i) {
        if (i < 0 || i >= this.f12652interface.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.f12668transient = i;
        this.f12642else.requestKeyboardFocusForVirtualView(i);
        postInvalidate();
    }

    public void setHaloRadius(@IntRange(from = 0) @Dimension int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (i == this.f12643extends) {
            return;
        }
        this.f12643extends = i;
        Drawable background = getBackground();
        if (o() || !(background instanceof RippleDrawable)) {
            postInvalidate();
        } else {
            i30.m3259if((RippleDrawable) background, this.f12643extends);
        }
    }

    public void setHaloRadiusResource(@DimenRes int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        setHaloRadius(getResources().getDimensionPixelSize(i));
    }

    public void setHaloTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.e)) {
            return;
        }
        this.e = colorStateList;
        Drawable background = getBackground();
        if (!o() && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        this.f12654new.setColor(m14128continue(colorStateList));
        this.f12654new.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i) {
        if (this.f12659return != i) {
            this.f12659return = i;
            requestLayout();
        }
    }

    public void setLabelFormatter(@Nullable LabelFormatter labelFormatter) {
        this.f12633abstract = labelFormatter;
    }

    public void setSeparationUnit(int i) {
        this.l = i;
    }

    public void setStepSize(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException(String.format(r, Float.toString(f), Float.toString(this.f12661strictfp), Float.toString(this.f12670volatile)));
        }
        if (this.f12649implements != f) {
            this.f12649implements = f;
            this.d = true;
            postInvalidate();
        }
    }

    public void setThumbElevation(float f) {
        this.j.y(f);
    }

    public void setThumbElevationResource(@DimenRes int i) {
        setThumbElevation(getResources().getDimension(i));
    }

    public void setThumbRadius(@IntRange(from = 0) @Dimension int i) {
        if (i == this.f12640default) {
            return;
        }
        this.f12640default = i;
        b();
        this.j.setShapeAppearanceModel(ShapeAppearanceModel.m13966do().m14027while(0, this.f12640default).m14003const());
        MaterialShapeDrawable materialShapeDrawable = this.j;
        int i2 = this.f12640default;
        materialShapeDrawable.setBounds(0, 0, i2 * 2, i2 * 2);
        postInvalidate();
    }

    public void setThumbRadiusResource(@DimenRes int i) {
        setThumbRadius(getResources().getDimensionPixelSize(i));
    }

    public void setThumbStrokeColor(@Nullable ColorStateList colorStateList) {
        this.j.Q(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(@ColorRes int i) {
        if (i != 0) {
            setThumbStrokeColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    public void setThumbStrokeWidth(float f) {
        this.j.T(f);
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(@DimenRes int i) {
        if (i != 0) {
            setThumbStrokeWidth(getResources().getDimension(i));
        }
    }

    public void setThumbTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.j.m13961throws())) {
            return;
        }
        this.j.z(colorStateList);
        invalidate();
    }

    public void setTickActiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f)) {
            return;
        }
        this.f = colorStateList;
        this.f12635case.setColor(m14128continue(colorStateList));
        invalidate();
    }

    public void setTickInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.g)) {
            return;
        }
        this.g = colorStateList;
        this.f12669try.setColor(m14128continue(colorStateList));
        invalidate();
    }

    public void setTickTintList(@NonNull ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z2) {
        if (this.f12664synchronized != z2) {
            this.f12664synchronized = z2;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.h)) {
            return;
        }
        this.h = colorStateList;
        this.f12648if.setColor(m14128continue(colorStateList));
        invalidate();
    }

    public void setTrackHeight(@IntRange(from = 0) @Dimension int i) {
        if (this.f12660static != i) {
            this.f12660static = i;
            m14154volatile();
            postInvalidate();
        }
    }

    public void setTrackInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.i)) {
            return;
        }
        this.i = colorStateList;
        this.f12641do.setColor(m14128continue(colorStateList));
        invalidate();
    }

    public void setTrackTintList(@NonNull ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f) {
        this.f12661strictfp = f;
        this.d = true;
        postInvalidate();
    }

    public void setValueTo(float f) {
        this.f12670volatile = f;
        this.d = true;
        postInvalidate();
    }

    public void setValues(@NonNull Float... fArr) {
        ArrayList<Float> arrayList = new ArrayList<>();
        Collections.addAll(arrayList, fArr);
        setValuesInternal(arrayList);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public boolean mo14160strictfp() {
        return this.f12633abstract != null;
    }

    public void t(int i, Rect rect) {
        int iE = this.f12663switch + ((int) (e(getValues().get(i).floatValue()) * this.a));
        int iM14127class = m14127class();
        int i2 = this.f12640default;
        rect.set(iE - i2, iM14127class - i2, iE + i2, iM14127class + i2);
    }

    /* renamed from: transient, reason: not valid java name */
    public boolean mo14161transient() {
        return this.f12664synchronized;
    }

    /* renamed from: com.google.android.material.slider.BaseSlider$new, reason: invalid class name */
    public class Cnew implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public int f12682do;

        private Cnew() {
            this.f12682do = -1;
        }

        /* renamed from: do, reason: not valid java name */
        public void m14164do(int i) {
            this.f12682do = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseSlider.this.f12642else.sendEventForVirtualView(this.f12682do, 4);
        }

        public /* synthetic */ Cnew(BaseSlider baseSlider, Cdo cdo) {
            this();
        }
    }

    public BaseSlider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliderStyle);
    }

    public BaseSlider(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException, InvocationTargetException {
        super(vx0.m8993for(context, attributeSet, i, w), attributeSet, i);
        this.f12636catch = new ArrayList();
        this.f12637class = new ArrayList();
        this.f12638const = new ArrayList();
        this.f12644final = false;
        this.f12639continue = false;
        this.f12652interface = new ArrayList<>();
        this.f12657protected = -1;
        this.f12668transient = -1;
        this.f12649implements = 0.0f;
        this.f12664synchronized = true;
        this.c = false;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.j = materialShapeDrawable;
        this.l = 0;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f12641do = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        Paint paint2 = new Paint();
        this.f12648if = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        Paint paint3 = new Paint(1);
        this.f12646for = paint3;
        paint3.setStyle(Paint.Style.FILL);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint4 = new Paint(1);
        this.f12654new = paint4;
        paint4.setStyle(Paint.Style.FILL);
        Paint paint5 = new Paint();
        this.f12669try = paint5;
        paint5.setStyle(Paint.Style.STROKE);
        paint5.setStrokeCap(Paint.Cap.ROUND);
        Paint paint6 = new Paint();
        this.f12635case = paint6;
        paint6.setStyle(Paint.Style.STROKE);
        paint6.setStrokeCap(Paint.Cap.ROUND);
        m14136implements(context2.getResources());
        this.f12634break = new Cdo(attributeSet, i);
        l(context2, attributeSet, i);
        setFocusable(true);
        setClickable(true);
        materialShapeDrawable.I(2);
        this.f12671while = ViewConfiguration.get(context2).getScaledTouchSlop();
        Ctry ctry = new Ctry(this);
        this.f12642else = ctry;
        ViewCompat.setAccessibilityDelegate(this, ctry);
        this.f12647goto = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    public void setValues(@NonNull List<Float> list) {
        setValuesInternal(new ArrayList<>(list));
    }
}
