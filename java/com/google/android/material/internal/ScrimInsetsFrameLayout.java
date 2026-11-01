package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.k62;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ScrimInsetsFrameLayout extends FrameLayout {

    /* renamed from: do, reason: not valid java name */
    @Nullable
    public Drawable f12113do;

    /* renamed from: for, reason: not valid java name */
    private Rect f12114for;

    /* renamed from: if, reason: not valid java name */
    public Rect f12115if;

    /* renamed from: new, reason: not valid java name */
    private boolean f12116new;

    /* renamed from: try, reason: not valid java name */
    private boolean f12117try;

    /* renamed from: com.google.android.material.internal.ScrimInsetsFrameLayout$do, reason: invalid class name */
    public class Cdo implements OnApplyWindowInsetsListener {
        public Cdo() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
            if (scrimInsetsFrameLayout.f12115if == null) {
                scrimInsetsFrameLayout.f12115if = new Rect();
            }
            ScrimInsetsFrameLayout.this.f12115if.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            ScrimInsetsFrameLayout.this.mo13598do(windowInsetsCompat);
            ScrimInsetsFrameLayout.this.setWillNotDraw(!windowInsetsCompat.hasSystemWindowInsets() || ScrimInsetsFrameLayout.this.f12113do == null);
            ViewCompat.postInvalidateOnAnimation(ScrimInsetsFrameLayout.this);
            return windowInsetsCompat.consumeSystemWindowInsets();
        }
    }

    public ScrimInsetsFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: do, reason: not valid java name */
    public void mo13598do(WindowInsetsCompat windowInsetsCompat) {
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f12115if == null || this.f12113do == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.f12116new) {
            this.f12114for.set(0, 0, width, this.f12115if.top);
            this.f12113do.setBounds(this.f12114for);
            this.f12113do.draw(canvas);
        }
        if (this.f12117try) {
            this.f12114for.set(0, height - this.f12115if.bottom, width, height);
            this.f12113do.setBounds(this.f12114for);
            this.f12113do.draw(canvas);
        }
        Rect rect = this.f12114for;
        Rect rect2 = this.f12115if;
        rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
        this.f12113do.setBounds(this.f12114for);
        this.f12113do.draw(canvas);
        Rect rect3 = this.f12114for;
        Rect rect4 = this.f12115if;
        rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
        this.f12113do.setBounds(this.f12114for);
        this.f12113do.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f12113do;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f12113do;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setDrawBottomInsetForeground(boolean z) {
        this.f12117try = z;
    }

    public void setDrawTopInsetForeground(boolean z) {
        this.f12116new = z;
    }

    public void setScrimInsetForeground(@Nullable Drawable drawable) {
        this.f12113do = drawable;
    }

    public ScrimInsetsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f12114for = new Rect();
        this.f12116new = true;
        this.f12117try = true;
        TypedArray typedArrayM4267break = k62.m4267break(context, attributeSet, R.styleable.ScrimInsetsFrameLayout, i, R.style.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f12113do = typedArrayM4267break.getDrawable(R.styleable.ScrimInsetsFrameLayout_insetForeground);
        typedArrayM4267break.recycle();
        setWillNotDraw(true);
        ViewCompat.setOnApplyWindowInsetsListener(this, new Cdo());
    }
}
