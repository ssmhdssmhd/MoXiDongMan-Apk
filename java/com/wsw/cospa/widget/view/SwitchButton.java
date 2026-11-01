package com.wsw.cospa.widget.view;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.oa1;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.CompoundButton;
import androidx.annotation.StyleableRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import com.gyf.immersionbar.Cnew;
import com.scwang.smartrefresh.header.waveswipe.WaveView;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class SwitchButton extends CompoundButton {
    private static final int CHECKED_ATTR = 16842912;
    public static final int DEFAULT_ANIMATION_DURATION = 250;
    public static final int DEFAULT_THUMB_MARGIN_DP = 2;
    public static final float DEFAULT_THUMB_RANGE_RATIO = 1.8f;
    public static final int DEFAULT_THUMB_SIZE_DP = 20;
    public static final int DEFAULT_TINT_COLOR = 3309506;
    private static final int ENABLE_ATTR = 16842910;
    private static final int PRESSED_ATTR = 16842919;
    private long mAnimationDuration;
    private ColorStateList mBackColor;
    private Drawable mBackDrawable;
    private int mBackHeight;
    private float mBackRadius;
    private RectF mBackRectF;
    private int mBackWidth;
    private boolean mCatch;
    private CompoundButton.OnCheckedChangeListener mChildOnCheckedChangeListener;
    private int mClickTimeout;
    private int mCurrBackColor;
    private int mCurrThumbColor;
    private Drawable mCurrentBackDrawable;
    private boolean mDrawDebugRect;
    private boolean mFadeBack;
    private boolean mIsBackUseDrawable;
    private boolean mIsThumbUseDrawable;
    private float mLastX;
    private int mNextBackColor;
    private Drawable mNextBackDrawable;
    private Layout mOffLayout;
    private int mOffTextColor;
    private Layout mOnLayout;
    private int mOnTextColor;
    private Paint mPaint;
    private RectF mPresentThumbRectF;
    private float mProgress;
    private ObjectAnimator mProgressAnimator;
    private boolean mReady;
    private Paint mRectPaint;
    private boolean mRestoring;
    private RectF mSafeRectF;
    private float mStartX;
    private float mStartY;
    private int mTextAdjust;
    private int mTextExtra;
    private float mTextHeight;
    private CharSequence mTextOff;
    private RectF mTextOffRectF;
    private CharSequence mTextOn;
    private RectF mTextOnRectF;
    private TextPaint mTextPaint;
    private int mTextThumbInset;
    private float mTextWidth;
    private ColorStateList mThumbColor;
    private Drawable mThumbDrawable;
    private int mThumbHeight;
    private RectF mThumbMargin;
    private float mThumbRadius;
    private float mThumbRangeRatio;
    private RectF mThumbRectF;
    private int mThumbWidth;
    private int mTintColor;
    private int mTouchSlop;
    private static int[] CHECKED_PRESSED_STATE = {16842912, 16842910, 16842919};
    private static int[] UNCHECKED_PRESSED_STATE = {-16842912, 16842910, 16842919};

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.wsw.cospa.widget.view.SwitchButton.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public CharSequence offText;
        public CharSequence onText;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.onText, parcel, i);
            TextUtils.writeToParcel(this.offText, parcel, i);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.onText = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.offText = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }
    }

    public SwitchButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDrawDebugRect = false;
        this.mRestoring = false;
        this.mReady = false;
        this.mCatch = false;
        init(attributeSet);
    }

    private void catchView() {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        this.mCatch = true;
    }

    private int ceil(double d) {
        return (int) Math.ceil(d);
    }

    public static ColorStateList generateBackColorWithTintColor(int i) {
        int i2 = i - (-805306368);
        return new ColorStateList(new int[][]{new int[]{-16842910, 16842912}, new int[]{-16842910}, new int[]{16842912, 16842919}, new int[]{-16842912, 16842919}, new int[]{16842912}, new int[]{-16842912}}, new int[]{i - (-520093696), 268435456, i2, oa1.f4492abstract, i2, oa1.f4492abstract});
    }

    public static ColorStateList generateThumbColorWithTintColor(int i) {
        int[][] iArr = {new int[]{-16842910, 16842912}, new int[]{-16842910}, new int[]{16842919, -16842912}, new int[]{16842919, 16842912}, new int[]{16842912}, new int[]{-16842912}};
        int i2 = i - WaveView.f20439finally;
        return new ColorStateList(iArr, new int[]{i - (-1442840576), Cnew.f18137catch, i2, i2, i | (-16777216), -1118482});
    }

    public static Drawable getDrawableAttrRes(Context context, TypedArray typedArray, @StyleableRes int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getDrawable(i);
        }
        int resourceId = typedArray.getResourceId(i, -1);
        if (resourceId != -1) {
            return AppCompatResources.getDrawable(context, resourceId);
        }
        return null;
    }

    private float getProgress() {
        return this.mProgress;
    }

    private boolean getStatusBasedOnPos() {
        return getProgress() > 0.5f;
    }

    private void init(AttributeSet attributeSet) {
        String str;
        float f;
        ColorStateList colorStateList;
        String str2;
        int i;
        int i2;
        int i3;
        int i4;
        Drawable drawable;
        float f2;
        float f3;
        Drawable drawable2;
        ColorStateList colorStateList2;
        float f4;
        boolean z;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        int i5;
        float f10;
        TypedArray typedArrayObtainStyledAttributes;
        ColorStateList colorStateList3;
        this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.mClickTimeout = ViewConfiguration.getPressedStateDuration() + ViewConfiguration.getTapTimeout();
        this.mPaint = new Paint(1);
        Paint paint = new Paint(1);
        this.mRectPaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.mRectPaint.setStrokeWidth(getResources().getDisplayMetrics().density);
        this.mTextPaint = getPaint();
        this.mThumbRectF = new RectF();
        this.mBackRectF = new RectF();
        this.mSafeRectF = new RectF();
        this.mThumbMargin = new RectF();
        this.mTextOnRectF = new RectF();
        this.mTextOffRectF = new RectF();
        ObjectAnimator duration = ObjectAnimator.ofFloat(this, "progress", 0.0f, 0.0f).setDuration(250L);
        this.mProgressAnimator = duration;
        duration.setInterpolator(new AccelerateDecelerateInterpolator());
        this.mPresentThumbRectF = new RectF();
        float f11 = getResources().getDisplayMetrics().density * 2.0f;
        TypedArray typedArrayObtainStyledAttributes2 = attributeSet == null ? null : getContext().obtainStyledAttributes(attributeSet, R.styleable.SwitchButton);
        if (typedArrayObtainStyledAttributes2 != null) {
            Drawable drawableAttrRes = getDrawableAttrRes(getContext(), typedArrayObtainStyledAttributes2, 29);
            ColorStateList colorStateList4 = typedArrayObtainStyledAttributes2.getColorStateList(28);
            float dimension = typedArrayObtainStyledAttributes2.getDimension(31, f11);
            float dimension2 = typedArrayObtainStyledAttributes2.getDimension(33, dimension);
            float dimension3 = typedArrayObtainStyledAttributes2.getDimension(34, dimension);
            float dimension4 = typedArrayObtainStyledAttributes2.getDimension(35, dimension);
            float dimension5 = typedArrayObtainStyledAttributes2.getDimension(32, dimension);
            float dimension6 = typedArrayObtainStyledAttributes2.getDimension(38, 0.0f);
            float dimension7 = typedArrayObtainStyledAttributes2.getDimension(30, 0.0f);
            float dimension8 = typedArrayObtainStyledAttributes2.getDimension(36, -1.0f);
            float dimension9 = typedArrayObtainStyledAttributes2.getDimension(21, -1.0f);
            Drawable drawableAttrRes2 = getDrawableAttrRes(getContext(), typedArrayObtainStyledAttributes2, 20);
            ColorStateList colorStateList5 = typedArrayObtainStyledAttributes2.getColorStateList(19);
            float f12 = typedArrayObtainStyledAttributes2.getFloat(37, 1.8f);
            int integer = typedArrayObtainStyledAttributes2.getInteger(18, 250);
            boolean z2 = typedArrayObtainStyledAttributes2.getBoolean(22, true);
            int color = typedArrayObtainStyledAttributes2.getColor(39, 0);
            String string = typedArrayObtainStyledAttributes2.getString(26);
            String string2 = typedArrayObtainStyledAttributes2.getString(25);
            int dimensionPixelSize = typedArrayObtainStyledAttributes2.getDimensionPixelSize(27, 0);
            int dimensionPixelSize2 = typedArrayObtainStyledAttributes2.getDimensionPixelSize(24, 0);
            int dimensionPixelSize3 = typedArrayObtainStyledAttributes2.getDimensionPixelSize(23, 0);
            typedArrayObtainStyledAttributes2.recycle();
            f = dimension3;
            i5 = integer;
            z = z2;
            i = dimensionPixelSize;
            f4 = dimension7;
            f7 = f12;
            drawable = drawableAttrRes2;
            i4 = color;
            f6 = dimension8;
            f8 = dimension5;
            i3 = dimensionPixelSize3;
            f5 = dimension9;
            str = string2;
            i2 = dimensionPixelSize2;
            f9 = dimension2;
            colorStateList2 = colorStateList5;
            f2 = dimension6;
            colorStateList = colorStateList4;
            drawable2 = drawableAttrRes;
            f3 = dimension4;
            str2 = string;
        } else {
            str = null;
            f = 0.0f;
            colorStateList = null;
            str2 = null;
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
            drawable = null;
            f2 = 0.0f;
            f3 = 0.0f;
            drawable2 = null;
            colorStateList2 = null;
            f4 = 0.0f;
            z = true;
            f5 = -1.0f;
            f6 = -1.0f;
            f7 = 1.8f;
            f8 = 0.0f;
            f9 = 0.0f;
            i5 = 250;
        }
        float f13 = f;
        if (attributeSet == null) {
            f10 = f3;
            typedArrayObtainStyledAttributes = null;
        } else {
            f10 = f3;
            typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, new int[]{android.R.attr.focusable, android.R.attr.clickable});
        }
        if (typedArrayObtainStyledAttributes != null) {
            colorStateList3 = colorStateList2;
            boolean z3 = typedArrayObtainStyledAttributes.getBoolean(0, true);
            boolean z4 = typedArrayObtainStyledAttributes.getBoolean(1, z3);
            setFocusable(z3);
            setClickable(z4);
            typedArrayObtainStyledAttributes.recycle();
        } else {
            colorStateList3 = colorStateList2;
            setFocusable(true);
            setClickable(true);
        }
        this.mTextOn = str2;
        this.mTextOff = str;
        this.mTextThumbInset = i;
        this.mTextExtra = i2;
        this.mTextAdjust = i3;
        this.mThumbDrawable = drawable2;
        this.mThumbColor = colorStateList;
        this.mIsThumbUseDrawable = drawable2 != null;
        this.mTintColor = i4;
        if (i4 == 0) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(R.attr.arg_res_0x7f040117, typedValue, true)) {
                this.mTintColor = typedValue.data;
            } else {
                this.mTintColor = DEFAULT_TINT_COLOR;
            }
        }
        if (!this.mIsThumbUseDrawable && this.mThumbColor == null) {
            ColorStateList colorStateListGenerateThumbColorWithTintColor = generateThumbColorWithTintColor(this.mTintColor);
            this.mThumbColor = colorStateListGenerateThumbColorWithTintColor;
            this.mCurrThumbColor = colorStateListGenerateThumbColorWithTintColor.getDefaultColor();
        }
        this.mThumbWidth = ceil(f2);
        this.mThumbHeight = ceil(f4);
        this.mBackDrawable = drawable;
        ColorStateList colorStateList6 = colorStateList3;
        this.mBackColor = colorStateList6;
        boolean z5 = drawable != null;
        this.mIsBackUseDrawable = z5;
        if (!z5 && colorStateList6 == null) {
            ColorStateList colorStateListGenerateBackColorWithTintColor = generateBackColorWithTintColor(this.mTintColor);
            this.mBackColor = colorStateListGenerateBackColorWithTintColor;
            int defaultColor = colorStateListGenerateBackColorWithTintColor.getDefaultColor();
            this.mCurrBackColor = defaultColor;
            this.mNextBackColor = this.mBackColor.getColorForState(CHECKED_PRESSED_STATE, defaultColor);
        }
        this.mThumbMargin.set(f9, f10, f13, f8);
        float f14 = f7;
        this.mThumbRangeRatio = this.mThumbMargin.width() >= 0.0f ? Math.max(f14, 1.0f) : f14;
        this.mThumbRadius = f6;
        this.mBackRadius = f5;
        long j = i5;
        this.mAnimationDuration = j;
        this.mFadeBack = z;
        this.mProgressAnimator.setDuration(j);
        if (isChecked()) {
            setProgress(1.0f);
        }
    }

    private Layout makeLayout(CharSequence charSequence) {
        return new StaticLayout(charSequence, this.mTextPaint, (int) Math.ceil(Layout.getDesiredWidth(charSequence, r2)), Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
    }

    private int measureHeight(int i) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        if (this.mThumbHeight == 0 && this.mIsThumbUseDrawable) {
            this.mThumbHeight = this.mThumbDrawable.getIntrinsicHeight();
        }
        if (mode != 1073741824) {
            if (this.mThumbHeight == 0) {
                this.mThumbHeight = ceil(getResources().getDisplayMetrics().density * 20.0f);
            }
            float f = this.mThumbHeight;
            RectF rectF = this.mThumbMargin;
            int iCeil = ceil(f + rectF.top + rectF.bottom);
            this.mBackHeight = iCeil;
            if (iCeil < 0) {
                this.mBackHeight = 0;
                this.mThumbHeight = 0;
                return size;
            }
            int iCeil2 = ceil(this.mTextHeight - iCeil);
            if (iCeil2 > 0) {
                this.mBackHeight += iCeil2;
                this.mThumbHeight += iCeil2;
            }
            int iMax = Math.max(this.mThumbHeight, this.mBackHeight);
            return Math.max(Math.max(iMax, getPaddingTop() + iMax + getPaddingBottom()), getSuggestedMinimumHeight());
        }
        if (this.mThumbHeight != 0) {
            RectF rectF2 = this.mThumbMargin;
            this.mBackHeight = ceil(r6 + rectF2.top + rectF2.bottom);
            this.mBackHeight = ceil(Math.max(r6, this.mTextHeight));
            if ((((r6 + getPaddingTop()) + getPaddingBottom()) - Math.min(0.0f, this.mThumbMargin.top)) - Math.min(0.0f, this.mThumbMargin.bottom) > size) {
                this.mThumbHeight = 0;
            }
        }
        if (this.mThumbHeight == 0) {
            int iCeil3 = ceil(((size - getPaddingTop()) - getPaddingBottom()) + Math.min(0.0f, this.mThumbMargin.top) + Math.min(0.0f, this.mThumbMargin.bottom));
            this.mBackHeight = iCeil3;
            if (iCeil3 < 0) {
                this.mBackHeight = 0;
                this.mThumbHeight = 0;
                return size;
            }
            RectF rectF3 = this.mThumbMargin;
            this.mThumbHeight = ceil((iCeil3 - rectF3.top) - rectF3.bottom);
        }
        if (this.mThumbHeight >= 0) {
            return size;
        }
        this.mBackHeight = 0;
        this.mThumbHeight = 0;
        return size;
    }

    private int measureWidth(int i) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        if (this.mThumbWidth == 0 && this.mIsThumbUseDrawable) {
            this.mThumbWidth = this.mThumbDrawable.getIntrinsicWidth();
        }
        int iCeil = ceil(this.mTextWidth);
        if (this.mThumbRangeRatio == 0.0f) {
            this.mThumbRangeRatio = 1.8f;
        }
        if (mode != 1073741824) {
            if (this.mThumbWidth == 0) {
                this.mThumbWidth = ceil(getResources().getDisplayMetrics().density * 20.0f);
            }
            if (this.mThumbRangeRatio == 0.0f) {
                this.mThumbRangeRatio = 1.8f;
            }
            int iCeil2 = ceil(this.mThumbWidth * this.mThumbRangeRatio);
            float f = iCeil + this.mTextExtra;
            float f2 = iCeil2 - this.mThumbWidth;
            RectF rectF = this.mThumbMargin;
            int iCeil3 = ceil(f - ((f2 + Math.max(rectF.left, rectF.right)) + this.mTextThumbInset));
            float f3 = iCeil2;
            RectF rectF2 = this.mThumbMargin;
            int iCeil4 = ceil(rectF2.left + f3 + rectF2.right + Math.max(0, iCeil3));
            this.mBackWidth = iCeil4;
            if (iCeil4 >= 0) {
                int iCeil5 = ceil(f3 + Math.max(0.0f, this.mThumbMargin.left) + Math.max(0.0f, this.mThumbMargin.right) + Math.max(0, iCeil3));
                return Math.max(iCeil5, getPaddingLeft() + iCeil5 + getPaddingRight());
            }
            this.mThumbWidth = 0;
            this.mBackWidth = 0;
            return size;
        }
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        if (this.mThumbWidth != 0) {
            int iCeil6 = ceil(r2 * this.mThumbRangeRatio);
            int i2 = this.mTextExtra + iCeil;
            int i3 = iCeil6 - this.mThumbWidth;
            RectF rectF3 = this.mThumbMargin;
            int iCeil7 = i2 - (i3 + ceil(Math.max(rectF3.left, rectF3.right)));
            float f4 = iCeil6;
            RectF rectF4 = this.mThumbMargin;
            int iCeil8 = ceil(rectF4.left + f4 + rectF4.right + Math.max(iCeil7, 0));
            this.mBackWidth = iCeil8;
            if (iCeil8 < 0) {
                this.mThumbWidth = 0;
            }
            if (f4 + Math.max(this.mThumbMargin.left, 0.0f) + Math.max(this.mThumbMargin.right, 0.0f) + Math.max(iCeil7, 0) > paddingLeft) {
                this.mThumbWidth = 0;
            }
        }
        if (this.mThumbWidth != 0) {
            return size;
        }
        int iCeil9 = ceil((((size - getPaddingLeft()) - getPaddingRight()) - Math.max(this.mThumbMargin.left, 0.0f)) - Math.max(this.mThumbMargin.right, 0.0f));
        if (iCeil9 < 0) {
            this.mThumbWidth = 0;
            this.mBackWidth = 0;
            return size;
        }
        float f5 = iCeil9;
        this.mThumbWidth = ceil(f5 / this.mThumbRangeRatio);
        RectF rectF5 = this.mThumbMargin;
        int iCeil10 = ceil(f5 + rectF5.left + rectF5.right);
        this.mBackWidth = iCeil10;
        if (iCeil10 < 0) {
            this.mThumbWidth = 0;
            this.mBackWidth = 0;
            return size;
        }
        int i4 = iCeil + this.mTextExtra;
        int i5 = iCeil9 - this.mThumbWidth;
        RectF rectF6 = this.mThumbMargin;
        int iCeil11 = i4 - (i5 + ceil(Math.max(rectF6.left, rectF6.right)));
        if (iCeil11 > 0) {
            this.mThumbWidth -= iCeil11;
        }
        if (this.mThumbWidth >= 0) {
            return size;
        }
        this.mThumbWidth = 0;
        this.mBackWidth = 0;
        return size;
    }

    private void setDrawableState(Drawable drawable) {
        if (drawable != null) {
            drawable.setState(getDrawableState());
            invalidate();
        }
    }

    private void setProgress(float f) {
        if (f > 1.0f) {
            f = 1.0f;
        } else if (f < 0.0f) {
            f = 0.0f;
        }
        this.mProgress = f;
        invalidate();
    }

    private void setup() {
        int i;
        if (this.mThumbWidth == 0 || (i = this.mThumbHeight) == 0 || this.mBackWidth == 0 || this.mBackHeight == 0) {
            return;
        }
        if (this.mThumbRadius == -1.0f) {
            this.mThumbRadius = Math.min(r0, i) / 2;
        }
        if (this.mBackRadius == -1.0f) {
            this.mBackRadius = Math.min(this.mBackWidth, this.mBackHeight) / 2;
        }
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int iCeil = ceil((this.mBackWidth - Math.min(0.0f, this.mThumbMargin.left)) - Math.min(0.0f, this.mThumbMargin.right));
        float paddingTop = measuredHeight <= ceil((this.mBackHeight - Math.min(0.0f, this.mThumbMargin.top)) - Math.min(0.0f, this.mThumbMargin.bottom)) ? getPaddingTop() + Math.max(0.0f, this.mThumbMargin.top) : (((measuredHeight - r3) + 1) / 2) + getPaddingTop() + Math.max(0.0f, this.mThumbMargin.top);
        float paddingLeft = measuredWidth <= this.mBackWidth ? getPaddingLeft() + Math.max(0.0f, this.mThumbMargin.left) : (((measuredWidth - iCeil) + 1) / 2) + getPaddingLeft() + Math.max(0.0f, this.mThumbMargin.left);
        this.mThumbRectF.set(paddingLeft, paddingTop, this.mThumbWidth + paddingLeft, this.mThumbHeight + paddingTop);
        RectF rectF = this.mThumbRectF;
        float f = rectF.left;
        RectF rectF2 = this.mThumbMargin;
        float f2 = f - rectF2.left;
        RectF rectF3 = this.mBackRectF;
        float f3 = rectF.top;
        float f4 = rectF2.top;
        rectF3.set(f2, f3 - f4, this.mBackWidth + f2, (f3 - f4) + this.mBackHeight);
        RectF rectF4 = this.mSafeRectF;
        RectF rectF5 = this.mThumbRectF;
        rectF4.set(rectF5.left, 0.0f, (this.mBackRectF.right - this.mThumbMargin.right) - rectF5.width(), 0.0f);
        this.mBackRadius = Math.min(Math.min(this.mBackRectF.width(), this.mBackRectF.height()) / 2.0f, this.mBackRadius);
        Drawable drawable = this.mBackDrawable;
        if (drawable != null) {
            RectF rectF6 = this.mBackRectF;
            drawable.setBounds((int) rectF6.left, (int) rectF6.top, ceil(rectF6.right), ceil(this.mBackRectF.bottom));
        }
        if (this.mOnLayout != null) {
            RectF rectF7 = this.mBackRectF;
            float fWidth = (rectF7.left + (((((rectF7.width() + this.mTextThumbInset) - this.mThumbWidth) - this.mThumbMargin.right) - this.mOnLayout.getWidth()) / 2.0f)) - this.mTextAdjust;
            RectF rectF8 = this.mBackRectF;
            float fHeight = rectF8.top + ((rectF8.height() - this.mOnLayout.getHeight()) / 2.0f);
            this.mTextOnRectF.set(fWidth, fHeight, this.mOnLayout.getWidth() + fWidth, this.mOnLayout.getHeight() + fHeight);
        }
        if (this.mOffLayout != null) {
            RectF rectF9 = this.mBackRectF;
            float fWidth2 = ((rectF9.right - (((((rectF9.width() + this.mTextThumbInset) - this.mThumbWidth) - this.mThumbMargin.left) - this.mOffLayout.getWidth()) / 2.0f)) - this.mOffLayout.getWidth()) + this.mTextAdjust;
            RectF rectF10 = this.mBackRectF;
            float fHeight2 = rectF10.top + ((rectF10.height() - this.mOffLayout.getHeight()) / 2.0f);
            this.mTextOffRectF.set(fWidth2, fHeight2, this.mOffLayout.getWidth() + fWidth2, this.mOffLayout.getHeight() + fHeight2);
        }
        this.mReady = true;
    }

    public void animateToState(boolean z) {
        ObjectAnimator objectAnimator = this.mProgressAnimator;
        if (objectAnimator == null) {
            return;
        }
        if (objectAnimator.isRunning()) {
            this.mProgressAnimator.cancel();
        }
        this.mProgressAnimator.setDuration(this.mAnimationDuration);
        if (z) {
            this.mProgressAnimator.setFloatValues(this.mProgress, 1.0f);
        } else {
            this.mProgressAnimator.setFloatValues(this.mProgress, 0.0f);
        }
        this.mProgressAnimator.start();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        super.drawableStateChanged();
        if (this.mIsThumbUseDrawable || (colorStateList2 = this.mThumbColor) == null) {
            setDrawableState(this.mThumbDrawable);
        } else {
            this.mCurrThumbColor = colorStateList2.getColorForState(getDrawableState(), this.mCurrThumbColor);
        }
        int[] iArr = isChecked() ? UNCHECKED_PRESSED_STATE : CHECKED_PRESSED_STATE;
        ColorStateList textColors = getTextColors();
        if (textColors != null) {
            int defaultColor = textColors.getDefaultColor();
            this.mOnTextColor = textColors.getColorForState(CHECKED_PRESSED_STATE, defaultColor);
            this.mOffTextColor = textColors.getColorForState(UNCHECKED_PRESSED_STATE, defaultColor);
        }
        if (!this.mIsBackUseDrawable && (colorStateList = this.mBackColor) != null) {
            int colorForState = colorStateList.getColorForState(getDrawableState(), this.mCurrBackColor);
            this.mCurrBackColor = colorForState;
            this.mNextBackColor = this.mBackColor.getColorForState(iArr, colorForState);
            return;
        }
        Drawable drawable = this.mBackDrawable;
        if ((drawable instanceof StateListDrawable) && this.mFadeBack) {
            drawable.setState(iArr);
            this.mNextBackDrawable = this.mBackDrawable.getCurrent().mutate();
        } else {
            this.mNextBackDrawable = null;
        }
        setDrawableState(this.mBackDrawable);
        Drawable drawable2 = this.mBackDrawable;
        if (drawable2 != null) {
            this.mCurrentBackDrawable = drawable2.getCurrent().mutate();
        }
    }

    public long getAnimationDuration() {
        return this.mAnimationDuration;
    }

    public ColorStateList getBackColor() {
        return this.mBackColor;
    }

    public Drawable getBackDrawable() {
        return this.mBackDrawable;
    }

    public float getBackRadius() {
        return this.mBackRadius;
    }

    public PointF getBackSizeF() {
        return new PointF(this.mBackRectF.width(), this.mBackRectF.height());
    }

    public CharSequence getTextOff() {
        return this.mTextOff;
    }

    public CharSequence getTextOn() {
        return this.mTextOn;
    }

    public ColorStateList getThumbColor() {
        return this.mThumbColor;
    }

    public Drawable getThumbDrawable() {
        return this.mThumbDrawable;
    }

    public float getThumbHeight() {
        return this.mThumbHeight;
    }

    public RectF getThumbMargin() {
        return this.mThumbMargin;
    }

    public float getThumbRadius() {
        return this.mThumbRadius;
    }

    public float getThumbRangeRatio() {
        return this.mThumbRangeRatio;
    }

    public float getThumbWidth() {
        return this.mThumbWidth;
    }

    public int getTintColor() {
        return this.mTintColor;
    }

    public boolean isDrawDebugRect() {
        return this.mDrawDebugRect;
    }

    public boolean isFadeBack() {
        return this.mFadeBack;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0131  */
    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        float f;
        float f2;
        float progress;
        super.onDraw(canvas);
        if (!this.mReady) {
            setup();
        }
        if (this.mReady) {
            if (this.mIsBackUseDrawable) {
                if (!this.mFadeBack || this.mCurrentBackDrawable == null || this.mNextBackDrawable == null) {
                    this.mBackDrawable.setAlpha(255);
                    this.mBackDrawable.draw(canvas);
                } else {
                    Drawable drawable = isChecked() ? this.mCurrentBackDrawable : this.mNextBackDrawable;
                    Drawable drawable2 = isChecked() ? this.mNextBackDrawable : this.mCurrentBackDrawable;
                    int progress2 = (int) (getProgress() * 255.0f);
                    drawable.setAlpha(progress2);
                    drawable.draw(canvas);
                    drawable2.setAlpha(255 - progress2);
                    drawable2.draw(canvas);
                }
            } else if (this.mFadeBack) {
                int i = isChecked() ? this.mCurrBackColor : this.mNextBackColor;
                int i2 = isChecked() ? this.mNextBackColor : this.mCurrBackColor;
                int progress3 = (int) (getProgress() * 255.0f);
                this.mPaint.setARGB((Color.alpha(i) * progress3) / 255, Color.red(i), Color.green(i), Color.blue(i));
                RectF rectF = this.mBackRectF;
                float f3 = this.mBackRadius;
                canvas.drawRoundRect(rectF, f3, f3, this.mPaint);
                this.mPaint.setARGB((Color.alpha(i2) * (255 - progress3)) / 255, Color.red(i2), Color.green(i2), Color.blue(i2));
                RectF rectF2 = this.mBackRectF;
                float f4 = this.mBackRadius;
                canvas.drawRoundRect(rectF2, f4, f4, this.mPaint);
                this.mPaint.setAlpha(255);
            } else {
                this.mPaint.setColor(this.mCurrBackColor);
                RectF rectF3 = this.mBackRectF;
                float f5 = this.mBackRadius;
                canvas.drawRoundRect(rectF3, f5, f5, this.mPaint);
            }
            Layout layout = ((double) getProgress()) > 0.5d ? this.mOnLayout : this.mOffLayout;
            RectF rectF4 = ((double) getProgress()) > 0.5d ? this.mTextOnRectF : this.mTextOffRectF;
            if (layout != null && rectF4 != null) {
                double progress4 = getProgress();
                float progress5 = getProgress();
                if (progress4 >= 0.75d) {
                    f2 = progress5 * 4.0f;
                    progress = 3.0f;
                } else if (progress5 < 0.25d) {
                    f2 = 1.0f;
                    progress = getProgress() * 4.0f;
                } else {
                    f = 0.0f;
                    int i3 = (int) (f * 255.0f);
                    int i4 = ((double) getProgress()) <= 0.5d ? this.mOnTextColor : this.mOffTextColor;
                    layout.getPaint().setARGB((Color.alpha(i4) * i3) / 255, Color.red(i4), Color.green(i4), Color.blue(i4));
                    canvas.save();
                    canvas.translate(rectF4.left, rectF4.top);
                    layout.draw(canvas);
                    canvas.restore();
                }
                f = f2 - progress;
                int i32 = (int) (f * 255.0f);
                if (((double) getProgress()) <= 0.5d) {
                }
                layout.getPaint().setARGB((Color.alpha(i4) * i32) / 255, Color.red(i4), Color.green(i4), Color.blue(i4));
                canvas.save();
                canvas.translate(rectF4.left, rectF4.top);
                layout.draw(canvas);
                canvas.restore();
            }
            this.mPresentThumbRectF.set(this.mThumbRectF);
            this.mPresentThumbRectF.offset(this.mProgress * this.mSafeRectF.width(), 0.0f);
            if (this.mIsThumbUseDrawable) {
                Drawable drawable3 = this.mThumbDrawable;
                RectF rectF5 = this.mPresentThumbRectF;
                drawable3.setBounds((int) rectF5.left, (int) rectF5.top, ceil(rectF5.right), ceil(this.mPresentThumbRectF.bottom));
                this.mThumbDrawable.draw(canvas);
            } else {
                this.mPaint.setColor(this.mCurrThumbColor);
                RectF rectF6 = this.mPresentThumbRectF;
                float f6 = this.mThumbRadius;
                canvas.drawRoundRect(rectF6, f6, f6, this.mPaint);
            }
            if (this.mDrawDebugRect) {
                this.mRectPaint.setColor(Color.parseColor("#AA0000"));
                canvas.drawRect(this.mBackRectF, this.mRectPaint);
                this.mRectPaint.setColor(Color.parseColor("#0000FF"));
                canvas.drawRect(this.mPresentThumbRectF, this.mRectPaint);
                this.mRectPaint.setColor(Color.parseColor("#000000"));
                RectF rectF7 = this.mSafeRectF;
                float f7 = rectF7.left;
                float f8 = this.mThumbRectF.top;
                canvas.drawLine(f7, f8, rectF7.right, f8, this.mRectPaint);
                this.mRectPaint.setColor(Color.parseColor("#00CC00"));
                canvas.drawRect(((double) getProgress()) > 0.5d ? this.mTextOnRectF : this.mTextOffRectF, this.mRectPaint);
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.mOnLayout == null && !TextUtils.isEmpty(this.mTextOn)) {
            this.mOnLayout = makeLayout(this.mTextOn);
        }
        if (this.mOffLayout == null && !TextUtils.isEmpty(this.mTextOff)) {
            this.mOffLayout = makeLayout(this.mTextOff);
        }
        float width = this.mOnLayout != null ? r0.getWidth() : 0.0f;
        float width2 = this.mOffLayout != null ? r2.getWidth() : 0.0f;
        if (width == 0.0f && width2 == 0.0f) {
            this.mTextWidth = 0.0f;
        } else {
            this.mTextWidth = Math.max(width, width2);
        }
        float height = this.mOnLayout != null ? r0.getHeight() : 0.0f;
        float height2 = this.mOffLayout != null ? r2.getHeight() : 0.0f;
        if (height == 0.0f && height2 == 0.0f) {
            this.mTextHeight = 0.0f;
        } else {
            this.mTextHeight = Math.max(height, height2);
        }
        setMeasuredDimension(measureWidth(i), measureHeight(i2));
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        setText(savedState.onText, savedState.offText);
        this.mRestoring = true;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mRestoring = false;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.onText = this.mTextOn;
        savedState.offText = this.mTextOff;
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        setup();
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0090  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || !isClickable() || !isFocusable() || !this.mReady) {
            return false;
        }
        int action = motionEvent.getAction();
        float x = motionEvent.getX() - this.mStartX;
        float y = motionEvent.getY() - this.mStartY;
        if (action == 0) {
            this.mStartX = motionEvent.getX();
            this.mStartY = motionEvent.getY();
            this.mLastX = this.mStartX;
            setPressed(true);
        } else if (action == 1) {
            this.mCatch = false;
            setPressed(false);
            float eventTime = motionEvent.getEventTime() - motionEvent.getDownTime();
            if (Math.abs(x) >= this.mTouchSlop || Math.abs(y) >= this.mTouchSlop || eventTime >= this.mClickTimeout) {
                boolean statusBasedOnPos = getStatusBasedOnPos();
                if (statusBasedOnPos != isChecked()) {
                    playSoundEffect(0);
                    setChecked(statusBasedOnPos);
                } else {
                    animateToState(statusBasedOnPos);
                }
            } else {
                performClick();
            }
        } else if (action == 2) {
            float x2 = motionEvent.getX();
            setProgress(getProgress() + ((x2 - this.mLastX) / this.mSafeRectF.width()));
            if (!this.mCatch && (Math.abs(x) > this.mTouchSlop / 2 || Math.abs(y) > this.mTouchSlop / 2)) {
                if (y == 0.0f || Math.abs(x) > Math.abs(y)) {
                    catchView();
                } else if (Math.abs(y) > Math.abs(x)) {
                    return false;
                }
            }
            this.mLastX = x2;
        } else if (action == 3) {
        }
        return true;
    }

    @Override // android.widget.CompoundButton, android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    public void setAnimationDuration(long j) {
        this.mAnimationDuration = j;
    }

    public void setBackColor(ColorStateList colorStateList) {
        this.mBackColor = colorStateList;
        if (colorStateList != null) {
            setBackDrawable(null);
        }
        invalidate();
    }

    public void setBackColorRes(int i) {
        setBackColor(ContextCompat.getColorStateList(getContext(), i));
    }

    public void setBackDrawable(Drawable drawable) {
        this.mBackDrawable = drawable;
        this.mIsBackUseDrawable = drawable != null;
        refreshDrawableState();
        this.mReady = false;
        requestLayout();
        invalidate();
    }

    public void setBackDrawableRes(int i) {
        setBackDrawable(ContextCompat.getDrawable(getContext(), i));
    }

    public void setBackRadius(float f) {
        this.mBackRadius = f;
        if (this.mIsBackUseDrawable) {
            return;
        }
        invalidate();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        if (isChecked() != z) {
            animateToState(z);
        }
        if (this.mRestoring) {
            setCheckedImmediatelyNoEvent(z);
        } else {
            super.setChecked(z);
        }
    }

    public void setCheckedImmediately(boolean z) {
        super.setChecked(z);
        ObjectAnimator objectAnimator = this.mProgressAnimator;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            this.mProgressAnimator.cancel();
        }
        setProgress(z ? 1.0f : 0.0f);
        invalidate();
    }

    public void setCheckedImmediatelyNoEvent(boolean z) {
        if (this.mChildOnCheckedChangeListener == null) {
            setCheckedImmediately(z);
            return;
        }
        super.setOnCheckedChangeListener(null);
        setCheckedImmediately(z);
        super.setOnCheckedChangeListener(this.mChildOnCheckedChangeListener);
    }

    public void setCheckedNoEvent(boolean z) {
        if (this.mChildOnCheckedChangeListener == null) {
            setChecked(z);
            return;
        }
        super.setOnCheckedChangeListener(null);
        setChecked(z);
        super.setOnCheckedChangeListener(this.mChildOnCheckedChangeListener);
    }

    public void setDrawDebugRect(boolean z) {
        this.mDrawDebugRect = z;
        invalidate();
    }

    public void setFadeBack(boolean z) {
        this.mFadeBack = z;
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        super.setOnCheckedChangeListener(onCheckedChangeListener);
        this.mChildOnCheckedChangeListener = onCheckedChangeListener;
    }

    public void setText(CharSequence charSequence, CharSequence charSequence2) {
        this.mTextOn = charSequence;
        this.mTextOff = charSequence2;
        this.mOnLayout = null;
        this.mOffLayout = null;
        this.mReady = false;
        requestLayout();
        invalidate();
    }

    public void setTextAdjust(int i) {
        this.mTextAdjust = i;
        this.mReady = false;
        requestLayout();
        invalidate();
    }

    public void setTextExtra(int i) {
        this.mTextExtra = i;
        this.mReady = false;
        requestLayout();
        invalidate();
    }

    public void setTextThumbInset(int i) {
        this.mTextThumbInset = i;
        this.mReady = false;
        requestLayout();
        invalidate();
    }

    public void setThumbColor(ColorStateList colorStateList) {
        this.mThumbColor = colorStateList;
        if (colorStateList != null) {
            setThumbDrawable(null);
        }
        invalidate();
    }

    public void setThumbColorRes(int i) {
        setThumbColor(ContextCompat.getColorStateList(getContext(), i));
    }

    public void setThumbDrawable(Drawable drawable) {
        this.mThumbDrawable = drawable;
        this.mIsThumbUseDrawable = drawable != null;
        refreshDrawableState();
        this.mReady = false;
        requestLayout();
        invalidate();
    }

    public void setThumbDrawableRes(int i) {
        setThumbDrawable(ContextCompat.getDrawable(getContext(), i));
    }

    public void setThumbMargin(RectF rectF) {
        if (rectF == null) {
            setThumbMargin(0.0f, 0.0f, 0.0f, 0.0f);
        } else {
            setThumbMargin(rectF.left, rectF.top, rectF.right, rectF.bottom);
        }
    }

    public void setThumbRadius(float f) {
        this.mThumbRadius = f;
        if (this.mIsThumbUseDrawable) {
            return;
        }
        invalidate();
    }

    public void setThumbRangeRatio(float f) {
        this.mThumbRangeRatio = f;
        this.mReady = false;
        requestLayout();
    }

    public void setThumbSize(int i, int i2) {
        this.mThumbWidth = i;
        this.mThumbHeight = i2;
        this.mReady = false;
        requestLayout();
    }

    public void setTintColor(int i) {
        this.mTintColor = i;
        this.mThumbColor = generateThumbColorWithTintColor(i);
        this.mBackColor = generateBackColorWithTintColor(this.mTintColor);
        this.mIsBackUseDrawable = false;
        this.mIsThumbUseDrawable = false;
        refreshDrawableState();
        invalidate();
    }

    public void toggleImmediately() {
        setCheckedImmediately(!isChecked());
    }

    public void toggleImmediatelyNoEvent() {
        if (this.mChildOnCheckedChangeListener == null) {
            toggleImmediately();
            return;
        }
        super.setOnCheckedChangeListener(null);
        toggleImmediately();
        super.setOnCheckedChangeListener(this.mChildOnCheckedChangeListener);
    }

    public void toggleNoEvent() {
        if (this.mChildOnCheckedChangeListener == null) {
            toggle();
            return;
        }
        super.setOnCheckedChangeListener(null);
        toggle();
        super.setOnCheckedChangeListener(this.mChildOnCheckedChangeListener);
    }

    public void setThumbMargin(float f, float f2, float f3, float f4) {
        this.mThumbMargin.set(f, f2, f3, f4);
        this.mReady = false;
        requestLayout();
    }

    public SwitchButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDrawDebugRect = false;
        this.mRestoring = false;
        this.mReady = false;
        this.mCatch = false;
        init(attributeSet);
    }

    public SwitchButton(Context context) {
        super(context);
        this.mDrawDebugRect = false;
        this.mRestoring = false;
        this.mReady = false;
        this.mCatch = false;
        init(null);
    }
}
