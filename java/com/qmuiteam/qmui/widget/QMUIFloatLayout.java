package com.qmuiteam.qmui.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.qmuiteam.qmui.R;

/* loaded from: classes2.dex */
public class QMUIFloatLayout extends ViewGroup {

    /* renamed from: catch, reason: not valid java name */
    private static final int f19413catch = 0;

    /* renamed from: class, reason: not valid java name */
    private static final int f19414class = 1;

    /* renamed from: break, reason: not valid java name */
    private int f19415break;

    /* renamed from: case, reason: not valid java name */
    private int f19416case;

    /* renamed from: do, reason: not valid java name */
    private int f19417do;

    /* renamed from: else, reason: not valid java name */
    private OnLineCountChangeListener f19418else;

    /* renamed from: for, reason: not valid java name */
    private int f19419for;

    /* renamed from: goto, reason: not valid java name */
    private int[] f19420goto;

    /* renamed from: if, reason: not valid java name */
    private int f19421if;

    /* renamed from: new, reason: not valid java name */
    private int f19422new;

    /* renamed from: this, reason: not valid java name */
    private int[] f19423this;

    /* renamed from: try, reason: not valid java name */
    private int f19424try;

    public interface OnLineCountChangeListener {
        void onChange(int i, int i2);
    }

    public QMUIFloatLayout(Context context) {
        this(context, null);
    }

