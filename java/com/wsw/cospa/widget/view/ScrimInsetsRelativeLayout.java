package com.wsw.cospa.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class ScrimInsetsRelativeLayout extends RelativeLayout {
    private boolean mConsumeInsets;
    private boolean mFitBottom;
    private boolean mFitLeft;
    private boolean mFitRight;
    private boolean mFitTop;
    private Drawable mInsetForeground;
    private Rect mInsets;
    private OnInsetsCallback mOnInsetsCallback;
    private Rect mTempRect;

    public interface OnInsetsCallback {
        void onInsetsChanged(Rect rect);
    }

    public ScrimInsetsRelativeLayout(Context context) {
        super(context);
        this.mTempRect = new Rect();
        init(context, null, 0);
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrimInsetsRelativeLayout, i, 0);
        this.mInsetForeground = typedArrayObtainStyledAttributes.getDrawable(1);
        this.mConsumeInsets = typedArrayObtainStyledAttributes.getBoolean(0, true);
        this.mFitTop = typedArrayObtainStyledAttributes.getBoolean(5, true);
        this.mFitBottom = typedArrayObtainStyledAttributes.getBoolean(2, false);
        this.mFitLeft = typedArrayObtainStyledAttributes.getBoolean(3, false);
        this.mFitRight = typedArrayObtainStyledAttributes.getBoolean(4, false);
        typedArrayObtainStyledAttributes.recycle();
        setWillNotDraw(true);
        ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() { // from class: android.support.v4.ks1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f3481do.lambda$init$0(view, windowInsetsCompat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat lambda$init$0(View view, WindowInsetsCompat windowInsetsCompat) {
        if (!this.mConsumeInsets) {
            OnInsetsCallback onInsetsCallback = this.mOnInsetsCallback;
            if (onInsetsCallback != null) {
                onInsetsCallback.onInsetsChanged(new Rect(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom()));
            }
            return windowInsetsCompat.consumeSystemWindowInsets();
        }
        if (this.mInsets == null) {
            this.mInsets = new Rect();
        }
        this.mInsets.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
        onInsetsChanged(this.mInsets);
        setWillNotDraw(!windowInsetsCompat.hasSystemWindowInsets() || this.mInsetForeground == null);
        ViewCompat.postInvalidateOnAnimation(this);
        return windowInsetsCompat.consumeSystemWindowInsets();
    }

    public void applyWindowInsets(Rect rect) {
        if (rect == null) {
            return;
        }
        if (this.mInsets == null) {
            this.mInsets = new Rect();
        }
        this.mInsets.set(rect.left, rect.top, rect.right, rect.bottom);
        onInsetsChanged(rect);
        setWillNotDraw(this.mInsetForeground == null);
        ViewCompat.postInvalidateOnAnimation(this);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.mInsets == null || this.mInsetForeground == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.mFitTop) {
            this.mTempRect.set(0, 0, width, this.mInsets.top);
            this.mInsetForeground.setBounds(this.mTempRect);
            this.mInsetForeground.draw(canvas);
        }
        if (this.mFitBottom) {
            this.mTempRect.set(0, height - this.mInsets.bottom, width, height);
            this.mInsetForeground.setBounds(this.mTempRect);
            this.mInsetForeground.draw(canvas);
        }
        if (this.mFitLeft) {
            Rect rect = this.mTempRect;
            Rect rect2 = this.mInsets;
            rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
            this.mInsetForeground.setBounds(this.mTempRect);
            this.mInsetForeground.draw(canvas);
        }
        if (this.mFitRight) {
            Rect rect3 = this.mTempRect;
            Rect rect4 = this.mInsets;
            rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
            this.mInsetForeground.setBounds(this.mTempRect);
            this.mInsetForeground.draw(canvas);
        }
        canvas.restoreToCount(iSave);
    }

    public Rect getWindowInsets() {
        return this.mInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.mInsetForeground;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.mInsetForeground;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void onInsetsChanged(Rect rect) {
        OnInsetsCallback onInsetsCallback = this.mOnInsetsCallback;
        if (onInsetsCallback != null) {
            onInsetsCallback.onInsetsChanged(rect);
        }
        if (this.mConsumeInsets) {
            setPadding(0, rect.top, 0, rect.bottom);
        }
    }

    public void setOnInsetsCallback(OnInsetsCallback onInsetsCallback) {
        this.mOnInsetsCallback = onInsetsCallback;
    }

    public ScrimInsetsRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempRect = new Rect();
        init(context, attributeSet, 0);
    }

    public ScrimInsetsRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTempRect = new Rect();
        init(context, attributeSet, i);
    }
}
