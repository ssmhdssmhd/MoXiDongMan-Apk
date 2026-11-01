package com.h6ah4i.android.widget.verticalseekbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class VerticalSeekBar extends AppCompatSeekBar {

    /* renamed from: case, reason: not valid java name */
    public static final int f18159case = 270;

    /* renamed from: try, reason: not valid java name */
    public static final int f18160try = 90;

    /* renamed from: do, reason: not valid java name */
    private boolean f18161do;

    /* renamed from: for, reason: not valid java name */
    private Method f18162for;

    /* renamed from: if, reason: not valid java name */
    private Drawable f18163if;

    /* renamed from: new, reason: not valid java name */
    private int f18164new;

    public VerticalSeekBar(Context context) {
        super(context);
        this.f18164new = 90;
        m22749for(context, null, 0, 0);
    }

    /* renamed from: break, reason: not valid java name */
    private void m22745break(MotionEvent motionEvent) {
        int paddingLeft = super.getPaddingLeft();
        int paddingRight = super.getPaddingRight();
        int height = (getHeight() - paddingLeft) - paddingRight;
        int y = (int) motionEvent.getY();
        int i = this.f18164new;
        float f = 0.0f;
        float f2 = i != 90 ? i != 270 ? 0.0f : r2 - y : y - paddingLeft;
        if (f2 >= 0.0f && height != 0) {
            float f3 = height;
            f = f2 > f3 ? 1.0f : f2 / f3;
        }
        m22747do((int) (f * getMax()), true);
    }

    /* renamed from: case, reason: not valid java name */
    private void m22746case() {
        this.f18161do = false;
    }

    /* renamed from: do, reason: not valid java name */
    private synchronized void m22747do(int i, boolean z) {
        if (this.f18162for == null) {
            try {
                Method declaredMethod = ProgressBar.class.getDeclaredMethod("setProgress", Integer.TYPE, Boolean.TYPE);
                declaredMethod.setAccessible(true);
                this.f18162for = declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        Method method = this.f18162for;
        if (method != null) {
            try {
                method.invoke(this, Integer.valueOf(i), Boolean.valueOf(z));
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
            }
        } else {
            super.setProgress(i);
        }
        m22753this();
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m22748else(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            setPressed(true);
            m22754try();
            m22745break(motionEvent);
            m22751if(true);
            invalidate();
        } else if (action == 1) {
            if (this.f18161do) {
                m22745break(motionEvent);
                m22746case();
                setPressed(false);
            } else {
                m22754try();
                m22745break(motionEvent);
                m22746case();
                m22751if(false);
            }
            invalidate();
        } else if (action != 2) {
            if (action == 3) {
                if (this.f18161do) {
                    m22746case();
                    setPressed(false);
                }
                invalidate();
            }
        } else if (this.f18161do) {
            m22745break(motionEvent);
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    private void m22749for(Context context, AttributeSet attributeSet, int i, int i2) {
        ViewCompat.setLayoutDirection(this, 0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.VerticalSeekBar, i, i2);
            int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.VerticalSeekBar_seekBarRotation, 0);
            if (m22752new(integer)) {
                this.f18164new = integer;
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private VerticalSeekBarWrapper getWrapper() {
        ViewParent parent = getParent();
        if (parent instanceof VerticalSeekBarWrapper) {
            return (VerticalSeekBarWrapper) parent;
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    private boolean m22750goto(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (zOnTouchEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                m22751if(true);
            } else if (action == 1 || action == 3) {
                m22751if(false);
            }
        }
        return zOnTouchEvent;
    }

    /* renamed from: if, reason: not valid java name */
    private void m22751if(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static boolean m22752new(int i) {
        return i == 90 || i == 270;
    }

    /* renamed from: this, reason: not valid java name */
    private void m22753this() {
        onSizeChanged(super.getWidth(), super.getHeight(), 0, 0);
    }

    /* renamed from: try, reason: not valid java name */
    private void m22754try() {
        this.f18161do = true;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m22755catch() {
        return (Build.VERSION.SDK_INT >= 11) && !isInEditMode();
    }

    public int getRotationAngle() {
        return this.f18164new;
    }

    @Override // androidx.appcompat.widget.AppCompatSeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(Canvas canvas) {
        if (!m22755catch()) {
            int i = this.f18164new;
            if (i == 90) {
                canvas.rotate(90.0f);
                canvas.translate(0.0f, -super.getWidth());
            } else if (i == 270) {
                canvas.rotate(-90.0f);
                canvas.translate(-super.getHeight(), 0.0f);
            }
        }
        super.onDraw(canvas);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0020  */
    @Override // android.widget.AbsSeekBar, android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (isEnabled()) {
            int i2 = -1;
            boolean z = false;
            switch (i) {
                case 19:
                    if (this.f18164new == 270) {
                        i2 = 1;
                    }
                    z = true;
                    if (z) {
                        int progress = getProgress() + (i2 * getKeyProgressIncrement());
                        if (progress >= 0 && progress <= getMax()) {
                            m22747do(progress, true);
                        }
                        return true;
                    }
                    break;
                case 20:
                    if (this.f18164new == 90) {
                    }
                    z = true;
                    if (z) {
                    }
                    break;
                case 21:
                case 22:
                    return false;
                default:
                    i2 = 0;
                    if (z) {
                    }
                    break;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i, int i2) {
        if (m22755catch()) {
            super.onMeasure(i, i2);
        } else {
            super.onMeasure(i2, i);
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (!isInEditMode() || layoutParams == null || layoutParams.height < 0) {
                setMeasuredDimension(super.getMeasuredHeight(), super.getMeasuredWidth());
            } else {
                setMeasuredDimension(super.getMeasuredHeight(), layoutParams.height);
            }
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        if (m22755catch()) {
            super.onSizeChanged(i, i2, i3, i4);
        } else {
            super.onSizeChanged(i2, i, i4, i3);
        }
    }

    @Override // android.widget.AbsSeekBar, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return m22755catch() ? m22750goto(motionEvent) : m22748else(motionEvent);
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i) {
        super.setProgress(i);
        if (!m22755catch()) {
            m22753this();
        }
    }

    public void setRotationAngle(int i) {
        if (!m22752new(i)) {
            throw new IllegalArgumentException("Invalid angle specified :" + i);
        }
        if (this.f18164new == i) {
            return;
        }
        this.f18164new = i;
        if (!m22755catch()) {
            requestLayout();
            return;
        }
        VerticalSeekBarWrapper wrapper = getWrapper();
        if (wrapper != null) {
            wrapper.m22760do();
        }
    }

    @Override // android.widget.AbsSeekBar
    public void setThumb(Drawable drawable) {
        this.f18163if = drawable;
        super.setThumb(drawable);
    }

    public VerticalSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18164new = 90;
        m22749for(context, attributeSet, 0, 0);
    }

    public VerticalSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f18164new = 90;
        m22749for(context, attributeSet, i, 0);
    }
}
