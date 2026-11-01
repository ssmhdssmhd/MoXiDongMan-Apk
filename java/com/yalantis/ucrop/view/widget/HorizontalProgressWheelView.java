package com.yalantis.ucrop.view.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.core.content.ContextCompat;
import com.yalantis.ucrop.R;

/* loaded from: classes2.dex */
public class HorizontalProgressWheelView extends View {

    /* renamed from: break, reason: not valid java name */
    private int f23204break;

    /* renamed from: case, reason: not valid java name */
    private int f23205case;

    /* renamed from: do, reason: not valid java name */
    private final Rect f23206do;

    /* renamed from: else, reason: not valid java name */
    private int f23207else;

    /* renamed from: for, reason: not valid java name */
    private float f23208for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f23209goto;

    /* renamed from: if, reason: not valid java name */
    private ScrollingListener f23210if;

    /* renamed from: new, reason: not valid java name */
    private Paint f23211new;

    /* renamed from: this, reason: not valid java name */
    private float f23212this;

    /* renamed from: try, reason: not valid java name */
    private int f23213try;

    public interface ScrollingListener {
        void onScroll(float f, float f2);

        void onScrollEnd();

        void onScrollStart();
    }

    public HorizontalProgressWheelView(Context context) {
        this(context, null);
    }

    /* renamed from: do, reason: not valid java name */
    private void m27559do() {
        this.f23204break = ContextCompat.getColor(getContext(), R.color.ucrop_color_progress_wheel_line);
        this.f23213try = getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_width_horizontal_wheel_progress_line);
        this.f23205case = getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_height_horizontal_wheel_progress_line);
        this.f23207else = getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_margin_horizontal_wheel_progress_line);
        Paint paint = new Paint(1);
        this.f23211new = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f23211new.setStrokeWidth(this.f23213try);
    }

    /* renamed from: if, reason: not valid java name */
    private void m27560if(MotionEvent motionEvent, float f) {
        this.f23212this -= f;
        postInvalidate();
        this.f23208for = motionEvent.getX();
        ScrollingListener scrollingListener = this.f23210if;
        if (scrollingListener != null) {
            scrollingListener.onScroll(-f, this.f23212this);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.getClipBounds(this.f23206do);
        int iWidth = this.f23206do.width() / (this.f23213try + this.f23207else);
        float f = this.f23212this % (r2 + r1);
        this.f23211new.setColor(getResources().getColor(R.color.ucrop_color_progress_wheel_line));
        for (int i = 0; i < iWidth; i++) {
            int i2 = iWidth / 4;
            if (i < i2) {
                this.f23211new.setAlpha((int) ((i / i2) * 255.0f));
            } else if (i > (iWidth * 3) / 4) {
                this.f23211new.setAlpha((int) (((iWidth - i) / i2) * 255.0f));
            } else {
                this.f23211new.setAlpha(255);
            }
            float f2 = -f;
            Rect rect = this.f23206do;
            float f3 = rect.left + f2 + ((this.f23213try + this.f23207else) * i);
            float fCenterY = rect.centerY() - (this.f23205case / 4.0f);
            Rect rect2 = this.f23206do;
            canvas.drawLine(f3, fCenterY, f2 + rect2.left + ((this.f23213try + this.f23207else) * i), rect2.centerY() + (this.f23205case / 4.0f), this.f23211new);
        }
        this.f23211new.setColor(this.f23204break);
        canvas.drawLine(this.f23206do.centerX(), this.f23206do.centerY() - (this.f23205case / 2.0f), this.f23206do.centerX(), (this.f23205case / 2.0f) + this.f23206do.centerY(), this.f23211new);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f23208for = motionEvent.getX();
        } else if (action == 1) {
            ScrollingListener scrollingListener = this.f23210if;
            if (scrollingListener != null) {
                this.f23209goto = false;
                scrollingListener.onScrollEnd();
            }
        } else if (action == 2) {
            float x = motionEvent.getX() - this.f23208for;
            if (x != 0.0f) {
                if (!this.f23209goto) {
                    this.f23209goto = true;
                    ScrollingListener scrollingListener2 = this.f23210if;
                    if (scrollingListener2 != null) {
                        scrollingListener2.onScrollStart();
                    }
                }
                m27560if(motionEvent, x);
            }
        }
        return true;
    }

    public void setMiddleLineColor(@ColorInt int i) {
        this.f23204break = i;
        invalidate();
    }

    public void setScrollingListener(ScrollingListener scrollingListener) {
        this.f23210if = scrollingListener;
    }

    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f23206do = new Rect();
        m27559do();
    }

    @TargetApi(21)
    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f23206do = new Rect();
    }
}
