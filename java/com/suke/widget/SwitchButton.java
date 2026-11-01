package com.suke.widget;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import com.scwang.smartrefresh.header.TaurusHeader;

/* loaded from: classes2.dex */
public class SwitchButton extends View implements Checkable {
    private static final int q = m24505public(58.0f);
    private static final int r = m24505public(36.0f);
    private RectF a;

    /* renamed from: abstract, reason: not valid java name */
    private float f20672abstract;
    private int b;

    /* renamed from: break, reason: not valid java name */
    private float f20673break;
    private ValueAnimator c;

    /* renamed from: case, reason: not valid java name */
    private final int f20674case;

    /* renamed from: catch, reason: not valid java name */
    private float f20675catch;

    /* renamed from: class, reason: not valid java name */
    private float f20676class;

    /* renamed from: const, reason: not valid java name */
    private float f20677const;

    /* renamed from: continue, reason: not valid java name */
    private float f20678continue;
    private final ArgbEvaluator d;

    /* renamed from: default, reason: not valid java name */
    private int f20679default;

    /* renamed from: do, reason: not valid java name */
    private final int f20680do;
    private boolean e;

    /* renamed from: else, reason: not valid java name */
    private int f20681else;

    /* renamed from: extends, reason: not valid java name */
    private float f20682extends;
    private boolean f;

    /* renamed from: final, reason: not valid java name */
    private float f20683final;

    /* renamed from: finally, reason: not valid java name */
    private int f20684finally;

    /* renamed from: for, reason: not valid java name */
    private final int f20685for;
    private boolean g;

    /* renamed from: goto, reason: not valid java name */
    private int f20686goto;
    private boolean h;
    private boolean i;

    /* renamed from: if, reason: not valid java name */
    private final int f20687if;

    /* renamed from: implements, reason: not valid java name */
    private Cnew f20688implements;

    /* renamed from: import, reason: not valid java name */
    private float f20689import;

    /* renamed from: instanceof, reason: not valid java name */
    private Cnew f20690instanceof;

    /* renamed from: interface, reason: not valid java name */
    private float f20691interface;
    private boolean j;
    private boolean k;
    private OnCheckedChangeListener l;
    private long m;
    private Runnable n;

    /* renamed from: native, reason: not valid java name */
    private float f20692native;

    /* renamed from: new, reason: not valid java name */
    private final int f20693new;
    private ValueAnimator.AnimatorUpdateListener o;
    private Animator.AnimatorListener p;

    /* renamed from: package, reason: not valid java name */
    private int f20694package;

    /* renamed from: private, reason: not valid java name */
    private float f20695private;

    /* renamed from: protected, reason: not valid java name */
    private Paint f20696protected;

    /* renamed from: public, reason: not valid java name */
    private int f20697public;

    /* renamed from: return, reason: not valid java name */
    private int f20698return;

    /* renamed from: static, reason: not valid java name */
    private int f20699static;

    /* renamed from: strictfp, reason: not valid java name */
    private float f20700strictfp;

    /* renamed from: super, reason: not valid java name */
    private float f20701super;

    /* renamed from: switch, reason: not valid java name */
    private int f20702switch;

    /* renamed from: synchronized, reason: not valid java name */
    private Cnew f20703synchronized;

    /* renamed from: this, reason: not valid java name */
    private int f20704this;

    /* renamed from: throw, reason: not valid java name */
    private float f20705throw;

    /* renamed from: throws, reason: not valid java name */
    private int f20706throws;

    /* renamed from: transient, reason: not valid java name */
    private Paint f20707transient;

    /* renamed from: try, reason: not valid java name */
    private final int f20708try;

    /* renamed from: volatile, reason: not valid java name */
    private float f20709volatile;

    /* renamed from: while, reason: not valid java name */
    private float f20710while;

    public interface OnCheckedChangeListener {
        void onCheckedChanged(SwitchButton switchButton, boolean z);
    }

