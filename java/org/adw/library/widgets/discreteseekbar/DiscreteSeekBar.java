package org.adw.library.widgets.discreteseekbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.f82;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.qmuiteam.qmui.widget.QMUIProgressBar;
import java.util.Formatter;
import java.util.Locale;
import org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat;
import org.adw.library.widgets.discreteseekbar.internal.drawable.MarkerDrawable;

/* loaded from: classes3.dex */
public class DiscreteSeekBar extends View {
    private static final String DEFAULT_FORMATTER = "%d";
    private static final int DEFAULT_THUMB_COLOR = -16738680;
    private static final int FOCUSED_STATE = 16842908;
    private static final int INDICATOR_DELAY_FOR_TAPS = 150;
    private static final int PRESSED_STATE = 16842919;
    private static final int PROGRESS_ANIMATION_DURATION = 250;
    private static final int SEPARATION_DP = 5;
    private static final boolean isLollipopOrGreater;
    private int mAddedTouchBounds;
    private boolean mAllowTrackClick;
    private float mAnimationPosition;
    private int mAnimationTarget;
    private float mDownX;
    private int mDragOffset;
    private MarkerDrawable.MarkerAnimationListener mFloaterListener;
    private StringBuilder mFormatBuilder;
    public Formatter mFormatter;
    private org.adw.library.widgets.discreteseekbar.internal.Cdo mIndicator;
    private String mIndicatorFormatter;
    private boolean mIndicatorPopupEnabled;
    private Rect mInvalidateRect;
    private boolean mIsDragging;
    private int mKeyProgressIncrement;
    private int mMax;
    private int mMin;
    private boolean mMirrorForRtl;
    private Ctry mNumericTransformer;
    private AnimatorCompat mPositionAnimator;
    private OnProgressChangeListener mPublicChangeListener;
    private Drawable mRipple;
    private f82 mScrubber;
    private int mScrubberHeight;
    private Runnable mShowIndicatorRunnable;
    private Rect mTempRect;
    private org.adw.library.widgets.discreteseekbar.internal.drawable.Cif mThumb;
    private float mTouchSlop;
    private f82 mTrack;
    private int mTrackHeight;
    private int mValue;

    public interface OnProgressChangeListener {
        void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z);

