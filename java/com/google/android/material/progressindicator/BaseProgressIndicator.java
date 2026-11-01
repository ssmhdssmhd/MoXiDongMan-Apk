package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.support.v4.k62;
import android.support.v4.n7;
import android.support.v4.qx0;
import android.support.v4.vx0;
import android.support.v4.x1;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class BaseProgressIndicator<S extends n7> extends ProgressBar {

    /* renamed from: import, reason: not valid java name */
    public static final int f12307import = 0;

    /* renamed from: native, reason: not valid java name */
    public static final int f12308native = 1;

    /* renamed from: public, reason: not valid java name */
    public static final int f12309public = 2;

    /* renamed from: return, reason: not valid java name */
    public static final int f12310return = R.style.Widget_MaterialComponents_ProgressIndicator;

    /* renamed from: static, reason: not valid java name */
    public static final float f12311static = 0.2f;

    /* renamed from: super, reason: not valid java name */
    public static final int f12312super = 0;

    /* renamed from: switch, reason: not valid java name */
    public static final int f12313switch = 255;

    /* renamed from: throw, reason: not valid java name */
    public static final int f12314throw = 1;

    /* renamed from: throws, reason: not valid java name */
    public static final int f12315throws = 1000;

    /* renamed from: while, reason: not valid java name */
    public static final int f12316while = 2;

    /* renamed from: break, reason: not valid java name */
    private int f12317break;

    /* renamed from: case, reason: not valid java name */
    private final int f12318case;

    /* renamed from: catch, reason: not valid java name */
    private final Runnable f12319catch;

    /* renamed from: class, reason: not valid java name */
    private final Runnable f12320class;

    /* renamed from: const, reason: not valid java name */
    private final Animatable2Compat.AnimationCallback f12321const;

    /* renamed from: do, reason: not valid java name */
    public S f12322do;

    /* renamed from: else, reason: not valid java name */
    private long f12323else;

    /* renamed from: final, reason: not valid java name */
    private final Animatable2Compat.AnimationCallback f12324final;

    /* renamed from: for, reason: not valid java name */
    private boolean f12325for;

    /* renamed from: goto, reason: not valid java name */
    public x1 f12326goto;

    /* renamed from: if, reason: not valid java name */
    private int f12327if;

    /* renamed from: new, reason: not valid java name */
    private boolean f12328new;

    /* renamed from: this, reason: not valid java name */
    private boolean f12329this;

    /* renamed from: try, reason: not valid java name */
    private final int f12330try;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$case, reason: invalid class name */
    public @interface Ccase {
    }

    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator.this.m13766class();
        }
    }

    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$for, reason: invalid class name */
    public class Cfor extends Animatable2Compat.AnimationCallback {
        public Cfor() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationEnd(Drawable drawable) {
            BaseProgressIndicator.this.setIndeterminate(false);
            BaseProgressIndicator.this.mo13781throw(0, false);
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.mo13781throw(baseProgressIndicator.f12327if, BaseProgressIndicator.this.f12325for);
        }
    }

    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator.this.m13765catch();
            BaseProgressIndicator.this.f12323else = -1L;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$new, reason: invalid class name */
    public class Cnew extends Animatable2Compat.AnimationCallback {
        public Cnew() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationEnd(Drawable drawable) {
            super.onAnimationEnd(drawable);
            if (BaseProgressIndicator.this.f12329this) {
                return;
            }
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setVisibility(baseProgressIndicator.f12317break);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$try, reason: invalid class name */
    public @interface Ctry {
    }

    public BaseProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(vx0.m8993for(context, attributeSet, i, f12310return), attributeSet, i);
        this.f12323else = -1L;
        this.f12329this = false;
        this.f12317break = 4;
        this.f12319catch = new Cdo();
        this.f12320class = new Cif();
        this.f12321const = new Cfor();
        this.f12324final = new Cnew();
        Context context2 = getContext();
        this.f12322do = (S) mo13780this(context2, attributeSet);
        TypedArray typedArrayM4267break = k62.m4267break(context2, attributeSet, R.styleable.BaseProgressIndicator, i, i2, new int[0]);
        this.f12330try = typedArrayM4267break.getInt(R.styleable.BaseProgressIndicator_showDelay, -1);
        this.f12318case = Math.min(typedArrayM4267break.getInt(R.styleable.BaseProgressIndicator_minHideDelay, -1), 1000);
        typedArrayM4267break.recycle();
        this.f12326goto = new x1();
        this.f12328new = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public void m13765catch() {
        ((com.google.android.material.progressindicator.Cfor) getCurrentDrawable()).mo13795native(false, false, true);
        if (m13769final()) {
            setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public void m13766class() {
        if (this.f12318case > 0) {
            this.f12323else = SystemClock.uptimeMillis();
        }
        setVisibility(0);
    }

    /* renamed from: final, reason: not valid java name */
    private boolean m13769final() {
        return (getProgressDrawable() == null || !getProgressDrawable().isVisible()) && (getIndeterminateDrawable() == null || !getIndeterminateDrawable().isVisible());
    }

    @Nullable
    private com.google.android.material.progressindicator.Cnew<S> getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            return getIndeterminateDrawable().m13806throws();
        }
        if (getProgressDrawable() == null) {
            return null;
        }
        return getProgressDrawable().m13793default();
    }

    /* renamed from: import, reason: not valid java name */
    private void m13772import() {
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().unregisterAnimationCallback(this.f12324final);
            getIndeterminateDrawable().m13805switch().mo13830goto();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().unregisterAnimationCallback(this.f12324final);
        }
    }

    /* renamed from: super, reason: not valid java name */
    private void m13774super() {
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().m13805switch().mo13832new(this.f12321const);
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().registerAnimationCallback(this.f12324final);
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().registerAnimationCallback(this.f12324final);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m13776break() {
        if (getVisibility() != 0) {
            removeCallbacks(this.f12319catch);
            return;
        }
        removeCallbacks(this.f12320class);
        long jUptimeMillis = SystemClock.uptimeMillis() - this.f12323else;
        int i = this.f12318case;
        if (jUptimeMillis >= ((long) i)) {
            this.f12320class.run();
        } else {
            postDelayed(this.f12320class, i - jUptimeMillis);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m13777const() {
        View view = this;
        while (view.getVisibility() == 0) {
            Object parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            }
            if (!(parent instanceof View)) {
                return true;
            }
            view = (View) parent;
        }
        return false;
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.f12322do.f4130case;
    }

    @NonNull
    public int[] getIndicatorColor() {
        return this.f12322do.f4132for;
    }

    public int getShowAnimationBehavior() {
        return this.f12322do.f4135try;
    }

    @ColorInt
    public int getTrackColor() {
        return this.f12322do.f4134new;
    }

    @Px
    public int getTrackCornerRadius() {
        return this.f12322do.f4133if;
    }

    @Px
    public int getTrackThickness() {
        return this.f12322do.f4131do;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m13778goto(boolean z) {
        if (this.f12328new) {
            ((com.google.android.material.progressindicator.Cfor) getCurrentDrawable()).mo13795native(m13779native(), false, z);
        }
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m13779native() {
        return ViewCompat.isAttachedToWindow(this) && getWindowVisibility() == 0 && m13777const();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m13774super();
        if (m13779native()) {
            m13766class();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f12320class);
        removeCallbacks(this.f12319catch);
        ((com.google.android.material.progressindicator.Cfor) getCurrentDrawable()).mo13798this();
        m13772import();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(@NonNull Canvas canvas) {
        int iSave = canvas.save();
        if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
            canvas.translate(getPaddingLeft(), getPaddingTop());
        }
        if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
            canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
        }
        getCurrentDrawable().draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        com.google.android.material.progressindicator.Cnew<S> currentDrawingDelegate = getCurrentDrawingDelegate();
        if (currentDrawingDelegate == null) {
            return;
        }
        int iMo13814try = currentDrawingDelegate.mo13814try();
        int iMo13813new = currentDrawingDelegate.mo13813new();
        setMeasuredDimension(iMo13814try < 0 ? getMeasuredWidth() : iMo13814try + getPaddingLeft() + getPaddingRight(), iMo13813new < 0 ? getMeasuredHeight() : iMo13813new + getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        m13778goto(i == 0);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        m13778goto(false);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setAnimatorDurationScaleProvider(@NonNull x1 x1Var) {
        this.f12326goto = x1Var;
        if (getProgressDrawable() != null) {
            getProgressDrawable().f12383for = x1Var;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().f12383for = x1Var;
        }
    }

    public void setHideAnimationBehavior(int i) {
        this.f12322do.f4130case = i;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setIndeterminate(boolean z) {
        if (z == isIndeterminate()) {
            return;
        }
        if (m13779native() && z) {
            throw new IllegalStateException("Cannot switch to indeterminate mode while the progress indicator is visible.");
        }
        com.google.android.material.progressindicator.Cfor cfor = (com.google.android.material.progressindicator.Cfor) getCurrentDrawable();
        if (cfor != null) {
            cfor.mo13798this();
        }
        super.setIndeterminate(z);
        com.google.android.material.progressindicator.Cfor cfor2 = (com.google.android.material.progressindicator.Cfor) getCurrentDrawable();
        if (cfor2 != null) {
            cfor2.mo13795native(m13779native(), false, false);
        }
        this.f12329this = false;
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else {
            if (!(drawable instanceof IndeterminateDrawable)) {
                throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
            }
            ((com.google.android.material.progressindicator.Cfor) drawable).mo13798this();
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(@ColorInt int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{qx0.m6678if(getContext(), R.attr.colorPrimary, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.f12322do.f4132for = iArr;
        getIndeterminateDrawable().m13805switch().mo13829for();
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i) {
        if (isIndeterminate()) {
            return;
        }
        mo13781throw(i, false);
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else {
            if (!(drawable instanceof DeterminateDrawable)) {
                throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
            }
            DeterminateDrawable determinateDrawable = (DeterminateDrawable) drawable;
            determinateDrawable.mo13798this();
            super.setProgressDrawable(determinateDrawable);
            determinateDrawable.m13796private(getProgress() / getMax());
        }
    }

    public void setShowAnimationBehavior(int i) {
        this.f12322do.f4135try = i;
        invalidate();
    }

    public void setTrackColor(@ColorInt int i) {
        S s = this.f12322do;
        if (s.f4134new != i) {
            s.f4134new = i;
            invalidate();
        }
    }

    public void setTrackCornerRadius(@Px int i) {
        S s = this.f12322do;
        if (s.f4133if != i) {
            s.f4133if = Math.min(i, s.f4131do / 2);
        }
    }

    public void setTrackThickness(@Px int i) {
        S s = this.f12322do;
        if (s.f4131do != i) {
            s.f4131do = i;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i) {
        if (i != 0 && i != 4 && i != 8) {
            throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
        this.f12317break = i;
    }

    /* renamed from: this, reason: not valid java name */
    public abstract S mo13780this(@NonNull Context context, @NonNull AttributeSet attributeSet);

    /* renamed from: throw, reason: not valid java name */
    public void mo13781throw(int i, boolean z) {
        if (!isIndeterminate()) {
            super.setProgress(i);
            if (getProgressDrawable() == null || z) {
                return;
            }
            getProgressDrawable().jumpToCurrentState();
            return;
        }
        if (getProgressDrawable() != null) {
            this.f12327if = i;
            this.f12325for = z;
            this.f12329this = true;
            if (!getIndeterminateDrawable().isVisible() || this.f12326goto.m9323do(getContext().getContentResolver()) == 0.0f) {
                this.f12321const.onAnimationEnd(getIndeterminateDrawable());
            } else {
                getIndeterminateDrawable().m13805switch().mo13826case();
            }
        }
    }

    /* renamed from: while, reason: not valid java name */
    public void m13782while() {
        if (this.f12330try <= 0) {
            this.f12319catch.run();
        } else {
            removeCallbacks(this.f12319catch);
            postDelayed(this.f12319catch, this.f12330try);
        }
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public IndeterminateDrawable<S> getIndeterminateDrawable() {
        return (IndeterminateDrawable) super.getIndeterminateDrawable();
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public DeterminateDrawable<S> getProgressDrawable() {
        return (DeterminateDrawable) super.getProgressDrawable();
    }
}
