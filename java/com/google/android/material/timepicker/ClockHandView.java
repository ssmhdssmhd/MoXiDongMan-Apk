package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.scwang.smartrefresh.header.FunGameBattleCityHeader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
class ClockHandView extends View {

    /* renamed from: import, reason: not valid java name */
    private static final int f13076import = 200;

    /* renamed from: break, reason: not valid java name */
    private final Paint f13077break;

    /* renamed from: case, reason: not valid java name */
    private int f13078case;

    /* renamed from: catch, reason: not valid java name */
    private final RectF f13079catch;

    /* renamed from: class, reason: not valid java name */
    @Px
    private final int f13080class;

    /* renamed from: const, reason: not valid java name */
    private float f13081const;

    /* renamed from: do, reason: not valid java name */
    private ValueAnimator f13082do;

    /* renamed from: else, reason: not valid java name */
    private final List<OnRotateListener> f13083else;

    /* renamed from: final, reason: not valid java name */
    private boolean f13084final;

    /* renamed from: for, reason: not valid java name */
    private float f13085for;

    /* renamed from: goto, reason: not valid java name */
    private final int f13086goto;

    /* renamed from: if, reason: not valid java name */
    private boolean f13087if;

    /* renamed from: new, reason: not valid java name */
    private float f13088new;

    /* renamed from: super, reason: not valid java name */
    private OnActionUpListener f13089super;

    /* renamed from: this, reason: not valid java name */
    private final float f13090this;

    /* renamed from: throw, reason: not valid java name */
    private double f13091throw;

    /* renamed from: try, reason: not valid java name */
    private boolean f13092try;

    /* renamed from: while, reason: not valid java name */
    private int f13093while;

    public interface OnActionUpListener {
        void onActionUp(@FloatRange(from = 0.0d, to = 360.0d) float f, boolean z);
    }

    public interface OnRotateListener {
        void onRotate(@FloatRange(from = 0.0d, to = 360.0d) float f, boolean z);
    }

    /* renamed from: com.google.android.material.timepicker.ClockHandView$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ClockHandView.this.m14519const(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
        }
    }

    /* renamed from: com.google.android.material.timepicker.ClockHandView$if, reason: invalid class name */
    public class Cif extends AnimatorListenerAdapter {
        public Cif() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    public ClockHandView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public void m14519const(@FloatRange(from = 0.0d, to = 360.0d) float f, boolean z) {
        float f2 = f % 360.0f;
        this.f13081const = f2;
        this.f13091throw = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        float width = (getWidth() / 2) + (this.f13093while * ((float) Math.cos(this.f13091throw)));
        float fSin = height + (this.f13093while * ((float) Math.sin(this.f13091throw)));
        RectF rectF = this.f13079catch;
        int i = this.f13086goto;
        rectF.set(width - i, fSin - i, width + i, fSin + i);
        Iterator<OnRotateListener> it = this.f13083else.iterator();
        while (it.hasNext()) {
            it.next().onRotate(f2, z);
        }
        invalidate();
    }

    /* renamed from: else, reason: not valid java name */
    private Pair<Float, Float> m14521else(float f) {
        float fM14531try = m14531try();
        if (Math.abs(fM14531try - f) > 180.0f) {
            if (fM14531try > 180.0f && f < 180.0f) {
                f += 360.0f;
            }
            if (fM14531try < 180.0f && f > 180.0f) {
                fM14531try += 360.0f;
            }
        }
        return new Pair<>(Float.valueOf(fM14531try), Float.valueOf(f));
    }