    /* renamed from: com.suke.widget.SwitchButton$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SwitchButton.this.m24481abstract()) {
                return;
            }
            SwitchButton.this.m24498instanceof();
        }
    }

    /* renamed from: com.suke.widget.SwitchButton$for, reason: invalid class name */
    public class Cfor implements Animator.AnimatorListener {
        public Cfor() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            int i = SwitchButton.this.b;
            if (i == 1) {
                SwitchButton.this.b = 2;
                SwitchButton.this.f20688implements.f20715for = 0;
                SwitchButton.this.f20688implements.f20717new = SwitchButton.this.f20673break;
                SwitchButton.this.postInvalidate();
                return;
            }
            if (i == 3) {
                SwitchButton.this.b = 0;
                SwitchButton.this.postInvalidate();
                return;
            }
            if (i == 4) {
                SwitchButton.this.b = 0;
                SwitchButton.this.postInvalidate();
                SwitchButton.this.m24497import();
            } else {
                if (i != 5) {
                    return;
                }
                SwitchButton switchButton = SwitchButton.this;
                switchButton.e = true ^ switchButton.e;
                SwitchButton.this.b = 0;
                SwitchButton.this.postInvalidate();
                SwitchButton.this.m24497import();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: com.suke.widget.SwitchButton$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {
        public Cif() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            int i = SwitchButton.this.b;
            if (i == 1 || i == 3 || i == 4) {
                SwitchButton.this.f20688implements.f20715for = ((Integer) SwitchButton.this.d.evaluate(fFloatValue, Integer.valueOf(SwitchButton.this.f20690instanceof.f20715for), Integer.valueOf(SwitchButton.this.f20703synchronized.f20715for))).intValue();
                SwitchButton.this.f20688implements.f20717new = SwitchButton.this.f20690instanceof.f20717new + ((SwitchButton.this.f20703synchronized.f20717new - SwitchButton.this.f20690instanceof.f20717new) * fFloatValue);
                if (SwitchButton.this.b != 1) {
                    SwitchButton.this.f20688implements.f20714do = SwitchButton.this.f20690instanceof.f20714do + ((SwitchButton.this.f20703synchronized.f20714do - SwitchButton.this.f20690instanceof.f20714do) * fFloatValue);
                }
                SwitchButton.this.f20688implements.f20716if = ((Integer) SwitchButton.this.d.evaluate(fFloatValue, Integer.valueOf(SwitchButton.this.f20690instanceof.f20716if), Integer.valueOf(SwitchButton.this.f20703synchronized.f20716if))).intValue();
            } else if (i == 5) {
                SwitchButton.this.f20688implements.f20714do = SwitchButton.this.f20690instanceof.f20714do + ((SwitchButton.this.f20703synchronized.f20714do - SwitchButton.this.f20690instanceof.f20714do) * fFloatValue);
                float f = (SwitchButton.this.f20688implements.f20714do - SwitchButton.this.f20709volatile) / (SwitchButton.this.f20691interface - SwitchButton.this.f20709volatile);
                SwitchButton.this.f20688implements.f20716if = ((Integer) SwitchButton.this.d.evaluate(f, Integer.valueOf(SwitchButton.this.f20698return), Integer.valueOf(SwitchButton.this.f20699static))).intValue();
                SwitchButton.this.f20688implements.f20717new = SwitchButton.this.f20673break * f;
                SwitchButton.this.f20688implements.f20715for = ((Integer) SwitchButton.this.d.evaluate(f, 0, Integer.valueOf(SwitchButton.this.f20706throws))).intValue();
            }
            SwitchButton.this.postInvalidate();
        }
    }

    /* renamed from: com.suke.widget.SwitchButton$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        public float f20714do;

        /* renamed from: for, reason: not valid java name */
        public int f20715for;

        /* renamed from: if, reason: not valid java name */
        public int f20716if;

        /* renamed from: new, reason: not valid java name */
        public float f20717new;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public void m24521if(Cnew cnew) {
            this.f20714do = cnew.f20714do;
            this.f20716if = cnew.f20716if;
            this.f20715for = cnew.f20715for;
            this.f20717new = cnew.f20717new;
        }
    }