        void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar);

        void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar);
    }

    /* renamed from: org.adw.library.widgets.discreteseekbar.DiscreteSeekBar$do, reason: invalid class name */
    public class Cdo implements AnimatorCompat.AnimationFrameUpdateListener {
        public Cdo() {
        }

        @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat.AnimationFrameUpdateListener
        public void onAnimationFrame(float f) {
            DiscreteSeekBar.this.setAnimationPosition(f);
        }
    }

    /* renamed from: org.adw.library.widgets.discreteseekbar.DiscreteSeekBar$for, reason: invalid class name */
    public class Cfor implements MarkerDrawable.MarkerAnimationListener {
        public Cfor() {
        }

        @Override // org.adw.library.widgets.discreteseekbar.internal.drawable.MarkerDrawable.MarkerAnimationListener
        public void onClosingComplete() {
            DiscreteSeekBar.this.mThumb.m31832else();
        }

        @Override // org.adw.library.widgets.discreteseekbar.internal.drawable.MarkerDrawable.MarkerAnimationListener
        public void onOpeningComplete() {
        }
    }

    /* renamed from: org.adw.library.widgets.discreteseekbar.DiscreteSeekBar$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DiscreteSeekBar.this.showFloater();
        }
    }

    /* renamed from: org.adw.library.widgets.discreteseekbar.DiscreteSeekBar$new, reason: invalid class name */
    public static class Cnew extends Ctry {
        private Cnew() {
        }

        @Override // org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.Ctry
        /* renamed from: do, reason: not valid java name */
        public int mo31756do(int i) {
            return i;
        }

        public /* synthetic */ Cnew(Cdo cdo) {
            this();
        }
    }

    /* renamed from: org.adw.library.widgets.discreteseekbar.DiscreteSeekBar$try, reason: invalid class name */
    public static abstract class Ctry {
        /* renamed from: do */
        public abstract int mo31756do(int i);

        /* renamed from: for, reason: not valid java name */
        public boolean m31757for() {
            return false;
        }

        /* renamed from: if, reason: not valid java name */
        public String m31758if(int i) {
            return String.valueOf(i);
        }
    }

    static {
        isLollipopOrGreater = Build.VERSION.SDK_INT >= 21;
    }

    public DiscreteSeekBar(Context context) {
        this(context, null);
    }

    private void attemptClaimDrag() {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    private String convertValueToMessage(int i) {
        String str = this.mIndicatorFormatter;
        if (str == null) {
            str = "%d";
        }
        Formatter formatter = this.mFormatter;
        if (formatter == null || !formatter.locale().equals(Locale.getDefault())) {
            int length = str.length() + String.valueOf(this.mMax).length();
            StringBuilder sb = this.mFormatBuilder;
            if (sb == null) {
                this.mFormatBuilder = new StringBuilder(length);
            } else {
                sb.ensureCapacity(length);
            }
            this.mFormatter = new Formatter(this.mFormatBuilder, Locale.getDefault());
        } else {
            this.mFormatBuilder.setLength(0);
        }
        return this.mFormatter.format(str, Integer.valueOf(i)).toString();
    }

    private int getAnimatedProgress() {
        return isAnimationRunning() ? getAnimationTarget() : this.mValue;
    }

    private int getAnimationTarget() {
        return this.mAnimationTarget;
    }

    private void hideFloater() {
        removeCallbacks(this.mShowIndicatorRunnable);
        if (isInEditMode()) {
            return;
        }
        this.mIndicator.m31794new();
        notifyBubble(false);
    }

    private boolean isDragging() {
        return this.mIsDragging;
    }

    private boolean isInScrollingContainer() {
        return org.adw.library.widgets.discreteseekbar.internal.compat.Cif.m31777for(getParent());
    }

    private void notifyBubble(boolean z) {
        if (z) {
            onShowBubble();
        } else {
            onHideBubble();
        }
    }

    private void notifyProgress(int i, boolean z) {
        OnProgressChangeListener onProgressChangeListener = this.mPublicChangeListener;
        if (onProgressChangeListener != null) {
            onProgressChangeListener.onProgressChanged(this, i, z);
        }
        onValueChanged(i);
    }

    private void setHotspot(float f, float f2) {
        DrawableCompat.setHotspot(this.mRipple, f, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFloater() {
        if (isInEditMode()) {
            return;
        }
        this.mThumb.m31833goto();
        this.mIndicator.m31792const(this, this.mThumb.getBounds());
        notifyBubble(true);
    }

    private boolean startDragging(MotionEvent motionEvent, boolean z) {
        Rect rect = this.mTempRect;
        this.mThumb.copyBounds(rect);
        int i = this.mAddedTouchBounds;
        rect.inset(-i, -i);
        boolean zContains = rect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        this.mIsDragging = zContains;
        if (!zContains && this.mAllowTrackClick && !z) {
            this.mIsDragging = true;
            this.mDragOffset = (rect.width() / 2) - this.mAddedTouchBounds;
            updateDragging(motionEvent);
            this.mThumb.copyBounds(rect);
            int i2 = this.mAddedTouchBounds;
            rect.inset(-i2, -i2);
        }
        if (this.mIsDragging) {
            setPressed(true);
            attemptClaimDrag();
            setHotspot(motionEvent.getX(), motionEvent.getY());
            this.mDragOffset = (int) ((motionEvent.getX() - rect.left) - this.mAddedTouchBounds);
            OnProgressChangeListener onProgressChangeListener = this.mPublicChangeListener;
            if (onProgressChangeListener != null) {
                onProgressChangeListener.onStartTrackingTouch(this);
            }
        }
        return this.mIsDragging;
    }

    private void stopDragging() {
        OnProgressChangeListener onProgressChangeListener = this.mPublicChangeListener;
        if (onProgressChangeListener != null) {
            onProgressChangeListener.onStopTrackingTouch(this);
        }
        this.mIsDragging = false;
        setPressed(false);
    }

    private void updateDragging(MotionEvent motionEvent) {
        setHotspot(motionEvent.getX(), motionEvent.getY());
        int x = (int) motionEvent.getX();
        int iWidth = this.mThumb.getBounds().width() / 2;
        int i = this.mAddedTouchBounds;
        int i2 = (x - this.mDragOffset) + iWidth;
        int paddingLeft = getPaddingLeft() + iWidth + i;
        int width = getWidth() - ((getPaddingRight() + iWidth) + i);
        if (i2 < paddingLeft) {
            i2 = paddingLeft;
        } else if (i2 > width) {
            i2 = width;
        }
        float f = (i2 - paddingLeft) / (width - paddingLeft);
        if (isRtl()) {
            f = 1.0f - f;
        }
        int i3 = this.mMax;
        setProgress(Math.round((f * (i3 - r1)) + this.mMin), true);
    }

    private void updateFromDrawableState() {
        int[] drawableState = getDrawableState();
        boolean z = false;
        boolean z2 = false;
        for (int i : drawableState) {
            if (i == 16842908) {
                z = true;
            } else if (i == 16842919) {
                z2 = true;
            }
        }
        if (isEnabled() && ((z || z2) && this.mIndicatorPopupEnabled)) {
            removeCallbacks(this.mShowIndicatorRunnable);
            postDelayed(this.mShowIndicatorRunnable, 150L);
        } else {
            hideFloater();
        }
        this.mThumb.setState(drawableState);
        this.mTrack.setState(drawableState);
        this.mScrubber.setState(drawableState);
        this.mRipple.setState(drawableState);
    }

    private void updateIndicatorSizes() {
        if (isInEditMode()) {
            return;
        }
        if (this.mNumericTransformer.m31757for()) {
            this.mIndicator.m31796throw(this.mNumericTransformer.m31758if(this.mMax));
        } else {
            this.mIndicator.m31796throw(convertValueToMessage(this.mNumericTransformer.mo31756do(this.mMax)));
        }
    }

    private void updateKeyboardRange() {
        int i = this.mMax - this.mMin;
        int i2 = this.mKeyProgressIncrement;
        if (i2 == 0 || i / i2 > 20) {
            this.mKeyProgressIncrement = Math.max(1, Math.round(i / 20.0f));
        }
    }

    private void updateProgressFromAnimation(float f) {
        int iWidth = this.mThumb.getBounds().width() / 2;
        int i = this.mAddedTouchBounds;
        int width = (getWidth() - ((getPaddingRight() + iWidth) + i)) - ((getPaddingLeft() + iWidth) + i);
        int i2 = this.mMax;
        int iRound = Math.round(((i2 - r1) * f) + this.mMin);
        if (iRound != getProgress()) {
            this.mValue = iRound;
            notifyProgress(iRound, true);
            updateProgressMessage(iRound);
        }
        updateThumbPos((int) ((f * width) + 0.5f));
    }

    private void updateProgressMessage(int i) {
        if (isInEditMode()) {
            return;
        }
        if (this.mNumericTransformer.m31757for()) {
            this.mIndicator.m31791class(this.mNumericTransformer.m31758if(i));
        } else {
            this.mIndicator.m31791class(convertValueToMessage(this.mNumericTransformer.mo31756do(i)));
        }
    }

    private void updateThumbPos(int i) {
        int paddingLeft;
        int i2;
        int intrinsicWidth = this.mThumb.getIntrinsicWidth();
        int i3 = intrinsicWidth / 2;
        if (isRtl()) {
            paddingLeft = (getWidth() - getPaddingRight()) - this.mAddedTouchBounds;
            i2 = (paddingLeft - i) - intrinsicWidth;
        } else {
            paddingLeft = getPaddingLeft() + this.mAddedTouchBounds;
            i2 = i + paddingLeft;
        }
        this.mThumb.copyBounds(this.mInvalidateRect);
        org.adw.library.widgets.discreteseekbar.internal.drawable.Cif cif = this.mThumb;
        Rect rect = this.mInvalidateRect;
        cif.setBounds(i2, rect.top, intrinsicWidth + i2, rect.bottom);
        if (isRtl()) {
            this.mScrubber.getBounds().right = paddingLeft - i3;
            this.mScrubber.getBounds().left = i2 + i3;
        } else {
            this.mScrubber.getBounds().left = paddingLeft + i3;
            this.mScrubber.getBounds().right = i2 + i3;
        }
        Rect rect2 = this.mTempRect;
        this.mThumb.copyBounds(rect2);
        if (!isInEditMode()) {
            this.mIndicator.m31795this(rect2.centerX());
        }
        Rect rect3 = this.mInvalidateRect;
        int i4 = this.mAddedTouchBounds;
        rect3.inset(-i4, -i4);
        int i5 = this.mAddedTouchBounds;
        rect2.inset(-i5, -i5);
        this.mInvalidateRect.union(rect2);
        org.adw.library.widgets.discreteseekbar.internal.compat.Cif.m31781try(this.mRipple, rect2.left, rect2.top, rect2.right, rect2.bottom);
        invalidate(this.mInvalidateRect);
    }

    private void updateThumbPosFromCurrentProgress() {
        int intrinsicWidth = this.mThumb.getIntrinsicWidth();
        int i = this.mAddedTouchBounds;
        int i2 = intrinsicWidth / 2;
        int i3 = this.mValue;
        int i4 = this.mMin;
        updateThumbPos((int) ((((i3 - i4) / (this.mMax - i4)) * ((getWidth() - ((getPaddingRight() + i2) + i)) - ((getPaddingLeft() + i2) + i))) + 0.5f));
    }

    public void animateSetProgress(int i) {
        float animationPosition = isAnimationRunning() ? getAnimationPosition() : getProgress();
        int i2 = this.mMin;
        if (i < i2 || i > (i2 = this.mMax)) {
            i = i2;
        }
        AnimatorCompat animatorCompat = this.mPositionAnimator;
        if (animatorCompat != null) {
            animatorCompat.mo31764do();
        }
        this.mAnimationTarget = i;
        AnimatorCompat animatorCompatM31763if = AnimatorCompat.m31763if(animationPosition, i, new Cdo());
        this.mPositionAnimator = animatorCompatM31763if;
        animatorCompatM31763if.mo31766new(250);
        this.mPositionAnimator.mo31767try();
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        updateFromDrawableState();
    }

    public float getAnimationPosition() {
        return this.mAnimationPosition;
    }

    public int getMax() {
        return this.mMax;
    }

    public int getMin() {
        return this.mMin;
    }

    public Ctry getNumericTransformer() {
        return this.mNumericTransformer;
    }

    public int getProgress() {
        return this.mValue;
    }

    public boolean isAnimationRunning() {
        AnimatorCompat animatorCompat = this.mPositionAnimator;
        return animatorCompat != null && animatorCompat.mo31765for();
    }

    public boolean isRtl() {
        return ViewCompat.getLayoutDirection(this) == 1 && this.mMirrorForRtl;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.mShowIndicatorRunnable);
        if (isInEditMode()) {
            return;
        }
        this.mIndicator.m31797try();
    }

    @Override // android.view.View
    public synchronized void onDraw(Canvas canvas) {
        if (!isLollipopOrGreater) {
            this.mRipple.draw(canvas);
        }
        super.onDraw(canvas);
        this.mTrack.draw(canvas);
        this.mScrubber.draw(canvas);
        this.mThumb.draw(canvas);
    }

    public void onHideBubble() {
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z;
        if (isEnabled()) {
            int animatedProgress = getAnimatedProgress();
            if (i != 21) {
                if (i == 22) {
                    if (animatedProgress < this.mMax) {
                        animateSetProgress(animatedProgress + this.mKeyProgressIncrement);
                    }
                }
                z = false;
            } else if (animatedProgress > this.mMin) {
                animateSetProgress(animatedProgress - this.mKeyProgressIncrement);
            }
            z = true;
        } else {
            z = false;
        }
        return z || super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            removeCallbacks(this.mShowIndicatorRunnable);
            if (!isInEditMode()) {
                this.mIndicator.m31797try();
            }
            updateFromDrawableState();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), this.mThumb.getIntrinsicHeight() + getPaddingTop() + getPaddingBottom() + (this.mAddedTouchBounds * 2));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(CustomState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        CustomState customState = (CustomState) parcelable;
        setMin(customState.f28358for);
        setMax(customState.f28359if);
        setProgress(customState.f28357do, false);
        super.onRestoreInstanceState(customState.getSuperState());
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        CustomState customState = new CustomState(super.onSaveInstanceState());
        customState.f28357do = getProgress();
        customState.f28359if = this.mMax;
        customState.f28358for = this.mMin;
        return customState;
    }

    public void onShowBubble() {
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int intrinsicWidth = this.mThumb.getIntrinsicWidth();
        int intrinsicHeight = this.mThumb.getIntrinsicHeight();
        int i5 = this.mAddedTouchBounds;
        int i6 = intrinsicWidth / 2;
        int paddingLeft = getPaddingLeft() + i5;
        int paddingRight = getPaddingRight();
        int height = (getHeight() - getPaddingBottom()) - i5;
        this.mThumb.setBounds(paddingLeft, height - intrinsicHeight, intrinsicWidth + paddingLeft, height);
        int iMax = Math.max(this.mTrackHeight / 2, 1);
        int i7 = paddingLeft + i6;
        int i8 = height - i6;
        this.mTrack.setBounds(i7, i8 - iMax, ((getWidth() - i6) - paddingRight) - i5, iMax + i8);
        int iMax2 = Math.max(this.mScrubberHeight / 2, 2);
        this.mScrubber.setBounds(i7, i8 - iMax2, i7, i8 + iMax2);
        updateThumbPosFromCurrentProgress();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (actionMasked == 0) {
            this.mDownX = motionEvent.getX();
            startDragging(motionEvent, isInScrollingContainer());
        } else if (actionMasked == 1) {
            if (!isDragging() && this.mAllowTrackClick) {
                startDragging(motionEvent, false);
                updateDragging(motionEvent);
            }
            stopDragging();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                stopDragging();
            }
        } else if (isDragging()) {
            updateDragging(motionEvent);
        } else if (Math.abs(motionEvent.getX() - this.mDownX) > this.mTouchSlop) {
            startDragging(motionEvent, false);
        }
        return true;
    }

    public void onValueChanged(int i) {
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        super.scheduleDrawable(drawable, runnable, j);
    }

    public void setAnimationPosition(float f) {
        this.mAnimationPosition = f;
        updateProgressFromAnimation((f - this.mMin) / (this.mMax - r0));
    }

    public void setIndicatorFormatter(@Nullable String str) {
        this.mIndicatorFormatter = str;
        updateProgressMessage(this.mValue);
    }

    public void setIndicatorPopupEnabled(boolean z) {
        this.mIndicatorPopupEnabled = z;
    }

    public void setMax(int i) {
        this.mMax = i;
        if (i < this.mMin) {
            setMin(i - 1);
        }
        updateKeyboardRange();
        int i2 = this.mValue;
        int i3 = this.mMin;
        if (i2 < i3 || i2 > this.mMax) {
            setProgress(i3);
        }
        updateIndicatorSizes();
    }

    public void setMin(int i) {
        this.mMin = i;
        if (i > this.mMax) {
            setMax(i + 1);
        }
        updateKeyboardRange();
        int i2 = this.mValue;
        int i3 = this.mMin;
        if (i2 < i3 || i2 > this.mMax) {
            setProgress(i3);
        }
    }

    public void setNumericTransformer(@Nullable Ctry ctry) {
        if (ctry == null) {
            ctry = new Cnew(null);
        }
        this.mNumericTransformer = ctry;
        updateIndicatorSizes();
        updateProgressMessage(this.mValue);
    }

    public void setOnProgressChangeListener(@Nullable OnProgressChangeListener onProgressChangeListener) {
        this.mPublicChangeListener = onProgressChangeListener;
    }

    public void setProgress(int i) {
        setProgress(i, false);
    }

    public void setRippleColor(int i) {
        setRippleColor(new ColorStateList(new int[][]{new int[0]}, new int[]{i}));
    }

    public void setScrubberColor(int i) {
        this.mScrubber.m5447for(ColorStateList.valueOf(i));
    }

    public void setThumbColor(int i, int i2) {
        this.mThumb.m5447for(ColorStateList.valueOf(i));
        this.mIndicator.m31789break(i2, i);
    }

    public void setTrackColor(int i) {
        this.mTrack.m5447for(ColorStateList.valueOf(i));
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mThumb || drawable == this.mTrack || drawable == this.mScrubber || drawable == this.mRipple || super.verifyDrawable(drawable);
    }

    public DiscreteSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.discreteSeekBarStyle);
    }

    private void setProgress(int i, boolean z) {
        int iMax = Math.max(this.mMin, Math.min(this.mMax, i));
        if (isAnimationRunning()) {
            this.mPositionAnimator.mo31764do();
        }
        if (this.mValue != iMax) {
            this.mValue = iMax;
            notifyProgress(iMax, z);
            updateProgressMessage(iMax);
            updateThumbPosFromCurrentProgress();
        }
    }

    public void setRippleColor(@NonNull ColorStateList colorStateList) {
        org.adw.library.widgets.discreteseekbar.internal.compat.Cif.m31776else(this.mRipple, colorStateList);
    }

    public void setScrubberColor(@NonNull ColorStateList colorStateList) {
        this.mScrubber.m5447for(colorStateList);
    }

    public void setTrackColor(@NonNull ColorStateList colorStateList) {
        this.mTrack.m5447for(colorStateList);
    }

    public DiscreteSeekBar(Context context, AttributeSet attributeSet, int i) {
        int integer;
        int integer2;
        super(context, attributeSet, i);
        this.mKeyProgressIncrement = 1;
        this.mMirrorForRtl = false;
        this.mAllowTrackClick = true;
        this.mIndicatorPopupEnabled = true;
        this.mInvalidateRect = new Rect();
        this.mTempRect = new Rect();
        this.mShowIndicatorRunnable = new Cif();
        this.mFloaterListener = new Cfor();
        setFocusable(true);
        setWillNotDraw(false);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        float f = context.getResources().getDisplayMetrics().density;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DiscreteSeekBar, i, R.style.Widget_DiscreteSeekBar);
        this.mMirrorForRtl = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DiscreteSeekBar_dsb_mirrorForRtl, this.mMirrorForRtl);
        this.mAllowTrackClick = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DiscreteSeekBar_dsb_allowTrackClickToDrag, this.mAllowTrackClick);
        this.mIndicatorPopupEnabled = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DiscreteSeekBar_dsb_indicatorPopupEnabled, this.mIndicatorPopupEnabled);
        this.mTrackHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DiscreteSeekBar_dsb_trackHeight, (int) (1.0f * f));
        this.mScrubberHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DiscreteSeekBar_dsb_scrubberHeight, (int) (4.0f * f));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DiscreteSeekBar_dsb_thumbSize, (int) (12.0f * f));
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DiscreteSeekBar_dsb_indicatorSeparation, (int) (5.0f * f));
        this.mAddedTouchBounds = Math.max(0, (((int) (f * 32.0f)) - dimensionPixelSize) / 2);
        int i2 = R.styleable.DiscreteSeekBar_dsb_max;
        int i3 = R.styleable.DiscreteSeekBar_dsb_min;
        int i4 = R.styleable.DiscreteSeekBar_dsb_value;
        TypedValue typedValue = new TypedValue();
        int integer3 = 100;
        if (typedArrayObtainStyledAttributes.getValue(i2, typedValue)) {
            if (typedValue.type == 5) {
                integer3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(i2, 100);
            } else {
                integer3 = typedArrayObtainStyledAttributes.getInteger(i2, 100);
            }
        }
        if (!typedArrayObtainStyledAttributes.getValue(i3, typedValue)) {
            integer = 0;
        } else if (typedValue.type == 5) {
            integer = typedArrayObtainStyledAttributes.getDimensionPixelSize(i3, 0);
        } else {
            integer = typedArrayObtainStyledAttributes.getInteger(i3, 0);
        }
        if (!typedArrayObtainStyledAttributes.getValue(i4, typedValue)) {
            integer2 = 0;
        } else if (typedValue.type == 5) {
            integer2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(i4, 0);
        } else {
            integer2 = typedArrayObtainStyledAttributes.getInteger(i4, 0);
        }
        this.mMin = integer;
        this.mMax = Math.max(integer + 1, integer3);
        this.mValue = Math.max(integer, Math.min(integer3, integer2));
        updateKeyboardRange();
        this.mIndicatorFormatter = typedArrayObtainStyledAttributes.getString(R.styleable.DiscreteSeekBar_dsb_indicatorFormatter);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.DiscreteSeekBar_dsb_trackColor);
        ColorStateList colorStateList2 = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.DiscreteSeekBar_dsb_progressColor);
        ColorStateList colorStateList3 = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.DiscreteSeekBar_dsb_rippleColor);
        boolean zIsInEditMode = isInEditMode();
        colorStateList3 = (zIsInEditMode || colorStateList3 == null) ? new ColorStateList(new int[][]{new int[0]}, new int[]{-12303292}) : colorStateList3;
        colorStateList = (zIsInEditMode || colorStateList == null) ? new ColorStateList(new int[][]{new int[0]}, new int[]{QMUIProgressBar.f19441continue}) : colorStateList;
        colorStateList2 = (zIsInEditMode || colorStateList2 == null) ? new ColorStateList(new int[][]{new int[0]}, new int[]{DEFAULT_THUMB_COLOR}) : colorStateList2;
        Drawable drawableM31775do = org.adw.library.widgets.discreteseekbar.internal.compat.Cif.m31775do(colorStateList3);
        this.mRipple = drawableM31775do;
        if (isLollipopOrGreater) {
            org.adw.library.widgets.discreteseekbar.internal.compat.Cif.m31780new(this, drawableM31775do);
        } else {
            drawableM31775do.setCallback(this);
        }
        f82 f82Var = new f82(colorStateList);
        this.mTrack = f82Var;
        f82Var.setCallback(this);
        f82 f82Var2 = new f82(colorStateList2);
        this.mScrubber = f82Var2;
        f82Var2.setCallback(this);
        org.adw.library.widgets.discreteseekbar.internal.drawable.Cif cif = new org.adw.library.widgets.discreteseekbar.internal.drawable.Cif(colorStateList2, dimensionPixelSize);
        this.mThumb = cif;
        cif.setCallback(this);
        org.adw.library.widgets.discreteseekbar.internal.drawable.Cif cif2 = this.mThumb;
        cif2.setBounds(0, 0, cif2.getIntrinsicWidth(), this.mThumb.getIntrinsicHeight());
        if (!zIsInEditMode) {
            org.adw.library.widgets.discreteseekbar.internal.Cdo cdo = new org.adw.library.widgets.discreteseekbar.internal.Cdo(context, attributeSet, i, convertValueToMessage(this.mMax), dimensionPixelSize, this.mAddedTouchBounds + dimensionPixelSize + dimensionPixelSize2);
            this.mIndicator = cdo;
            cdo.m31790catch(this.mFloaterListener);
        }
        typedArrayObtainStyledAttributes.recycle();
        setNumericTransformer(new Cnew(null));
    }

    public void setThumbColor(@NonNull ColorStateList colorStateList, int i) {
        this.mThumb.m5447for(colorStateList);
        this.mIndicator.m31789break(i, colorStateList.getColorForState(new int[]{16842919}, colorStateList.getDefaultColor()));
    }

    public static class CustomState extends View.BaseSavedState {
        public static final Parcelable.Creator<CustomState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        private int f28357do;

        /* renamed from: for, reason: not valid java name */
        private int f28358for;

        /* renamed from: if, reason: not valid java name */
        private int f28359if;

        /* renamed from: org.adw.library.widgets.discreteseekbar.DiscreteSeekBar$CustomState$do, reason: invalid class name */
        public static class Cdo implements Parcelable.Creator<CustomState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public CustomState createFromParcel(Parcel parcel) {
                return new CustomState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public CustomState[] newArray(int i) {
                return new CustomState[i];
            }
        }

        public CustomState(Parcel parcel) {
            super(parcel);
            this.f28357do = parcel.readInt();
            this.f28359if = parcel.readInt();
            this.f28358for = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f28357do);
            parcel.writeInt(this.f28359if);
            parcel.writeInt(this.f28358for);
        }

        public CustomState(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