    /* renamed from: do, reason: not valid java name */
    private void m23753do(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUIFloatLayout);
        this.f19417do = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIFloatLayout_qmui_childHorizontalSpacing, 0);
        this.f19421if = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIFloatLayout_qmui_childVerticalSpacing, 0);
        this.f19419for = typedArrayObtainStyledAttributes.getInteger(R.styleable.QMUIFloatLayout_android_gravity, 3);
        int i = typedArrayObtainStyledAttributes.getInt(R.styleable.QMUIFloatLayout_android_maxLines, -1);
        if (i >= 0) {
            setMaxLines(i);
        }
        int i2 = typedArrayObtainStyledAttributes.getInt(R.styleable.QMUIFloatLayout_qmui_maxNumber, -1);
        if (i2 >= 0) {
            setMaxNumber(i2);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* renamed from: for, reason: not valid java name */
    private void m23754for(int i) {
        int paddingRight = i - getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        int i2 = 0;
        int iMax = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                if (i2 < this.f19415break) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (paddingLeft + measuredWidth > paddingRight) {
                        paddingLeft = getPaddingLeft();
                        paddingTop += iMax + this.f19421if;
                        iMax = 0;
                    }
                    childAt.layout(paddingLeft, paddingTop, paddingLeft + measuredWidth, paddingTop + measuredHeight);
                    paddingLeft += measuredWidth + this.f19417do;
                    iMax = Math.max(iMax, measuredHeight);
                    i2++;
                } else {
                    childAt.layout(0, 0, 0, 0);
                }
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m23755if(int i) {
        int paddingTop = getPaddingTop();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = this.f19420goto;
            if (i2 >= iArr.length || iArr[i2] == 0) {
                break;
            }
            int paddingLeft = ((((i - getPaddingLeft()) - getPaddingRight()) - this.f19423this[i2]) / 2) + getPaddingLeft();
            int i5 = 0;
            int iMax = 0;
            while (i5 < this.f19420goto[i2]) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 8) {
                    i3++;
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    childAt.layout(paddingLeft, paddingTop, paddingLeft + measuredWidth, paddingTop + measuredHeight);
                    iMax = Math.max(iMax, measuredHeight);
                    paddingLeft += measuredWidth + this.f19417do;
                    i4++;
                    i5++;
                    i3++;
                    if (i4 == this.f19415break) {
                        break;
                    }
                }
            }
            if (i4 == this.f19415break) {
                break;
            }
            paddingTop += iMax + this.f19421if;
            i2++;
        }
        int childCount = getChildCount();
        while (i3 < childCount) {
            View childAt2 = getChildAt(i3);
            if (childAt2.getVisibility() != 8) {
                childAt2.layout(0, 0, 0, 0);
            }
            i3++;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m23756new(int i) {
        int paddingTop = getPaddingTop();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = this.f19420goto;
            if (i2 >= iArr.length || iArr[i2] == 0) {
                break;
            }
            int paddingRight = (i - getPaddingRight()) - this.f19423this[i2];
            int i5 = 0;
            int iMax = 0;
            while (i5 < this.f19420goto[i2]) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 8) {
                    i3++;
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    childAt.layout(paddingRight, paddingTop, paddingRight + measuredWidth, paddingTop + measuredHeight);
                    iMax = Math.max(iMax, measuredHeight);
                    paddingRight += measuredWidth + this.f19417do;
                    i4++;
                    i5++;
                    i3++;
                    if (i4 == this.f19415break) {
                        break;
                    }
                }
            }
            if (i4 == this.f19415break) {
                break;
            }
            paddingTop += iMax + this.f19421if;
            i2++;
        }
        int childCount = getChildCount();
        while (i3 < childCount) {
            View childAt2 = getChildAt(i3);
            if (childAt2.getVisibility() != 8) {
                childAt2.layout(0, 0, 0, 0);
            }
            i3++;
        }
    }

    public int getGravity() {
        return this.f19419for;
    }

    public int getLineCount() {
        return this.f19416case;
    }

    public int getMaxLines() {
        if (this.f19422new == 0) {
            return this.f19424try;
        }
        return -1;
    }

    public int getMaxNumber() {
        if (this.f19422new == 1) {
            return this.f19424try;
        }
        return -1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = this.f19419for & 7;
        if (i6 == 1) {
            m23755if(i5);
            return;
        }
        if (i6 == 3) {
            m23754for(i5);
        } else if (i6 != 5) {
            m23754for(i5);
        } else {
            m23756new(i5);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0139  */
    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        View childAt;
        int i5;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int childCount = getChildCount();
        this.f19420goto = new int[childCount];
        this.f19423this = new int[childCount];
        int i6 = 0;
        int i7 = 1;
        if (mode == 1073741824) {
            this.f19415break = 0;
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int paddingRight = size - getPaddingRight();
            int i8 = paddingTop;
            int i9 = 0;
            int iMax = 0;
            while (i6 < childCount) {
                int i10 = this.f19422new;
                if ((i10 == i7 && this.f19415break >= this.f19424try) || (i10 == 0 && i9 >= this.f19424try)) {
                    break;
                }
                View childAt2 = getChildAt(i6);
                if (childAt2.getVisibility() == 8) {
                    i5 = size;
                } else {
                    ViewGroup.LayoutParams layoutParams = childAt2.getLayoutParams();
                    i5 = size;
                    childAt2.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), layoutParams.width), ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), layoutParams.height));
                    int measuredWidth = childAt2.getMeasuredWidth();
                    iMax = Math.max(iMax, childAt2.getMeasuredHeight());
                    if (paddingLeft + measuredWidth > paddingRight) {
                        if (this.f19422new == 0 && i9 + 1 >= this.f19424try) {
                            break;
                        }
                        int[] iArr = this.f19423this;
                        iArr[i9] = iArr[i9] - this.f19417do;
                        i9++;
                        paddingLeft = getPaddingLeft();
                        i8 += this.f19421if + iMax;
                    }
                    int[] iArr2 = this.f19420goto;
                    iArr2[i9] = iArr2[i9] + 1;
                    int[] iArr3 = this.f19423this;
                    int i11 = iArr3[i9];
                    int i12 = this.f19417do;
                    iArr3[i9] = i11 + measuredWidth + i12;
                    paddingLeft += measuredWidth + i12;
                    this.f19415break++;
                }
                i6++;
                size = i5;
                i7 = 1;
            }
            i5 = size;
            int[] iArr4 = this.f19423this;
            if (iArr4.length > 0 && iArr4[i9] > 0) {
                iArr4[i9] = iArr4[i9] - this.f19417do;
            }
            if (mode2 == 0) {
                size2 = i8 + iMax + getPaddingBottom();
            } else if (mode2 == Integer.MIN_VALUE) {
                size2 = Math.min(i8 + iMax + getPaddingBottom(), size2);
            }
            i6 = i9;
            i4 = i5;
        } else {
            int paddingLeft2 = getPaddingLeft() + getPaddingRight();
            this.f19415break = 0;
            int i13 = 0;
            int iMax2 = 0;
            while (true) {
                if (i13 >= childCount) {
                    i3 = 1;
                    break;
                }
                int i14 = this.f19422new;
                i3 = 1;
                if (i14 == 1) {
                    if (this.f19415break > this.f19424try) {
                        break;
                    }
                    childAt = getChildAt(i13);
                    if (childAt.getVisibility() == 8) {
                        ViewGroup.LayoutParams layoutParams2 = childAt.getLayoutParams();
                        childAt.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), layoutParams2.width), ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), layoutParams2.height));
                        paddingLeft2 += childAt.getMeasuredWidth();
                        iMax2 = Math.max(iMax2, childAt.getMeasuredHeight());
                        this.f19415break++;
                    }
                    i13++;
                } else {
                    if (i14 == 0 && 1 > this.f19424try) {
                        break;
                    }
                    childAt = getChildAt(i13);
                    if (childAt.getVisibility() == 8) {
                    }
                    i13++;
                }
            }
            int i15 = this.f19415break;
            if (i15 > 0) {
                paddingLeft2 += this.f19417do * (i15 - i3);
            }
            i4 = paddingLeft2;
            size2 = iMax2 + getPaddingTop() + getPaddingBottom();
            int[] iArr5 = this.f19420goto;
            if (iArr5.length > 0) {
                iArr5[0] = childCount;
            }
            int[] iArr6 = this.f19423this;
            if (iArr6.length > 0) {
                iArr6[0] = i4;
            }
        }
        setMeasuredDimension(i4, size2);
        int i16 = i6 + 1;
        int i17 = this.f19416case;
        if (i17 != i16) {
            OnLineCountChangeListener onLineCountChangeListener = this.f19418else;
            if (onLineCountChangeListener != null) {
                onLineCountChangeListener.onChange(i17, i16);
            }
            this.f19416case = i16;
        }
    }

    public void setChildHorizontalSpacing(int i) {
        this.f19417do = i;
        invalidate();
    }

    public void setChildVerticalSpacing(int i) {
        this.f19421if = i;
        invalidate();
    }

    public void setGravity(int i) {
        if (this.f19419for != i) {
            this.f19419for = i;
            requestLayout();
        }
    }

    public void setMaxLines(int i) {
        this.f19424try = i;
        this.f19422new = 0;
        requestLayout();
    }

    public void setMaxNumber(int i) {
        this.f19424try = i;
        this.f19422new = 1;
        requestLayout();
    }

    public void setOnLineCountChangeListener(OnLineCountChangeListener onLineCountChangeListener) {
        this.f19418else = onLineCountChangeListener;
    }

    public QMUIFloatLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QMUIFloatLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19422new = 0;
        this.f19424try = Integer.MAX_VALUE;
        this.f19416case = 0;
        m23753do(context, attributeSet);
    }
}
