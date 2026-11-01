package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.flexbox.Cif;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FlexboxLayout extends ViewGroup implements FlexContainer {
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    private int mAlignContent;
    private int mAlignItems;

    @Nullable
    private Drawable mDividerDrawableHorizontal;

    @Nullable
    private Drawable mDividerDrawableVertical;
    private int mDividerHorizontalHeight;
    private int mDividerVerticalWidth;
    private int mFlexDirection;
    private List<com.google.android.flexbox.Cdo> mFlexLines;
    private Cif.C0055if mFlexLinesResult;
    private int mFlexWrap;
    private Cif mFlexboxHelper;
    private int mJustifyContent;
    private int mMaxLine;
    private SparseIntArray mOrderCache;
    private int[] mReorderedIndices;
    private int mShowDividerHorizontal;
    private int mShowDividerVertical;

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.flexbox.FlexboxLayout$do, reason: invalid class name */
    public @interface Cdo {
    }

    public FlexboxLayout(Context context) {
        this(context, null);
    }

    private boolean allFlexLinesAreDummyBefore(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (this.mFlexLines.get(i2).m12552new() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean allViewsAreGoneBefore(int i, int i2) {
        for (int i3 = 1; i3 <= i2; i3++) {
            View reorderedChildAt = getReorderedChildAt(i - i3);
            if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    private void drawDividersHorizontal(Canvas canvas, boolean z, boolean z2) {
        int paddingLeft = getPaddingLeft();
        int iMax = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.mFlexLines.size();
        for (int i = 0; i < size; i++) {
            com.google.android.flexbox.Cdo cdo = this.mFlexLines.get(i);
            for (int i2 = 0; i2 < cdo.f11135goto; i2++) {
                int i3 = cdo.f11139super + i2;
                View reorderedChildAt = getReorderedChildAt(i3);
                if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    if (hasDividerBeforeChildAtAlongMainAxis(i3, i2)) {
                        drawVerticalDivider(canvas, z ? reorderedChildAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : (reorderedChildAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.mDividerVerticalWidth, cdo.f11136if, cdo.f11132else);
                    }
                    if (i2 == cdo.f11135goto - 1 && (this.mShowDividerVertical & 4) > 0) {
                        drawVerticalDivider(canvas, z ? (reorderedChildAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.mDividerVerticalWidth : reorderedChildAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, cdo.f11136if, cdo.f11132else);
                    }
                }
            }
            if (hasDividerBeforeFlexLine(i)) {
                drawHorizontalDivider(canvas, paddingLeft, z2 ? cdo.f11138new : cdo.f11136if - this.mDividerHorizontalHeight, iMax);
            }
            if (hasEndDividerAfterFlexLine(i) && (this.mShowDividerHorizontal & 4) > 0) {
                drawHorizontalDivider(canvas, paddingLeft, z2 ? cdo.f11136if - this.mDividerHorizontalHeight : cdo.f11138new, iMax);
            }
        }
    }

    private void drawDividersVertical(Canvas canvas, boolean z, boolean z2) {
        int paddingTop = getPaddingTop();
        int iMax = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.mFlexLines.size();
        for (int i = 0; i < size; i++) {
            com.google.android.flexbox.Cdo cdo = this.mFlexLines.get(i);
            for (int i2 = 0; i2 < cdo.f11135goto; i2++) {
                int i3 = cdo.f11139super + i2;
                View reorderedChildAt = getReorderedChildAt(i3);
                if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    if (hasDividerBeforeChildAtAlongMainAxis(i3, i2)) {
                        drawHorizontalDivider(canvas, cdo.f11131do, z2 ? reorderedChildAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : (reorderedChildAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.mDividerHorizontalHeight, cdo.f11132else);
                    }
                    if (i2 == cdo.f11135goto - 1 && (this.mShowDividerHorizontal & 4) > 0) {
                        drawHorizontalDivider(canvas, cdo.f11131do, z2 ? (reorderedChildAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.mDividerHorizontalHeight : reorderedChildAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, cdo.f11132else);
                    }
                }
            }
            if (hasDividerBeforeFlexLine(i)) {
                drawVerticalDivider(canvas, z ? cdo.f11134for : cdo.f11131do - this.mDividerVerticalWidth, paddingTop, iMax);
            }
            if (hasEndDividerAfterFlexLine(i) && (this.mShowDividerVertical & 4) > 0) {
                drawVerticalDivider(canvas, z ? cdo.f11131do - this.mDividerVerticalWidth : cdo.f11134for, paddingTop, iMax);
            }
        }
    }

    private void drawHorizontalDivider(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.mDividerDrawableHorizontal;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, i3 + i, this.mDividerHorizontalHeight + i2);
        this.mDividerDrawableHorizontal.draw(canvas);
    }

    private void drawVerticalDivider(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.mDividerDrawableVertical;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, this.mDividerVerticalWidth + i, i3 + i2);
        this.mDividerDrawableVertical.draw(canvas);
    }

    private boolean hasDividerBeforeChildAtAlongMainAxis(int i, int i2) {
        return allViewsAreGoneBefore(i, i2) ? isMainAxisDirectionHorizontal() ? (this.mShowDividerVertical & 1) != 0 : (this.mShowDividerHorizontal & 1) != 0 : isMainAxisDirectionHorizontal() ? (this.mShowDividerVertical & 2) != 0 : (this.mShowDividerHorizontal & 2) != 0;
    }

    private boolean hasDividerBeforeFlexLine(int i) {
        if (i < 0 || i >= this.mFlexLines.size()) {
            return false;
        }
        return allFlexLinesAreDummyBefore(i) ? isMainAxisDirectionHorizontal() ? (this.mShowDividerHorizontal & 1) != 0 : (this.mShowDividerVertical & 1) != 0 : isMainAxisDirectionHorizontal() ? (this.mShowDividerHorizontal & 2) != 0 : (this.mShowDividerVertical & 2) != 0;
    }

    private boolean hasEndDividerAfterFlexLine(int i) {
        if (i < 0 || i >= this.mFlexLines.size()) {
            return false;
        }
        for (int i2 = i + 1; i2 < this.mFlexLines.size(); i2++) {
            if (this.mFlexLines.get(i2).m12552new() > 0) {
                return false;
            }
        }
        return isMainAxisDirectionHorizontal() ? (this.mShowDividerHorizontal & 4) != 0 : (this.mShowDividerVertical & 4) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void layoutHorizontal(boolean z, int i, int i2, int i3, int i4) {
        float measuredWidth;
        float f;
        float f2;
        int i5;
        int i6;
        int i7;
        float f3;
        int i8;
        LayoutParams layoutParams;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i9 = i3 - i;
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        int paddingTop = getPaddingTop();
        int size = this.mFlexLines.size();
        int i10 = 0;
        while (i10 < size) {
            com.google.android.flexbox.Cdo cdo = this.mFlexLines.get(i10);
            if (hasDividerBeforeFlexLine(i10)) {
                int i11 = this.mDividerHorizontalHeight;
                paddingBottom -= i11;
                paddingTop += i11;
            }
            int i12 = this.mJustifyContent;
            int i13 = 1;
            if (i12 == 0) {
                measuredWidth = paddingLeft;
                f = i9 - paddingRight;
            } else if (i12 == 1) {
                int i14 = cdo.f11142try;
                f = i14 - paddingLeft;
                measuredWidth = (i9 - i14) + paddingRight;
            } else if (i12 != 2) {
                if (i12 == 3) {
                    measuredWidth = paddingLeft;
                    f2 = (i9 - cdo.f11142try) / (cdo.m12552new() != 1 ? r10 - 1 : 1.0f);
                    f = i9 - paddingRight;
                } else if (i12 == 4) {
                    int iM12552new = cdo.m12552new();
                    f2 = iM12552new != 0 ? (i9 - cdo.f11142try) / iM12552new : 0.0f;
                    float f4 = f2 / 2.0f;
                    measuredWidth = paddingLeft + f4;
                    f = (i9 - paddingRight) - f4;
                } else {
                    if (i12 != 5) {
                        throw new IllegalStateException("Invalid justifyContent is set: " + this.mJustifyContent);
                    }
                    f2 = cdo.m12552new() != 0 ? (i9 - cdo.f11142try) / (r7 + 1) : 0.0f;
                    measuredWidth = paddingLeft + f2;
                    f = (i9 - paddingRight) - f2;
                }
                float fMax = Math.max(f2, 0.0f);
                i5 = 0;
                while (i5 < cdo.f11135goto) {
                    int i15 = cdo.f11139super + i5;
                    View reorderedChildAt = getReorderedChildAt(i15);
                    if (reorderedChildAt == null || reorderedChildAt.getVisibility() == 8) {
                        i6 = paddingLeft;
                        i7 = i5;
                    } else {
                        LayoutParams layoutParams2 = (LayoutParams) reorderedChildAt.getLayoutParams();
                        float f5 = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin;
                        float f6 = f - ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                        if (hasDividerBeforeChildAtAlongMainAxis(i15, i5)) {
                            int i16 = this.mDividerVerticalWidth;
                            float f7 = i16;
                            f5 += f7;
                            i8 = i16;
                            f3 = f6 - f7;
                        } else {
                            f3 = f6;
                            i8 = 0;
                        }
                        int i17 = (i5 != cdo.f11135goto - i13 || (this.mShowDividerVertical & 4) <= 0) ? 0 : this.mDividerVerticalWidth;
                        if (this.mFlexWrap != 2) {
                            i6 = paddingLeft;
                            i7 = i5;
                            layoutParams = layoutParams2;
                            if (z) {
                                this.mFlexboxHelper.d(reorderedChildAt, cdo, Math.round(f3) - reorderedChildAt.getMeasuredWidth(), paddingTop, Math.round(f3), paddingTop + reorderedChildAt.getMeasuredHeight());
                            } else {
                                this.mFlexboxHelper.d(reorderedChildAt, cdo, Math.round(f5), paddingTop, Math.round(f5) + reorderedChildAt.getMeasuredWidth(), paddingTop + reorderedChildAt.getMeasuredHeight());
                            }
                        } else if (z) {
                            i7 = i5;
                            i6 = paddingLeft;
                            layoutParams = layoutParams2;
                            this.mFlexboxHelper.d(reorderedChildAt, cdo, Math.round(f3) - reorderedChildAt.getMeasuredWidth(), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f3), paddingBottom);
                        } else {
                            i6 = paddingLeft;
                            i7 = i5;
                            layoutParams = layoutParams2;
                            this.mFlexboxHelper.d(reorderedChildAt, cdo, Math.round(f5), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f5) + reorderedChildAt.getMeasuredWidth(), paddingBottom);
                        }
                        measuredWidth = f5 + reorderedChildAt.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        float measuredWidth2 = f3 - ((reorderedChildAt.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
                        if (z) {
                            cdo.m12550goto(reorderedChildAt, i17, 0, i8, 0);
                        } else {
                            cdo.m12550goto(reorderedChildAt, i8, 0, i17, 0);
                        }
                        f = measuredWidth2;
                    }
                    i5 = i7 + 1;
                    paddingLeft = i6;
                    i13 = 1;
                }
                int i18 = paddingLeft;
                int i19 = cdo.f11132else;
                paddingTop += i19;
                paddingBottom -= i19;
                i10++;
                paddingLeft = i18;
            } else {
                int i20 = cdo.f11142try;
                measuredWidth = paddingLeft + ((i9 - i20) / 2.0f);
                f = (i9 - paddingRight) - ((i9 - i20) / 2.0f);
            }
            f2 = 0.0f;
            float fMax2 = Math.max(f2, 0.0f);
            i5 = 0;
            while (i5 < cdo.f11135goto) {
            }
            int i182 = paddingLeft;
            int i192 = cdo.f11132else;
            paddingTop += i192;
            paddingBottom -= i192;
            i10++;
            paddingLeft = i182;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void layoutVertical(boolean z, boolean z2, int i, int i2, int i3, int i4) {
        float f;
        int i5;
        float f2;
        float f3;
        int i6;
        int i7;
        float f4;
        float f5;
        int i8;
        LayoutParams layoutParams;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int i9 = i4 - i2;
        int i10 = (i3 - i) - paddingRight;
        int size = this.mFlexLines.size();
        for (int i11 = 0; i11 < size; i11++) {
            com.google.android.flexbox.Cdo cdo = this.mFlexLines.get(i11);
            if (hasDividerBeforeFlexLine(i11)) {
                int i12 = this.mDividerVerticalWidth;
                paddingLeft += i12;
                i10 -= i12;
            }
            int i13 = this.mJustifyContent;
            if (i13 == 0) {
                f = paddingTop;
                i5 = i9 - paddingBottom;
            } else if (i13 == 1) {
                int i14 = cdo.f11142try;
                f = (i9 - i14) + paddingBottom;
                i5 = i14 - paddingTop;
            } else if (i13 != 2) {
                if (i13 == 3) {
                    f = paddingTop;
                    f3 = (i9 - cdo.f11142try) / (cdo.m12552new() != 1 ? r7 - 1 : 1.0f);
                    f2 = i9 - paddingBottom;
                } else if (i13 == 4) {
                    int iM12552new = cdo.m12552new();
                    f3 = iM12552new != 0 ? (i9 - cdo.f11142try) / iM12552new : 0.0f;
                    float f6 = f3 / 2.0f;
                    f = paddingTop + f6;
                    f2 = (i9 - paddingBottom) - f6;
                } else {
                    if (i13 != 5) {
                        throw new IllegalStateException("Invalid justifyContent is set: " + this.mJustifyContent);
                    }
                    f3 = cdo.m12552new() != 0 ? (i9 - cdo.f11142try) / (r10 + 1) : 0.0f;
                    f = paddingTop + f3;
                    f2 = (i9 - paddingBottom) - f3;
                }
                float fMax = Math.max(f3, 0.0f);
                i6 = 0;
                while (i6 < cdo.f11135goto) {
                    int i15 = cdo.f11139super + i6;
                    View reorderedChildAt = getReorderedChildAt(i15);
                    if (reorderedChildAt == null || reorderedChildAt.getVisibility() == 8) {
                        i7 = i6;
                    } else {
                        LayoutParams layoutParams2 = (LayoutParams) reorderedChildAt.getLayoutParams();
                        float f7 = f + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin;
                        float f8 = f2 - ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                        if (hasDividerBeforeChildAtAlongMainAxis(i15, i6)) {
                            int i16 = this.mDividerHorizontalHeight;
                            float f9 = i16;
                            f4 = f7 + f9;
                            i8 = i16;
                            f5 = f8 - f9;
                        } else {
                            f4 = f7;
                            f5 = f8;
                            i8 = 0;
                        }
                        int i17 = (i6 != cdo.f11135goto - 1 || (this.mShowDividerHorizontal & 4) <= 0) ? 0 : this.mDividerHorizontalHeight;
                        if (!z) {
                            i7 = i6;
                            layoutParams = layoutParams2;
                            if (z2) {
                                this.mFlexboxHelper.e(reorderedChildAt, cdo, false, paddingLeft, Math.round(f5) - reorderedChildAt.getMeasuredHeight(), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f5));
                            } else {
                                this.mFlexboxHelper.e(reorderedChildAt, cdo, false, paddingLeft, Math.round(f4), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f4) + reorderedChildAt.getMeasuredHeight());
                            }
                        } else if (z2) {
                            i7 = i6;
                            layoutParams = layoutParams2;
                            this.mFlexboxHelper.e(reorderedChildAt, cdo, true, i10 - reorderedChildAt.getMeasuredWidth(), Math.round(f5) - reorderedChildAt.getMeasuredHeight(), i10, Math.round(f5));
                        } else {
                            i7 = i6;
                            layoutParams = layoutParams2;
                            this.mFlexboxHelper.e(reorderedChildAt, cdo, true, i10 - reorderedChildAt.getMeasuredWidth(), Math.round(f4), i10, Math.round(f4) + reorderedChildAt.getMeasuredHeight());
                        }
                        LayoutParams layoutParams3 = layoutParams;
                        float measuredHeight = f4 + reorderedChildAt.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin;
                        float measuredHeight2 = f5 - ((reorderedChildAt.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin);
                        if (z2) {
                            cdo.m12550goto(reorderedChildAt, 0, i17, 0, i8);
                        } else {
                            cdo.m12550goto(reorderedChildAt, 0, i8, 0, i17);
                        }
                        f = measuredHeight;
                        f2 = measuredHeight2;
                    }
                    i6 = i7 + 1;
                }
                int i18 = cdo.f11132else;
                paddingLeft += i18;
                i10 -= i18;
            } else {
                int i19 = cdo.f11142try;
                f2 = (i9 - paddingBottom) - ((i9 - i19) / 2.0f);
                f = paddingTop + ((i9 - i19) / 2.0f);
                f3 = 0.0f;
                float fMax2 = Math.max(f3, 0.0f);
                i6 = 0;
                while (i6 < cdo.f11135goto) {
                }
                int i182 = cdo.f11132else;
                paddingLeft += i182;
                i10 -= i182;
            }
            f2 = i5;
            f3 = 0.0f;
            float fMax22 = Math.max(f3, 0.0f);
            i6 = 0;
            while (i6 < cdo.f11135goto) {
            }
            int i1822 = cdo.f11132else;
            paddingLeft += i1822;
            i10 -= i1822;
        }
    }

    private void measureHorizontal(int i, int i2) {
        this.mFlexLines.clear();
        this.mFlexLinesResult.m12594do();
        this.mFlexboxHelper.m12581for(this.mFlexLinesResult, i, i2);
        this.mFlexLines = this.mFlexLinesResult.f11154do;
        this.mFlexboxHelper.m12589throw(i, i2);
        if (this.mAlignItems == 3) {
            for (com.google.android.flexbox.Cdo cdo : this.mFlexLines) {
                int iMax = Integer.MIN_VALUE;
                for (int i3 = 0; i3 < cdo.f11135goto; i3++) {
                    View reorderedChildAt = getReorderedChildAt(cdo.f11139super + i3);
                    if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                        LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                        iMax = this.mFlexWrap != 2 ? Math.max(iMax, reorderedChildAt.getMeasuredHeight() + Math.max(cdo.f11129class - reorderedChildAt.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) : Math.max(iMax, reorderedChildAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + Math.max((cdo.f11129class - reorderedChildAt.getMeasuredHeight()) + reorderedChildAt.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
                    }
                }
                cdo.f11132else = iMax;
            }
        }
        this.mFlexboxHelper.m12588super(i, i2, getPaddingTop() + getPaddingBottom());
        this.mFlexboxHelper.k();
        setMeasuredDimensionForFlex(this.mFlexDirection, i, i2, this.mFlexLinesResult.f11155if);
    }

    private void measureVertical(int i, int i2) {
        this.mFlexLines.clear();
        this.mFlexLinesResult.m12594do();
        this.mFlexboxHelper.m12576case(this.mFlexLinesResult, i, i2);
        this.mFlexLines = this.mFlexLinesResult.f11154do;
        this.mFlexboxHelper.m12589throw(i, i2);
        this.mFlexboxHelper.m12588super(i, i2, getPaddingLeft() + getPaddingRight());
        this.mFlexboxHelper.k();
        setMeasuredDimensionForFlex(this.mFlexDirection, i, i2, this.mFlexLinesResult.f11155if);
    }

    private void setMeasuredDimensionForFlex(int i, int i2, int i3, int i4) {
        int sumOfCrossSize;
        int largestMainSize;
        int iResolveSizeAndState;
        int iResolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (i == 0 || i == 1) {
            sumOfCrossSize = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
            largestMainSize = getLargestMainSize();
        } else {
            if (i != 2 && i != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + i);
            }
            sumOfCrossSize = getLargestMainSize();
            largestMainSize = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i4 = View.combineMeasuredStates(i4, 16777216);
            } else {
                size = largestMainSize;
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
        } else if (mode == 0) {
            iResolveSizeAndState = View.resolveSizeAndState(largestMainSize, i2, i4);
        } else {
            if (mode != 1073741824) {
                throw new IllegalStateException("Unknown width mode is set: " + mode);
            }
            if (size < largestMainSize) {
                i4 = View.combineMeasuredStates(i4, 16777216);
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < sumOfCrossSize) {
                i4 = View.combineMeasuredStates(i4, 256);
            } else {
                size2 = sumOfCrossSize;
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i3, i4);
        } else if (mode2 == 0) {
            iResolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, i3, i4);
        } else {
            if (mode2 != 1073741824) {
                throw new IllegalStateException("Unknown height mode is set: " + mode2);
            }
            if (size2 < sumOfCrossSize) {
                i4 = View.combineMeasuredStates(i4, 256);
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i3, i4);
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    private void setWillNotDrawFlag() {
        if (this.mDividerDrawableHorizontal == null && this.mDividerDrawableVertical == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.mOrderCache == null) {
            this.mOrderCache = new SparseIntArray(getChildCount());
        }
        this.mReorderedIndices = this.mFlexboxHelper.m12580final(view, i, layoutParams, this.mOrderCache);
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getAlignContent() {
        return this.mAlignContent;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getAlignItems() {
        return this.mAlignItems;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getChildHeightMeasureSpec(int i, int i2, int i3) {
        return ViewGroup.getChildMeasureSpec(i, i2, i3);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getChildWidthMeasureSpec(int i, int i2, int i3) {
        return ViewGroup.getChildMeasureSpec(i, i2, i3);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getDecorationLengthCrossAxis(View view) {
        return 0;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getDecorationLengthMainAxis(View view, int i, int i2) {
        int i3;
        int i4;
        if (isMainAxisDirectionHorizontal()) {
            i3 = hasDividerBeforeChildAtAlongMainAxis(i, i2) ? 0 + this.mDividerVerticalWidth : 0;
            if ((this.mShowDividerVertical & 4) <= 0) {
                return i3;
            }
            i4 = this.mDividerVerticalWidth;
        } else {
            i3 = hasDividerBeforeChildAtAlongMainAxis(i, i2) ? 0 + this.mDividerHorizontalHeight : 0;
            if ((this.mShowDividerHorizontal & 4) <= 0) {
                return i3;
            }
            i4 = this.mDividerHorizontalHeight;
        }
        return i3 + i4;
    }

    @Nullable
    public Drawable getDividerDrawableHorizontal() {
        return this.mDividerDrawableHorizontal;
    }

    @Nullable
    public Drawable getDividerDrawableVertical() {
        return this.mDividerDrawableVertical;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getFlexDirection() {
        return this.mFlexDirection;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public View getFlexItemAt(int i) {
        return getChildAt(i);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getFlexItemCount() {
        return getChildCount();
    }

    @Override // com.google.android.flexbox.FlexContainer
    public List<com.google.android.flexbox.Cdo> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.mFlexLines.size());
        for (com.google.android.flexbox.Cdo cdo : this.mFlexLines) {
            if (cdo.m12552new() != 0) {
                arrayList.add(cdo);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public List<com.google.android.flexbox.Cdo> getFlexLinesInternal() {
        return this.mFlexLines;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getFlexWrap() {
        return this.mFlexWrap;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getJustifyContent() {
        return this.mJustifyContent;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getLargestMainSize() {
        Iterator<com.google.android.flexbox.Cdo> it = this.mFlexLines.iterator();
        int iMax = Integer.MIN_VALUE;
        while (it.hasNext()) {
            iMax = Math.max(iMax, it.next().f11142try);
        }
        return iMax;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getMaxLine() {
        return this.mMaxLine;
    }

    public View getReorderedChildAt(int i) {
        if (i < 0) {
            return null;
        }
        int[] iArr = this.mReorderedIndices;
        if (i >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[i]);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public View getReorderedFlexItemAt(int i) {
        return getReorderedChildAt(i);
    }

    public int getShowDividerHorizontal() {
        return this.mShowDividerHorizontal;
    }

    public int getShowDividerVertical() {
        return this.mShowDividerVertical;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getSumOfCrossSize() {
        int size = this.mFlexLines.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            com.google.android.flexbox.Cdo cdo = this.mFlexLines.get(i2);
            if (hasDividerBeforeFlexLine(i2)) {
                i += isMainAxisDirectionHorizontal() ? this.mDividerHorizontalHeight : this.mDividerVerticalWidth;
            }
            if (hasEndDividerAfterFlexLine(i2)) {
                i += isMainAxisDirectionHorizontal() ? this.mDividerHorizontalHeight : this.mDividerVerticalWidth;
            }
            i += cdo.f11132else;
        }
        return i;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public boolean isMainAxisDirectionHorizontal() {
        int i = this.mFlexDirection;
        return i == 0 || i == 1;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mDividerDrawableVertical == null && this.mDividerDrawableHorizontal == null) {
            return;
        }
        if (this.mShowDividerHorizontal == 0 && this.mShowDividerVertical == 0) {
            return;
        }
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i = this.mFlexDirection;
        if (i == 0) {
            drawDividersHorizontal(canvas, layoutDirection == 1, this.mFlexWrap == 2);
            return;
        }
        if (i == 1) {
            drawDividersHorizontal(canvas, layoutDirection != 1, this.mFlexWrap == 2);
            return;
        }
        if (i == 2) {
            boolean z = layoutDirection == 1;
            if (this.mFlexWrap == 2) {
                z = !z;
            }
            drawDividersVertical(canvas, z, false);
            return;
        }
        if (i != 3) {
            return;
        }
        boolean z2 = layoutDirection == 1;
        if (this.mFlexWrap == 2) {
            z2 = !z2;
        }
        drawDividersVertical(canvas, z2, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i5 = this.mFlexDirection;
        if (i5 == 0) {
            layoutHorizontal(layoutDirection == 1, i, i2, i3, i4);
            return;
        }
        if (i5 == 1) {
            layoutHorizontal(layoutDirection != 1, i, i2, i3, i4);
            return;
        }
        if (i5 == 2) {
            z2 = layoutDirection == 1;
            layoutVertical(this.mFlexWrap == 2 ? !z2 : z2, false, i, i2, i3, i4);
        } else if (i5 == 3) {
            z2 = layoutDirection == 1;
            layoutVertical(this.mFlexWrap == 2 ? !z2 : z2, true, i, i2, i3, i4);
        } else {
            throw new IllegalStateException("Invalid flex direction is set: " + this.mFlexDirection);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.mOrderCache == null) {
            this.mOrderCache = new SparseIntArray(getChildCount());
        }
        if (this.mFlexboxHelper.b(this.mOrderCache)) {
            this.mReorderedIndices = this.mFlexboxHelper.m12577const(this.mOrderCache);
        }
        int i3 = this.mFlexDirection;
        if (i3 == 0 || i3 == 1) {
            measureHorizontal(i, i2);
            return;
        }
        if (i3 == 2 || i3 == 3) {
            measureVertical(i, i2);
            return;
        }
        throw new IllegalStateException("Invalid value for the flex direction is set: " + this.mFlexDirection);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void onNewFlexItemAdded(View view, int i, int i2, com.google.android.flexbox.Cdo cdo) {
        if (hasDividerBeforeChildAtAlongMainAxis(i, i2)) {
            if (isMainAxisDirectionHorizontal()) {
                int i3 = cdo.f11142try;
                int i4 = this.mDividerVerticalWidth;
                cdo.f11142try = i3 + i4;
                cdo.f11127case += i4;
                return;
            }
            int i5 = cdo.f11142try;
            int i6 = this.mDividerHorizontalHeight;
            cdo.f11142try = i5 + i6;
            cdo.f11127case += i6;
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void onNewFlexLineAdded(com.google.android.flexbox.Cdo cdo) {
        if (isMainAxisDirectionHorizontal()) {
            if ((this.mShowDividerVertical & 4) > 0) {
                int i = cdo.f11142try;
                int i2 = this.mDividerVerticalWidth;
                cdo.f11142try = i + i2;
                cdo.f11127case += i2;
                return;
            }
            return;
        }
        if ((this.mShowDividerHorizontal & 4) > 0) {
            int i3 = cdo.f11142try;
            int i4 = this.mDividerHorizontalHeight;
            cdo.f11142try = i3 + i4;
            cdo.f11127case += i4;
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setAlignContent(int i) {
        if (this.mAlignContent != i) {
            this.mAlignContent = i;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setAlignItems(int i) {
        if (this.mAlignItems != i) {
            this.mAlignItems = i;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(@Nullable Drawable drawable) {
        if (drawable == this.mDividerDrawableHorizontal) {
            return;
        }
        this.mDividerDrawableHorizontal = drawable;
        if (drawable != null) {
            this.mDividerHorizontalHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerHorizontalHeight = 0;
        }
        setWillNotDrawFlag();
        requestLayout();
    }

    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        if (drawable == this.mDividerDrawableVertical) {
            return;
        }
        this.mDividerDrawableVertical = drawable;
        if (drawable != null) {
            this.mDividerVerticalWidth = drawable.getIntrinsicWidth();
        } else {
            this.mDividerVerticalWidth = 0;
        }
        setWillNotDrawFlag();
        requestLayout();
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setFlexDirection(int i) {
        if (this.mFlexDirection != i) {
            this.mFlexDirection = i;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setFlexLines(List<com.google.android.flexbox.Cdo> list) {
        this.mFlexLines = list;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setFlexWrap(int i) {
        if (this.mFlexWrap != i) {
            this.mFlexWrap = i;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setJustifyContent(int i) {
        if (this.mJustifyContent != i) {
            this.mJustifyContent = i;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setMaxLine(int i) {
        if (this.mMaxLine != i) {
            this.mMaxLine = i;
            requestLayout();
        }
    }

    public void setShowDivider(int i) {
        setShowDividerVertical(i);
        setShowDividerHorizontal(i);
    }

    public void setShowDividerHorizontal(int i) {
        if (i != this.mShowDividerHorizontal) {
            this.mShowDividerHorizontal = i;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i) {
        if (i != this.mShowDividerVertical) {
            this.mShowDividerVertical = i;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void updateViewCache(int i, View view) {
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMaxLine = -1;
        this.mFlexboxHelper = new Cif(this);
        this.mFlexLines = new ArrayList();
        this.mFlexLinesResult = new Cif.C0055if();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FlexboxLayout, i, 0);
        this.mFlexDirection = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_flexDirection, 0);
        this.mFlexWrap = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_flexWrap, 0);
        this.mJustifyContent = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_justifyContent, 0);
        this.mAlignItems = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_alignItems, 0);
        this.mAlignContent = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_alignContent, 0);
        this.mMaxLine = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_maxLine, -1);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.FlexboxLayout_dividerDrawable);
        if (drawable != null) {
            setDividerDrawableHorizontal(drawable);
            setDividerDrawableVertical(drawable);
        }
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.FlexboxLayout_dividerDrawableHorizontal);
        if (drawable2 != null) {
            setDividerDrawableHorizontal(drawable2);
        }
        Drawable drawable3 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.FlexboxLayout_dividerDrawableVertical);
        if (drawable3 != null) {
            setDividerDrawableVertical(drawable3);
        }
        int i2 = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_showDivider, 0);
        if (i2 != 0) {
            this.mShowDividerVertical = i2;
            this.mShowDividerHorizontal = i2;
        }
        int i3 = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_showDividerVertical, 0);
        if (i3 != 0) {
            this.mShowDividerVertical = i3;
        }
        int i4 = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_showDividerHorizontal, 0);
        if (i4 != 0) {
            this.mShowDividerHorizontal = i4;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new Cdo();

        /* renamed from: break, reason: not valid java name */
        private boolean f11052break;

        /* renamed from: case, reason: not valid java name */
        private int f11053case;

        /* renamed from: do, reason: not valid java name */
        private int f11054do;

        /* renamed from: else, reason: not valid java name */
        private int f11055else;

        /* renamed from: for, reason: not valid java name */
        private float f11056for;

        /* renamed from: goto, reason: not valid java name */
        private int f11057goto;

        /* renamed from: if, reason: not valid java name */
        private float f11058if;

        /* renamed from: new, reason: not valid java name */
        private int f11059new;

        /* renamed from: this, reason: not valid java name */
        private int f11060this;

        /* renamed from: try, reason: not valid java name */
        private float f11061try;

        /* renamed from: com.google.android.flexbox.FlexboxLayout$LayoutParams$do, reason: invalid class name */
        public static class Cdo implements Parcelable.Creator<LayoutParams> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public LayoutParams[] newArray(int i) {
                return new LayoutParams[i];
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f11054do = 1;
            this.f11058if = 0.0f;
            this.f11056for = 1.0f;
            this.f11059new = -1;
            this.f11061try = -1.0f;
            this.f11053case = -1;
            this.f11055else = -1;
            this.f11057goto = 16777215;
            this.f11060this = 16777215;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FlexboxLayout_Layout);
            this.f11054do = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_Layout_layout_order, 1);
            this.f11058if = typedArrayObtainStyledAttributes.getFloat(R.styleable.FlexboxLayout_Layout_layout_flexGrow, 0.0f);
            this.f11056for = typedArrayObtainStyledAttributes.getFloat(R.styleable.FlexboxLayout_Layout_layout_flexShrink, 1.0f);
            this.f11059new = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_Layout_layout_alignSelf, -1);
            this.f11061try = typedArrayObtainStyledAttributes.getFraction(R.styleable.FlexboxLayout_Layout_layout_flexBasisPercent, 1, 1, -1.0f);
            this.f11053case = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_minWidth, -1);
            this.f11055else = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_minHeight, -1);
            this.f11057goto = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_maxWidth, 16777215);
            this.f11060this = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_maxHeight, 16777215);
            this.f11052break = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FlexboxLayout_Layout_layout_wrapBefore, false);
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getAlignSelf() {
            return this.f11059new;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexBasisPercent() {
            return this.f11061try;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexGrow() {
            return this.f11058if;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexShrink() {
            return this.f11056for;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginBottom() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginLeft() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginRight() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginTop() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxHeight() {
            return this.f11060this;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxWidth() {
            return this.f11057goto;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinHeight() {
            return this.f11055else;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinWidth() {
            return this.f11053case;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getOrder() {
            return this.f11054do;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.google.android.flexbox.FlexItem
        public boolean isWrapBefore() {
            return this.f11052break;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setAlignSelf(int i) {
            this.f11059new = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexBasisPercent(float f) {
            this.f11061try = f;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexGrow(float f) {
            this.f11058if = f;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexShrink(float f) {
            this.f11056for = f;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setHeight(int i) {
            ((ViewGroup.MarginLayoutParams) this).height = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMaxHeight(int i) {
            this.f11060this = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMaxWidth(int i) {
            this.f11057goto = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinHeight(int i) {
            this.f11055else = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinWidth(int i) {
            this.f11053case = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setOrder(int i) {
            this.f11054do = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setWidth(int i) {
            ((ViewGroup.MarginLayoutParams) this).width = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setWrapBefore(boolean z) {
            this.f11052break = z;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f11054do);
            parcel.writeFloat(this.f11058if);
            parcel.writeFloat(this.f11056for);
            parcel.writeInt(this.f11059new);
            parcel.writeFloat(this.f11061try);
            parcel.writeInt(this.f11053case);
            parcel.writeInt(this.f11055else);
            parcel.writeInt(this.f11057goto);
            parcel.writeInt(this.f11060this);
            parcel.writeByte(this.f11052break ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f11054do = 1;
            this.f11058if = 0.0f;
            this.f11056for = 1.0f;
            this.f11059new = -1;
            this.f11061try = -1.0f;
            this.f11053case = -1;
            this.f11055else = -1;
            this.f11057goto = 16777215;
            this.f11060this = 16777215;
            this.f11054do = layoutParams.f11054do;
            this.f11058if = layoutParams.f11058if;
            this.f11056for = layoutParams.f11056for;
            this.f11059new = layoutParams.f11059new;
            this.f11061try = layoutParams.f11061try;
            this.f11053case = layoutParams.f11053case;
            this.f11055else = layoutParams.f11055else;
            this.f11057goto = layoutParams.f11057goto;
            this.f11060this = layoutParams.f11060this;
            this.f11052break = layoutParams.f11052break;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f11054do = 1;
            this.f11058if = 0.0f;
            this.f11056for = 1.0f;
            this.f11059new = -1;
            this.f11061try = -1.0f;
            this.f11053case = -1;
            this.f11055else = -1;
            this.f11057goto = 16777215;
            this.f11060this = 16777215;
        }

        public LayoutParams(int i, int i2) {
            super(new ViewGroup.LayoutParams(i, i2));
            this.f11054do = 1;
            this.f11058if = 0.0f;
            this.f11056for = 1.0f;
            this.f11059new = -1;
            this.f11061try = -1.0f;
            this.f11053case = -1;
            this.f11055else = -1;
            this.f11057goto = 16777215;
            this.f11060this = 16777215;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f11054do = 1;
            this.f11058if = 0.0f;
            this.f11056for = 1.0f;
            this.f11059new = -1;
            this.f11061try = -1.0f;
            this.f11053case = -1;
            this.f11055else = -1;
            this.f11057goto = 16777215;
            this.f11060this = 16777215;
        }

        public LayoutParams(Parcel parcel) {
            super(0, 0);
            this.f11054do = 1;
            this.f11058if = 0.0f;
            this.f11056for = 1.0f;
            this.f11059new = -1;
            this.f11061try = -1.0f;
            this.f11053case = -1;
            this.f11055else = -1;
            this.f11057goto = 16777215;
            this.f11060this = 16777215;
            this.f11054do = parcel.readInt();
            this.f11058if = parcel.readFloat();
            this.f11056for = parcel.readFloat();
            this.f11059new = parcel.readInt();
            this.f11061try = parcel.readFloat();
            this.f11053case = parcel.readInt();
            this.f11055else = parcel.readInt();
            this.f11057goto = parcel.readInt();
            this.f11060this = parcel.readInt();
            this.f11052break = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }
    }
}
