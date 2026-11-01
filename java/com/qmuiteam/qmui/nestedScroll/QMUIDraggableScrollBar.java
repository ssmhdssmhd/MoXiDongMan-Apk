package com.qmuiteam.qmui.nestedScroll;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.v4.ih1;
import android.support.v4.kh1;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.qmuiteam.qmui.R;
import com.youth.banner.BannerConfig;

/* loaded from: classes2.dex */
public class QMUIDraggableScrollBar extends View {

    /* renamed from: break, reason: not valid java name */
    private boolean f19199break;

    /* renamed from: case, reason: not valid java name */
    private long f19200case;

    /* renamed from: catch, reason: not valid java name */
    private Callback f19201catch;

    /* renamed from: class, reason: not valid java name */
    private int f19202class;

    /* renamed from: const, reason: not valid java name */
    private float f19203const;

    /* renamed from: do, reason: not valid java name */
    private int[] f19204do;

    /* renamed from: else, reason: not valid java name */
    private float f19205else;

    /* renamed from: final, reason: not valid java name */
    private int f19206final;

    /* renamed from: for, reason: not valid java name */
    private Drawable f19207for;

    /* renamed from: goto, reason: not valid java name */
    private float f19208goto;

    /* renamed from: if, reason: not valid java name */
    private int[] f19209if;

    /* renamed from: new, reason: not valid java name */
    private int f19210new;

    /* renamed from: super, reason: not valid java name */
    private int f19211super;

    /* renamed from: this, reason: not valid java name */
    private Runnable f19212this;

    /* renamed from: throw, reason: not valid java name */
    private boolean f19213throw;

    /* renamed from: try, reason: not valid java name */
    private int f19214try;

    public interface Callback {
        void onDragEnd();

        void onDragStarted();

        void onDragToPercent(float f);
    }

    /* renamed from: com.qmuiteam.qmui.nestedScroll.QMUIDraggableScrollBar$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            QMUIDraggableScrollBar.this.invalidate();
        }
    }

    public QMUIDraggableScrollBar(Context context) {
        this(context, (AttributeSet) null);
    }

    /* renamed from: for, reason: not valid java name */
    private void m23553for(Drawable drawable, float f) {
        float fM4407if = kh1.m4407if(((f - getScrollBarTopMargin()) - this.f19203const) / (((getHeight() - getScrollBarBottomMargin()) - getScrollBarTopMargin()) - drawable.getIntrinsicHeight()), 0.0f, 1.0f);
        Callback callback = this.f19201catch;
        if (callback != null) {
            callback.onDragToPercent(fM4407if);
        }
        setPercentInternal(fM4407if);
    }

    private void setPercentInternal(float f) {
        this.f19208goto = f;
        invalidate();
    }