    /* renamed from: goto, reason: not valid java name */
    private boolean m14522goto(float f, float f2, boolean z, boolean z2, boolean z3) {
        float fM14524new = m14524new(f, f2);
        boolean z4 = false;
        boolean z5 = m14531try() != fM14524new;
        if (z2 && z5) {
            return true;
        }
        if (!z5 && !z) {
            return false;
        }
        if (z3 && this.f13087if) {
            z4 = true;
        }
        m14528class(fM14524new, z4);
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    private void m14523if(Canvas canvas) {
        int height = getHeight() / 2;
        float width = getWidth() / 2;
        float fCos = (this.f13093while * ((float) Math.cos(this.f13091throw))) + width;
        float f = height;
        float fSin = (this.f13093while * ((float) Math.sin(this.f13091throw))) + f;
        this.f13077break.setStrokeWidth(0.0f);
        canvas.drawCircle(fCos, fSin, this.f13086goto, this.f13077break);
        double dSin = Math.sin(this.f13091throw);
        double dCos = Math.cos(this.f13091throw);
        Double.isNaN(d);
        Double.isNaN(d);
        this.f13077break.setStrokeWidth(this.f13080class);
        canvas.drawLine(width, f, r1 + ((int) (dCos * d)), height + ((int) (d * dSin)), this.f13077break);
        canvas.drawCircle(width, f, this.f13090this, this.f13077break);
    }

    /* renamed from: new, reason: not valid java name */
    private int m14524new(float f, float f2) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f2 - (getHeight() / 2), f - (getWidth() / 2)))) + 90;
        return degrees < 0 ? degrees + FunGameBattleCityHeader.u : degrees;
    }

    public void addOnRotateListener(OnRotateListener onRotateListener) {
        this.f13083else.add(onRotateListener);
    }

    /* renamed from: break, reason: not valid java name */
    public void m14525break(@Dimension int i) {
        this.f13093while = i;
        invalidate();
    }

    /* renamed from: case, reason: not valid java name */
    public int m14526case() {
        return this.f13086goto;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m14527catch(@FloatRange(from = 0.0d, to = 360.0d) float f) {
        m14528class(f, false);
    }

    /* renamed from: class, reason: not valid java name */
    public void m14528class(@FloatRange(from = 0.0d, to = 360.0d) float f, boolean z) {
        ValueAnimator valueAnimator = this.f13082do;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z) {
            m14519const(f, false);
            return;
        }
        Pair<Float, Float> pairM14521else = m14521else(f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(((Float) pairM14521else.first).floatValue(), ((Float) pairM14521else.second).floatValue());
        this.f13082do = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(200L);
        this.f13082do.addUpdateListener(new Cdo());
        this.f13082do.addListener(new Cif());
        this.f13082do.start();
    }

    /* renamed from: for, reason: not valid java name */
    public RectF m14529for() {
        return this.f13079catch;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        m14523if(canvas);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m14527catch(m14531try());
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        OnActionUpListener onActionUpListener;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i = (int) (x - this.f13085for);
                int i2 = (int) (y - this.f13088new);
                this.f13092try = (i * i) + (i2 * i2) > this.f13078case;
                boolean z4 = this.f13084final;
                z = actionMasked == 1;
                z2 = z4;
            } else {
                z = false;
                z2 = false;
            }
            z3 = false;
        } else {
            this.f13085for = x;
            this.f13088new = y;
            this.f13092try = true;
            this.f13084final = false;
            z = false;
            z2 = false;
            z3 = true;
        }
        boolean zM14522goto = m14522goto(x, y, z2, z3, z) | this.f13084final;
        this.f13084final = zM14522goto;
        if (zM14522goto && z && (onActionUpListener = this.f13089super) != null) {
            onActionUpListener.onActionUp(m14524new(x, y), this.f13092try);
        }
        return true;
    }

    public void setOnActionUpListener(OnActionUpListener onActionUpListener) {
        this.f13089super = onActionUpListener;
    }

    /* renamed from: this, reason: not valid java name */
    public void m14530this(boolean z) {
        this.f13087if = z;
    }

    @FloatRange(from = 0.0d, to = 360.0d)
    /* renamed from: try, reason: not valid java name */
    public float m14531try() {
        return this.f13081const;
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f13083else = new ArrayList();
        Paint paint = new Paint();
        this.f13077break = paint;
        this.f13079catch = new RectF();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClockHandView, i, R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.f13093while = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_materialCircleRadius, 0);
        this.f13086goto = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_selectorSize, 0);
        this.f13080class = getResources().getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.f13090this = r6.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        m14527catch(0.0f);
        this.f13078case = ViewConfiguration.get(context).getScaledTouchSlop();
        ViewCompat.setImportantForAccessibility(this, 2);
        typedArrayObtainStyledAttributes.recycle();
    }
}