    public SwitchButton(Context context) {
        super(context);
        this.f20680do = 0;
        this.f20687if = 1;
        this.f20685for = 2;
        this.f20693new = 3;
        this.f20708try = 4;
        this.f20674case = 5;
        this.a = new RectF();
        this.b = 0;
        this.d = new ArgbEvaluator();
        this.i = false;
        this.j = false;
        this.k = false;
        this.n = new Cdo();
        this.o = new Cif();
        this.p = new Cfor();
        m24502package(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: abstract, reason: not valid java name */
    public boolean m24481abstract() {
        return this.b != 0;
    }

    private void b(boolean z, boolean z2) {
        if (isEnabled()) {
            if (this.k) {
                throw new RuntimeException("should NOT switch the state in method: [onCheckedChanged]!");
            }
            if (!this.j) {
                this.e = !this.e;
                if (z2) {
                    m24497import();
                    return;
                }
                return;
            }
            if (this.c.isRunning()) {
                this.c.cancel();
            }
            if (this.f && z) {
                this.b = 5;
                this.f20690instanceof.m24521if(this.f20688implements);
                if (isChecked()) {
                    setUncheckViewState(this.f20703synchronized);
                } else {
                    setCheckedViewState(this.f20703synchronized);
                }
                this.c.start();
                return;
            }
            this.e = !this.e;
            if (isChecked()) {
                setCheckedViewState(this.f20688implements);
            } else {
                setUncheckViewState(this.f20688implements);
            }
            postInvalidate();
            if (z2) {
                m24497import();
            }
        }
    }

    /* renamed from: continue, reason: not valid java name */
    private boolean m24487continue() {
        int i = this.b;
        return i == 1 || i == 3;
    }

    /* renamed from: default, reason: not valid java name */
    private void m24488default(Canvas canvas, float f, float f2, float f3, float f4, float f5, Paint paint) {
        if (Build.VERSION.SDK_INT >= 21) {
            canvas.drawRoundRect(f, f2, f3, f4, f5, f5, paint);
        } else {
            this.a.set(f, f2, f3, f4);
            canvas.drawRoundRect(this.a, f5, f5, paint);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    private void m24491extends(Canvas canvas) {
        m24517finally(canvas, this.f20684finally, this.f20694package, this.f20705throw - this.f20695private, this.f20692native, this.f20672abstract, this.f20707transient);
    }

    /* renamed from: implements, reason: not valid java name */
    private void m24496implements() {
        if (m24503private() || m24487continue()) {
            if (this.c.isRunning()) {
                this.c.cancel();
            }
            this.b = 3;
            this.f20690instanceof.m24521if(this.f20688implements);
            if (isChecked()) {
                setCheckedViewState(this.f20703synchronized);
            } else {
                setUncheckViewState(this.f20703synchronized);
            }
            this.c.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public void m24497import() {
        OnCheckedChangeListener onCheckedChangeListener = this.l;
        if (onCheckedChangeListener != null) {
            this.k = true;
            onCheckedChangeListener.onCheckedChanged(this, isChecked());
        }
        this.k = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: instanceof, reason: not valid java name */
    public void m24498instanceof() {
        if (!m24481abstract() && this.i) {
            if (this.c.isRunning()) {
                this.c.cancel();
            }
            this.b = 1;
            this.f20690instanceof.m24521if(this.f20688implements);
            this.f20703synchronized.m24521if(this.f20688implements);
            if (isChecked()) {
                Cnew cnew = this.f20703synchronized;
                int i = this.f20699static;
                cnew.f20716if = i;
                cnew.f20714do = this.f20691interface;
                cnew.f20715for = i;
            } else {
                Cnew cnew2 = this.f20703synchronized;
                cnew2.f20716if = this.f20698return;
                cnew2.f20714do = this.f20709volatile;
                cnew2.f20717new = this.f20673break;
            }
            this.c.start();
        }
    }

    /* renamed from: interface, reason: not valid java name */
    private static int m24499interface(TypedArray typedArray, int i, int i2) {
        return typedArray == null ? i2 : typedArray.getInt(i, i2);
    }

    /* renamed from: native, reason: not valid java name */
    private static float m24500native(float f) {
        return TypedValue.applyDimension(1, f, Resources.getSystem().getDisplayMetrics());
    }

    /* renamed from: package, reason: not valid java name */
    private void m24502package(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = attributeSet != null ? context.obtainStyledAttributes(attributeSet, R.styleable.SwitchButton) : null;
        this.g = m24508strictfp(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_shadow_effect, true);
        this.f20684finally = m24515volatile(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_uncheckcircle_color, -5592406);
        this.f20694package = m24513transient(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_uncheckcircle_width, m24505public(1.5f));
        this.f20695private = m24500native(10.0f);
        this.f20672abstract = m24504protected(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_uncheckcircle_radius, m24500native(4.0f));
        this.f20678continue = m24500native(4.0f);
        this.f20700strictfp = m24500native(4.0f);
        this.f20681else = m24513transient(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_shadow_radius, m24505public(2.5f));
        this.f20686goto = m24513transient(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_shadow_offset, m24505public(1.5f));
        this.f20704this = m24515volatile(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_shadow_color, 855638016);
        this.f20698return = m24515volatile(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_uncheck_color, -2236963);
        this.f20699static = m24515volatile(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_checked_color, -11414681);
        this.f20702switch = m24513transient(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_border_width, m24505public(1.0f));
        this.f20706throws = m24515volatile(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_checkline_color, -1);
        this.f20679default = m24513transient(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_checkline_width, m24505public(1.0f));
        this.f20682extends = m24500native(6.0f);
        int iM24515volatile = m24515volatile(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_button_color, -1);
        int iM24499interface = m24499interface(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_effect_duration, TaurusHeader.a);
        this.e = m24508strictfp(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_checked, false);
        this.h = m24508strictfp(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_show_indicator, true);
        this.f20697public = m24515volatile(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_background, -1);
        this.f = m24508strictfp(typedArrayObtainStyledAttributes, R.styleable.SwitchButton_sb_enable_effect, true);
        if (typedArrayObtainStyledAttributes != null) {
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f20707transient = new Paint(1);
        Paint paint = new Paint(1);
        this.f20696protected = paint;
        paint.setColor(iM24515volatile);
        if (this.g) {
            this.f20696protected.setShadowLayer(this.f20681else, 0.0f, this.f20686goto, this.f20704this);
        }
        this.f20688implements = new Cnew();
        this.f20690instanceof = new Cnew();
        this.f20703synchronized = new Cnew();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.c = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(iM24499interface);
        this.c.setRepeatCount(0);
        this.c.addUpdateListener(this.o);
        this.c.addListener(this.p);
        super.setClickable(true);
        setPadding(0, 0, 0, 0);
        if (Build.VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
    }

    /* renamed from: private, reason: not valid java name */
    private boolean m24503private() {
        return this.b == 2;
    }

    /* renamed from: protected, reason: not valid java name */
    private static float m24504protected(TypedArray typedArray, int i, float f) {
        return typedArray == null ? f : typedArray.getDimension(i, f);
    }

    /* renamed from: public, reason: not valid java name */
    private static int m24505public(float f) {
        return (int) m24500native(f);
    }

    /* renamed from: return, reason: not valid java name */
    private void m24506return(Canvas canvas, float f, float f2, float f3, float f4, float f5, float f6, Paint paint) {
        if (Build.VERSION.SDK_INT >= 21) {
            canvas.drawArc(f, f2, f3, f4, f5, f6, true, paint);
        } else {
            this.a.set(f, f2, f3, f4);
            canvas.drawArc(this.a, f5, f6, true, paint);
        }
    }

    private void setCheckedViewState(Cnew cnew) {
        cnew.f20717new = this.f20673break;
        cnew.f20716if = this.f20699static;
        cnew.f20715for = this.f20706throws;
        cnew.f20714do = this.f20691interface;
    }

    private void setUncheckViewState(Cnew cnew) {
        cnew.f20717new = 0.0f;
        cnew.f20716if = this.f20698return;
        cnew.f20715for = 0;
        cnew.f20714do = this.f20709volatile;
    }

    /* renamed from: static, reason: not valid java name */
    private void m24507static(Canvas canvas, float f, float f2) {
        canvas.drawCircle(f, f2, this.f20675catch, this.f20696protected);
        this.f20707transient.setStyle(Paint.Style.STROKE);
        this.f20707transient.setStrokeWidth(1.0f);
        this.f20707transient.setColor(-2236963);
        canvas.drawCircle(f, f2, this.f20675catch, this.f20707transient);
    }

    /* renamed from: strictfp, reason: not valid java name */
    private static boolean m24508strictfp(TypedArray typedArray, int i, boolean z) {
        return typedArray == null ? z : typedArray.getBoolean(i, z);
    }

    /* renamed from: synchronized, reason: not valid java name */
    private void m24510synchronized() {
        if (this.c.isRunning()) {
            this.c.cancel();
        }
        this.b = 4;
        this.f20690instanceof.m24521if(this.f20688implements);
        if (isChecked()) {
            setCheckedViewState(this.f20703synchronized);
        } else {
            setUncheckViewState(this.f20703synchronized);
        }
        this.c.start();
    }

    /* renamed from: transient, reason: not valid java name */
    private static int m24513transient(TypedArray typedArray, int i, int i2) {
        return typedArray == null ? i2 : typedArray.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: volatile, reason: not valid java name */
    private static int m24515volatile(TypedArray typedArray, int i, int i2) {
        return typedArray == null ? i2 : typedArray.getColor(i, i2);
    }

    public void a(boolean z) {
        b(z, true);
    }

    /* renamed from: finally, reason: not valid java name */
    public void m24517finally(Canvas canvas, int i, float f, float f2, float f3, float f4, Paint paint) {
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(i);
        paint.setStrokeWidth(f);
        canvas.drawCircle(f2, f3, f4, paint);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.e;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f20707transient.setStrokeWidth(this.f20702switch);
        this.f20707transient.setStyle(Paint.Style.FILL);
        this.f20707transient.setColor(this.f20697public);
        m24488default(canvas, this.f20683final, this.f20701super, this.f20705throw, this.f20710while, this.f20673break, this.f20707transient);
        this.f20707transient.setStyle(Paint.Style.STROKE);
        this.f20707transient.setColor(this.f20698return);
        m24488default(canvas, this.f20683final, this.f20701super, this.f20705throw, this.f20710while, this.f20673break, this.f20707transient);
        if (this.h) {
            m24491extends(canvas);
        }
        float f = this.f20688implements.f20717new * 0.5f;
        this.f20707transient.setStyle(Paint.Style.STROKE);
        this.f20707transient.setColor(this.f20688implements.f20716if);
        this.f20707transient.setStrokeWidth(this.f20702switch + (f * 2.0f));
        m24488default(canvas, this.f20683final + f, this.f20701super + f, this.f20705throw - f, this.f20710while - f, this.f20673break, this.f20707transient);
        this.f20707transient.setStyle(Paint.Style.FILL);
        this.f20707transient.setStrokeWidth(1.0f);
        float f2 = this.f20683final;
        float f3 = this.f20701super;
        float f4 = this.f20673break;
        m24506return(canvas, f2, f3, f2 + (f4 * 2.0f), f3 + (f4 * 2.0f), 90.0f, 180.0f, this.f20707transient);
        float f5 = this.f20683final;
        float f6 = this.f20673break;
        float f7 = this.f20701super;
        canvas.drawRect(f5 + f6, f7, this.f20688implements.f20714do, f7 + (f6 * 2.0f), this.f20707transient);
        if (this.h) {
            m24518switch(canvas);
        }
        m24507static(canvas, this.f20688implements.f20714do, this.f20692native);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode == 0 || mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(q, 1073741824);
        }
        if (mode2 == 0 || mode2 == Integer.MIN_VALUE) {
            i2 = View.MeasureSpec.makeMeasureSpec(r, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float fMax = Math.max(this.f20681else + this.f20686goto, this.f20702switch);
        float f = i2 - fMax;
        float f2 = f - fMax;
        this.f20676class = f2;
        float f3 = i - fMax;
        this.f20677const = f3 - fMax;
        float f4 = f2 * 0.5f;
        this.f20673break = f4;
        this.f20675catch = f4 - this.f20702switch;
        this.f20683final = fMax;
        this.f20701super = fMax;
        this.f20705throw = f3;
        this.f20710while = f;
        this.f20689import = (fMax + f3) * 0.5f;
        this.f20692native = (f + fMax) * 0.5f;
        this.f20709volatile = fMax + f4;
        this.f20691interface = f3 - f4;
        if (isChecked()) {
            setCheckedViewState(this.f20688implements);
        } else {
            setUncheckViewState(this.f20688implements);
        }
        this.j = true;
        postInvalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.i = true;
            this.m = System.currentTimeMillis();
            removeCallbacks(this.n);
            postDelayed(this.n, 100L);
        } else if (actionMasked == 1) {
            this.i = false;
            removeCallbacks(this.n);
            if (System.currentTimeMillis() - this.m <= 300) {
                toggle();
            } else if (m24503private()) {
                boolean z = Math.max(0.0f, Math.min(1.0f, motionEvent.getX() / ((float) getWidth()))) > 0.5f;
                if (z == isChecked()) {
                    m24496implements();
                } else {
                    this.e = z;
                    m24510synchronized();
                }
            } else if (m24487continue()) {
                m24496implements();
            }
        } else if (actionMasked == 2) {
            float x = motionEvent.getX();
            if (m24487continue()) {
                float fMax = Math.max(0.0f, Math.min(1.0f, x / getWidth()));
                Cnew cnew = this.f20688implements;
                float f = this.f20709volatile;
                cnew.f20714do = f + ((this.f20691interface - f) * fMax);
            } else if (m24503private()) {
                float fMax2 = Math.max(0.0f, Math.min(1.0f, x / getWidth()));
                Cnew cnew2 = this.f20688implements;
                float f2 = this.f20709volatile;
                cnew2.f20714do = f2 + ((this.f20691interface - f2) * fMax2);
                cnew2.f20716if = ((Integer) this.d.evaluate(fMax2, Integer.valueOf(this.f20698return), Integer.valueOf(this.f20699static))).intValue();
                postInvalidate();
            }
        } else if (actionMasked == 3) {
            this.i = false;
            removeCallbacks(this.n);
            if (m24487continue() || m24503private()) {
                m24496implements();
            }
        }
        return true;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (z == isChecked()) {
            postInvalidate();
        } else {
            b(this.f, false);
        }
    }

    public void setEnableEffect(boolean z) {
        this.f = z;
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.l = onCheckedChangeListener;
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
    }

    @Override // android.view.View
    public final void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(0, 0, 0, 0);
    }

    public void setShadowEffect(boolean z) {
        if (this.g == z) {
            return;
        }
        this.g = z;
        if (z) {
            this.f20696protected.setShadowLayer(this.f20681else, 0.0f, this.f20686goto, this.f20704this);
        } else {
            this.f20696protected.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public void m24518switch(Canvas canvas) {
        int i = this.f20688implements.f20715for;
        float f = this.f20679default;
        float f2 = this.f20683final;
        float f3 = this.f20673break;
        float f4 = (f2 + f3) - this.f20678continue;
        float f5 = this.f20692native;
        float f6 = this.f20682extends;
        m24519throws(canvas, i, f, f4, f5 - f6, (f2 + f3) - this.f20700strictfp, f5 + f6, this.f20707transient);
    }

    /* renamed from: throws, reason: not valid java name */
    public void m24519throws(Canvas canvas, int i, float f, float f2, float f3, float f4, float f5, Paint paint) {
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(i);
        paint.setStrokeWidth(f);
        canvas.drawLine(f2, f3, f4, f5, paint);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        a(true);
    }

    public SwitchButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f20680do = 0;
        this.f20687if = 1;
        this.f20685for = 2;
        this.f20693new = 3;
        this.f20708try = 4;
        this.f20674case = 5;
        this.a = new RectF();
        this.b = 0;
        this.d = new ArgbEvaluator();
        this.i = false;
        this.j = false;
        this.k = false;
        this.n = new Cdo();
        this.o = new Cif();
        this.p = new Cfor();
        m24502package(context, attributeSet);
    }

    public SwitchButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f20680do = 0;
        this.f20687if = 1;
        this.f20685for = 2;
        this.f20693new = 3;
        this.f20708try = 4;
        this.f20674case = 5;
        this.a = new RectF();
        this.b = 0;
        this.d = new ArgbEvaluator();
        this.i = false;
        this.j = false;
        this.k = false;
        this.n = new Cdo();
        this.o = new Cif();
        this.p = new Cfor();
        m24502package(context, attributeSet);
    }

    @TargetApi(21)
    public SwitchButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f20680do = 0;
        this.f20687if = 1;
        this.f20685for = 2;
        this.f20693new = 3;
        this.f20708try = 4;
        this.f20674case = 5;
        this.a = new RectF();
        this.b = 0;
        this.d = new ArgbEvaluator();
        this.i = false;
        this.j = false;
        this.k = false;
        this.n = new Cdo();
        this.o = new Cif();
        this.p = new Cfor();
        m24502package(context, attributeSet);
    }
}