    /* renamed from: do, reason: not valid java name */
    public void m23554do() {
        if (this.f19207for == null) {
            this.f19207for = ContextCompat.getDrawable(getContext(), R.drawable.qmui_icon_scroll_bar);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.f19200case;
        int i = this.f19214try;
        if (j > i) {
            this.f19200case = jCurrentTimeMillis - i;
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    public int getScrollBarBottomMargin() {
        return 0;
    }

    public int getScrollBarTopMargin() {
        return 0;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m23555if() {
        return this.f19213throw;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0068 A[RETURN] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        Drawable drawable = this.f19207for;
        if (drawable == null) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            return;
        }
        int i2 = -1;
        if (this.f19213throw) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f19200case;
            int i3 = this.f19214try;
            if (jCurrentTimeMillis < i3) {
                this.f19205else = (jCurrentTimeMillis * 1.0f) / i3;
            } else {
                long j = jCurrentTimeMillis - i3;
                int i4 = this.f19210new;
                if (j < i4) {
                    this.f19205else = 1.0f;
                    i2 = (int) (i4 - (jCurrentTimeMillis - i3));
                } else {
                    long j2 = (jCurrentTimeMillis - i3) - i4;
                    if (j2 < i3) {
                        this.f19205else = 1.0f - ((j2 * 1.0f) / i3);
                    } else {
                        this.f19205else = 0.0f;
                    }
                }
                if (this.f19205else <= 0.0f) {
                    return;
                }
            }
            i2 = 0;
            if (this.f19205else <= 0.0f) {
            }
        } else {
            this.f19205else = 1.0f;
        }
        drawable.setAlpha((int) (this.f19205else * 255.0f));
        int height = (getHeight() - getScrollBarTopMargin()) - getScrollBarBottomMargin();
        int width = getWidth();
        int scrollBarTopMargin = getScrollBarTopMargin() + ((int) ((height - intrinsicHeight) * this.f19208goto));
        int i5 = width - intrinsicWidth;
        if (!this.f19199break && (i = this.f19202class) > 0) {
            int i6 = scrollBarTopMargin - i;
            int i7 = this.f19211super;
            if (i6 > i7 && i6 < this.f19206final) {
                scrollBarTopMargin = i + i7;
            } else if (i6 < (-i7) && i6 > (-this.f19206final)) {
                scrollBarTopMargin = i - i7;
            }
            i2 = 0;
        }
        drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        canvas.save();
        canvas.translate(i5, scrollBarTopMargin);
        drawable.draw(canvas);
        canvas.restore();
        this.f19202class = scrollBarTopMargin;
        if (i2 == 0) {
            invalidate();
        } else if (i2 > 0) {
            ViewCompat.postOnAnimationDelayed(this, this.f19212this, i2);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        Drawable drawable = this.f19207for;
        if (drawable == null) {
            super.onMeasure(i, i2);
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(drawable.getIntrinsicWidth(), 1073741824), i2);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Drawable drawable = this.f19207for;
        if (drawable == null) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (action == 0) {
            this.f19199break = false;
            if (this.f19205else > 0.0f && x > getWidth() - drawable.getIntrinsicWidth()) {
                if (y >= this.f19202class && y <= r1 + drawable.getIntrinsicHeight()) {
                    this.f19203const = y - this.f19202class;
                    getParent().requestDisallowInterceptTouchEvent(true);
                    this.f19199break = true;
                    Callback callback = this.f19201catch;
                    if (callback != null) {
                        callback.onDragStarted();
                        this.f19207for.setState(this.f19204do);
                    }
                }
            }
        } else if (action == 2) {
            if (this.f19199break) {
                getParent().requestDisallowInterceptTouchEvent(true);
                m23553for(drawable, y);
            }
        } else if ((action == 1 || action == 3) && this.f19199break) {
            this.f19199break = false;
            m23553for(drawable, y);
            Callback callback2 = this.f19201catch;
            if (callback2 != null) {
                callback2.onDragEnd();
                this.f19207for.setState(this.f19209if);
            }
        }
        return this.f19199break;
    }

    public void setCallback(Callback callback) {
        this.f19201catch = callback;
    }

    public void setDragDrawable(Drawable drawable) {
        this.f19207for = drawable.mutate();
        invalidate();
    }

    public void setEnableFadeInAndOut(boolean z) {
        this.f19213throw = z;
    }

    public void setKeepShownTime(int i) {
        this.f19210new = i;
    }

    public void setPercent(float f) {
        if (this.f19199break) {
            return;
        }
        setPercentInternal(f);
    }

    public void setTransitionDuration(int i) {
        this.f19214try = i;
    }

    public QMUIDraggableScrollBar(Context context, @NonNull Drawable drawable) {
        this(context, (AttributeSet) null);
        this.f19207for = drawable.mutate();
    }

    public QMUIDraggableScrollBar(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19204do = new int[]{android.R.attr.state_pressed};
        this.f19209if = new int[0];
        this.f19210new = BannerConfig.DURATION;
        this.f19214try = 100;
        this.f19200case = 0L;
        this.f19205else = 0.0f;
        this.f19208goto = 0.0f;
        this.f19212this = new Cdo();
        this.f19199break = false;
        this.f19202class = -1;
        this.f19203const = 0.0f;
        this.f19206final = ih1.m3450new(getContext(), 20);
        this.f19211super = ih1.m3450new(getContext(), 4);
        this.f19213throw = true;
    }
}
