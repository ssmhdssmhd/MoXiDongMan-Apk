package com.google.android.flexbox;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.widget.CompoundButtonCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: com.google.android.flexbox.if, reason: invalid class name */
/* loaded from: classes.dex */
class Cif {

    /* renamed from: case, reason: not valid java name */
    private static final int f11144case = 10;

    /* renamed from: else, reason: not valid java name */
    private static final long f11145else = 4294967295L;

    /* renamed from: goto, reason: not valid java name */
    public static final /* synthetic */ boolean f11146goto = false;

    /* renamed from: do, reason: not valid java name */
    private final FlexContainer f11147do;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    public int[] f11148for;

    /* renamed from: if, reason: not valid java name */
    private boolean[] f11149if;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    public long[] f11150new;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    private long[] f11151try;

    /* renamed from: com.google.android.flexbox.if$for, reason: invalid class name */
    public static class Cfor implements Comparable<Cfor> {

        /* renamed from: do, reason: not valid java name */
        public int f11152do;

        /* renamed from: if, reason: not valid java name */
        public int f11153if;

        private Cfor() {
        }

        @Override // java.lang.Comparable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compareTo(@NonNull Cfor cfor) {
            int i = this.f11153if;
            int i2 = cfor.f11153if;
            return i != i2 ? i - i2 : this.f11152do - cfor.f11152do;
        }

        @NonNull
        public String toString() {
            return "Order{order=" + this.f11153if + ", index=" + this.f11152do + MessageFormatter.DELIM_STOP;
        }
    }

    /* renamed from: com.google.android.flexbox.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0055if {

        /* renamed from: do, reason: not valid java name */
        public List<com.google.android.flexbox.Cdo> f11154do;

        /* renamed from: if, reason: not valid java name */
        public int f11155if;

        /* renamed from: do, reason: not valid java name */
        public void m12594do() {
            this.f11154do = null;
            this.f11155if = 0;
        }
    }

    public Cif(FlexContainer flexContainer) {
        this.f11147do = flexContainer;
    }

    private boolean a(int i, int i2, com.google.android.flexbox.Cdo cdo) {
        return i == i2 - 1 && cdo.m12552new() != 0;
    }

    /* renamed from: abstract, reason: not valid java name */
    private int m12554abstract(FlexItem flexItem, boolean z) {
        return z ? flexItem.getMarginTop() : flexItem.getMarginLeft();
    }

    private boolean c(View view, int i, int i2, int i3, int i4, FlexItem flexItem, int i5, int i6, int i7) {
        if (this.f11147do.getFlexWrap() == 0) {
            return false;
        }
        if (flexItem.isWrapBefore()) {
            return true;
        }
        if (i == 0) {
            return false;
        }
        int maxLine = this.f11147do.getMaxLine();
        if (maxLine != -1 && maxLine <= i7 + 1) {
            return false;
        }
        int decorationLengthMainAxis = this.f11147do.getDecorationLengthMainAxis(view, i5, i6);
        if (decorationLengthMainAxis > 0) {
            i4 += decorationLengthMainAxis;
        }
        return i2 < i3 + i4;
    }

    /* renamed from: catch, reason: not valid java name */
    private List<com.google.android.flexbox.Cdo> m12555catch(List<com.google.android.flexbox.Cdo> list, int i, int i2) {
        int i3 = (i - i2) / 2;
        ArrayList arrayList = new ArrayList();
        com.google.android.flexbox.Cdo cdo = new com.google.android.flexbox.Cdo();
        cdo.f11132else = i3;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (i4 == 0) {
                arrayList.add(cdo);
            }
            arrayList.add(list.get(i4));
            if (i4 == list.size() - 1) {
                arrayList.add(cdo);
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: class, reason: not valid java name */
    private List<Cfor> m12556class(int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            FlexItem flexItem = (FlexItem) this.f11147do.getFlexItemAt(i2).getLayoutParams();
            Cfor cfor = new Cfor();
            cfor.f11153if = flexItem.getOrder();
            cfor.f11152do = i2;
            arrayList.add(cfor);
        }
        return arrayList;
    }

    /* renamed from: continue, reason: not valid java name */
    private int m12557continue(FlexItem flexItem, boolean z) {
        return z ? flexItem.getMarginLeft() : flexItem.getMarginTop();
    }

    /* renamed from: do, reason: not valid java name */
    private void m12558do(List<com.google.android.flexbox.Cdo> list, com.google.android.flexbox.Cdo cdo, int i, int i2) {
        cdo.f11130const = i2;
        this.f11147do.onNewFlexLineAdded(cdo);
        cdo.f11141throw = i;
        list.add(cdo);
    }

    /* renamed from: extends, reason: not valid java name */
    private int m12559extends(int i, FlexItem flexItem, int i2) {
        FlexContainer flexContainer = this.f11147do;
        int childHeightMeasureSpec = flexContainer.getChildHeightMeasureSpec(i, flexContainer.getPaddingTop() + this.f11147do.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i2, flexItem.getHeight());
        int size = View.MeasureSpec.getSize(childHeightMeasureSpec);
        return size > flexItem.getMaxHeight() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMaxHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec)) : size < flexItem.getMinHeight() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec)) : childHeightMeasureSpec;
    }

    /* renamed from: finally, reason: not valid java name */
    private int m12560finally(int i, FlexItem flexItem, int i2) {
        FlexContainer flexContainer = this.f11147do;
        int childWidthMeasureSpec = flexContainer.getChildWidthMeasureSpec(i, flexContainer.getPaddingLeft() + this.f11147do.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i2, flexItem.getWidth());
        int size = View.MeasureSpec.getSize(childWidthMeasureSpec);
        return size > flexItem.getMaxWidth() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMaxWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec)) : size < flexItem.getMinWidth() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec)) : childWidthMeasureSpec;
    }

    private void g(int i, int i2, com.google.android.flexbox.Cdo cdo, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int iMax;
        int i7 = cdo.f11142try;
        float f = cdo.f11128catch;
        float f2 = 0.0f;
        if (f <= 0.0f || i3 > i7) {
            return;
        }
        float f3 = (i7 - i3) / f;
        cdo.f11142try = i4 + cdo.f11127case;
        if (!z) {
            cdo.f11132else = Integer.MIN_VALUE;
        }
        int i8 = 0;
        boolean z2 = false;
        int i9 = 0;
        float f4 = 0.0f;
        while (i8 < cdo.f11135goto) {
            int i10 = cdo.f11139super + i8;
            View reorderedFlexItemAt = this.f11147do.getReorderedFlexItemAt(i10);
            if (reorderedFlexItemAt == null || reorderedFlexItemAt.getVisibility() == 8) {
                i5 = i7;
                i6 = i8;
            } else {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.f11147do.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    i5 = i7;
                    int i11 = i8;
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr = this.f11151try;
                    if (jArr != null) {
                        measuredWidth = m12578default(jArr[i10]);
                    }
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr2 = this.f11151try;
                    if (jArr2 != null) {
                        measuredHeight = m12590throws(jArr2[i10]);
                    }
                    if (this.f11149if[i10] || flexItem.getFlexShrink() <= 0.0f) {
                        i6 = i11;
                    } else {
                        float flexShrink = measuredWidth - (flexItem.getFlexShrink() * f3);
                        i6 = i11;
                        if (i6 == cdo.f11135goto - 1) {
                            flexShrink += f4;
                            f4 = 0.0f;
                        }
                        int iRound = Math.round(flexShrink);
                        if (iRound < flexItem.getMinWidth()) {
                            iRound = flexItem.getMinWidth();
                            this.f11149if[i10] = true;
                            cdo.f11128catch -= flexItem.getFlexShrink();
                            z2 = true;
                        } else {
                            f4 += flexShrink - iRound;
                            double d = f4;
                            if (d > 1.0d) {
                                iRound++;
                                f4 -= 1.0f;
                            } else if (d < -1.0d) {
                                iRound--;
                                f4 += 1.0f;
                            }
                        }
                        int iM12559extends = m12559extends(i2, flexItem, cdo.f11130const);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        reorderedFlexItemAt.measure(iMakeMeasureSpec, iM12559extends);
                        int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                        m(i10, iMakeMeasureSpec, iM12559extends, reorderedFlexItemAt);
                        this.f11147do.updateViewCache(i10, reorderedFlexItemAt);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i9, measuredHeight + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.f11147do.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    cdo.f11142try += measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight();
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr3 = this.f11151try;
                    if (jArr3 != null) {
                        measuredHeight3 = m12590throws(jArr3[i10]);
                    }
                    int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr4 = this.f11151try;
                    if (jArr4 != null) {
                        measuredWidth3 = m12578default(jArr4[i10]);
                    }
                    if (this.f11149if[i10] || flexItem.getFlexShrink() <= f2) {
                        i5 = i7;
                        i6 = i8;
                    } else {
                        float flexShrink2 = measuredHeight3 - (flexItem.getFlexShrink() * f3);
                        if (i8 == cdo.f11135goto - 1) {
                            flexShrink2 += f4;
                            f4 = 0.0f;
                        }
                        int iRound2 = Math.round(flexShrink2);
                        if (iRound2 < flexItem.getMinHeight()) {
                            iRound2 = flexItem.getMinHeight();
                            this.f11149if[i10] = true;
                            cdo.f11128catch -= flexItem.getFlexShrink();
                            i5 = i7;
                            i6 = i8;
                            z2 = true;
                        } else {
                            f4 += flexShrink2 - iRound2;
                            i5 = i7;
                            i6 = i8;
                            double d2 = f4;
                            if (d2 > 1.0d) {
                                iRound2++;
                                f4 -= 1.0f;
                            } else if (d2 < -1.0d) {
                                iRound2--;
                                f4 += 1.0f;
                            }
                        }
                        int iM12560finally = m12560finally(i, flexItem, cdo.f11130const);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        reorderedFlexItemAt.measure(iM12560finally, iMakeMeasureSpec2);
                        measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                        m(i10, iM12560finally, iMakeMeasureSpec2, reorderedFlexItemAt);
                        this.f11147do.updateViewCache(i10, reorderedFlexItemAt);
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i9, measuredWidth3 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.f11147do.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    cdo.f11142try += measuredHeight3 + flexItem.getMarginTop() + flexItem.getMarginBottom();
                }
                cdo.f11132else = Math.max(cdo.f11132else, iMax);
                i9 = iMax;
            }
            i8 = i6 + 1;
            i7 = i5;
            f2 = 0.0f;
        }
        int i12 = i7;
        if (!z2 || i12 == cdo.f11142try) {
            return;
        }
        g(i, i2, cdo, i3, i4, true);
    }

    private int[] h(int i, List<Cfor> list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i];
        int i2 = 0;
        for (Cfor cfor : list) {
            int i3 = cfor.f11152do;
            iArr[i2] = i3;
            sparseIntArray.append(i3, cfor.f11153if);
            i2++;
        }
        return iArr;
    }

    private void i(View view, int i, int i2) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i - flexItem.getMarginLeft()) - flexItem.getMarginRight()) - this.f11147do.getDecorationLengthCrossAxis(view), flexItem.getMinWidth()), flexItem.getMaxWidth());
        long[] jArr = this.f11151try;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? m12590throws(jArr[i2]) : view.getMeasuredHeight(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
        m(i2, iMakeMeasureSpec2, iMakeMeasureSpec, view);
        this.f11147do.updateViewCache(i2, view);
    }

    /* renamed from: implements, reason: not valid java name */
    private int m12561implements(boolean z) {
        return z ? this.f11147do.getPaddingStart() : this.f11147do.getPaddingTop();
    }

    /* renamed from: import, reason: not valid java name */
    private void m12562import(int i) {
        boolean[] zArr = this.f11149if;
        if (zArr == null) {
            if (i < 10) {
                i = 10;
            }
            this.f11149if = new boolean[i];
        } else {
            if (zArr.length >= i) {
                Arrays.fill(zArr, false);
                return;
            }
            int length = zArr.length * 2;
            if (length >= i) {
                i = length;
            }
            this.f11149if = new boolean[i];
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    private int m12563instanceof(View view, boolean z) {
        return z ? view.getMeasuredHeight() : view.getMeasuredWidth();
    }

    /* renamed from: interface, reason: not valid java name */
    private int m12564interface(boolean z) {
        return z ? this.f11147do.getPaddingBottom() : this.f11147do.getPaddingEnd();
    }

    private void j(View view, int i, int i2) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i - flexItem.getMarginTop()) - flexItem.getMarginBottom()) - this.f11147do.getDecorationLengthCrossAxis(view), flexItem.getMinHeight()), flexItem.getMaxHeight());
        long[] jArr = this.f11151try;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? m12578default(jArr[i2]) : view.getMeasuredWidth(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        m(i2, iMakeMeasureSpec, iMakeMeasureSpec2, view);
        this.f11147do.updateViewCache(i2, view);
    }

    private void m(int i, int i2, int i3, View view) {
        long[] jArr = this.f11150new;
        if (jArr != null) {
            jArr[i] = f(i2, i3);
        }
        long[] jArr2 = this.f11151try;
        if (jArr2 != null) {
            jArr2[i] = f(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    /* renamed from: package, reason: not valid java name */
    private int m12565package(FlexItem flexItem, boolean z) {
        return z ? flexItem.getMarginBottom() : flexItem.getMarginRight();
    }

    /* renamed from: private, reason: not valid java name */
    private int m12566private(FlexItem flexItem, boolean z) {
        return z ? flexItem.getMarginRight() : flexItem.getMarginBottom();
    }

    /* renamed from: protected, reason: not valid java name */
    private int m12567protected(boolean z) {
        return z ? this.f11147do.getPaddingEnd() : this.f11147do.getPaddingBottom();
    }

    /* renamed from: static, reason: not valid java name */
    private void m12568static(CompoundButton compoundButton) throws NoSuchFieldException {
        FlexItem flexItem = (FlexItem) compoundButton.getLayoutParams();
        int minWidth = flexItem.getMinWidth();
        int minHeight = flexItem.getMinHeight();
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(compoundButton);
        int minimumWidth = buttonDrawable == null ? 0 : buttonDrawable.getMinimumWidth();
        int minimumHeight = buttonDrawable != null ? buttonDrawable.getMinimumHeight() : 0;
        if (minWidth == -1) {
            minWidth = minimumWidth;
        }
        flexItem.setMinWidth(minWidth);
        if (minHeight == -1) {
            minHeight = minimumHeight;
        }
        flexItem.setMinHeight(minHeight);
    }

    /* renamed from: strictfp, reason: not valid java name */
    private int m12569strictfp(FlexItem flexItem, boolean z) {
        return z ? flexItem.getHeight() : flexItem.getWidth();
    }

    /* renamed from: switch, reason: not valid java name */
    private void m12570switch(int i, int i2, com.google.android.flexbox.Cdo cdo, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int iMax;
        double d;
        int i7;
        double d2;
        float f = cdo.f11126break;
        float f2 = 0.0f;
        if (f <= 0.0f || i3 < (i5 = cdo.f11142try)) {
            return;
        }
        float f3 = (i3 - i5) / f;
        cdo.f11142try = i4 + cdo.f11127case;
        if (!z) {
            cdo.f11132else = Integer.MIN_VALUE;
        }
        int i8 = 0;
        boolean z2 = false;
        int i9 = 0;
        float f4 = 0.0f;
        while (i8 < cdo.f11135goto) {
            int i10 = cdo.f11139super + i8;
            View reorderedFlexItemAt = this.f11147do.getReorderedFlexItemAt(i10);
            if (reorderedFlexItemAt == null || reorderedFlexItemAt.getVisibility() == 8) {
                i6 = i5;
            } else {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.f11147do.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    int i11 = i5;
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr = this.f11151try;
                    if (jArr != null) {
                        measuredWidth = m12578default(jArr[i10]);
                    }
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr2 = this.f11151try;
                    i6 = i11;
                    if (jArr2 != null) {
                        measuredHeight = m12590throws(jArr2[i10]);
                    }
                    if (!this.f11149if[i10] && flexItem.getFlexGrow() > 0.0f) {
                        float flexGrow = measuredWidth + (flexItem.getFlexGrow() * f3);
                        if (i8 == cdo.f11135goto - 1) {
                            flexGrow += f4;
                            f4 = 0.0f;
                        }
                        int iRound = Math.round(flexGrow);
                        if (iRound > flexItem.getMaxWidth()) {
                            iRound = flexItem.getMaxWidth();
                            this.f11149if[i10] = true;
                            cdo.f11126break -= flexItem.getFlexGrow();
                            z2 = true;
                        } else {
                            f4 += flexGrow - iRound;
                            double d3 = f4;
                            if (d3 > 1.0d) {
                                iRound++;
                                Double.isNaN(d3);
                                d = d3 - 1.0d;
                            } else if (d3 < -1.0d) {
                                iRound--;
                                Double.isNaN(d3);
                                d = d3 + 1.0d;
                            }
                            f4 = (float) d;
                        }
                        int iM12559extends = m12559extends(i2, flexItem, cdo.f11130const);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        reorderedFlexItemAt.measure(iMakeMeasureSpec, iM12559extends);
                        int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                        m(i10, iMakeMeasureSpec, iM12559extends, reorderedFlexItemAt);
                        this.f11147do.updateViewCache(i10, reorderedFlexItemAt);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i9, measuredHeight + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.f11147do.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    cdo.f11142try += measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight();
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr3 = this.f11151try;
                    if (jArr3 != null) {
                        measuredHeight3 = m12590throws(jArr3[i10]);
                    }
                    int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr4 = this.f11151try;
                    if (jArr4 != null) {
                        measuredWidth3 = m12578default(jArr4[i10]);
                    }
                    if (this.f11149if[i10] || flexItem.getFlexGrow() <= f2) {
                        i7 = i5;
                    } else {
                        float flexGrow2 = measuredHeight3 + (flexItem.getFlexGrow() * f3);
                        if (i8 == cdo.f11135goto - 1) {
                            flexGrow2 += f4;
                            f4 = 0.0f;
                        }
                        int iRound2 = Math.round(flexGrow2);
                        if (iRound2 > flexItem.getMaxHeight()) {
                            iRound2 = flexItem.getMaxHeight();
                            this.f11149if[i10] = true;
                            cdo.f11126break -= flexItem.getFlexGrow();
                            i7 = i5;
                            z2 = true;
                        } else {
                            f4 += flexGrow2 - iRound2;
                            i7 = i5;
                            double d4 = f4;
                            if (d4 > 1.0d) {
                                iRound2++;
                                Double.isNaN(d4);
                                d2 = d4 - 1.0d;
                            } else if (d4 < -1.0d) {
                                iRound2--;
                                Double.isNaN(d4);
                                d2 = d4 + 1.0d;
                            }
                            f4 = (float) d2;
                        }
                        int iM12560finally = m12560finally(i, flexItem, cdo.f11130const);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        reorderedFlexItemAt.measure(iM12560finally, iMakeMeasureSpec2);
                        measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                        m(i10, iM12560finally, iMakeMeasureSpec2, reorderedFlexItemAt);
                        this.f11147do.updateViewCache(i10, reorderedFlexItemAt);
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i9, measuredWidth3 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.f11147do.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    cdo.f11142try += measuredHeight3 + flexItem.getMarginTop() + flexItem.getMarginBottom();
                    i6 = i7;
                }
                cdo.f11132else = Math.max(cdo.f11132else, iMax);
                i9 = iMax;
            }
            i8++;
            i5 = i6;
            f2 = 0.0f;
        }
        int i12 = i5;
        if (!z2 || i12 == cdo.f11142try) {
            return;
        }
        m12570switch(i, i2, cdo, i3, i4, true);
    }

    /* renamed from: synchronized, reason: not valid java name */
    private int m12571synchronized(View view, boolean z) {
        return z ? view.getMeasuredWidth() : view.getMeasuredHeight();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m12572this(View view, int i) {
        boolean z;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z2 = true;
        if (measuredWidth < flexItem.getMinWidth()) {
            measuredWidth = flexItem.getMinWidth();
        } else {
            if (measuredWidth <= flexItem.getMaxWidth()) {
                z = false;
                if (measuredHeight >= flexItem.getMinHeight()) {
                    measuredHeight = flexItem.getMinHeight();
                } else if (measuredHeight > flexItem.getMaxHeight()) {
                    measuredHeight = flexItem.getMaxHeight();
                } else {
                    z2 = z;
                }
                if (z2) {
                    return;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                m(i, iMakeMeasureSpec, iMakeMeasureSpec2, view);
                this.f11147do.updateViewCache(i, view);
                return;
            }
            measuredWidth = flexItem.getMaxWidth();
        }
        z = true;
        if (measuredHeight >= flexItem.getMinHeight()) {
        }
        if (z2) {
        }
    }

    /* renamed from: transient, reason: not valid java name */
    private int m12573transient(boolean z) {
        return z ? this.f11147do.getPaddingTop() : this.f11147do.getPaddingStart();
    }

    /* renamed from: volatile, reason: not valid java name */
    private int m12574volatile(FlexItem flexItem, boolean z) {
        return z ? flexItem.getWidth() : flexItem.getHeight();
    }

    public boolean b(SparseIntArray sparseIntArray) {
        int flexItemCount = this.f11147do.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            return true;
        }
        for (int i = 0; i < flexItemCount; i++) {
            View flexItemAt = this.f11147do.getFlexItemAt(i);
            if (flexItemAt != null && ((FlexItem) flexItemAt.getLayoutParams()).getOrder() != sparseIntArray.get(i)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: break, reason: not valid java name */
    public void m12575break(List<com.google.android.flexbox.Cdo> list, int i) {
        int i2 = this.f11148for[i];
        if (i2 == -1) {
            i2 = 0;
        }
        for (int size = list.size() - 1; size >= i2; size--) {
            list.remove(size);
        }
        int[] iArr = this.f11148for;
        int length = iArr.length - 1;
        if (i > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, i, length, -1);
        }
        long[] jArr = this.f11150new;
        int length2 = jArr.length - 1;
        if (i > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, i, length2, 0L);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m12576case(C0055if c0055if, int i, int i2) {
        m12583if(c0055if, i2, i, Integer.MAX_VALUE, 0, -1, null);
    }

    /* renamed from: const, reason: not valid java name */
    public int[] m12577const(SparseIntArray sparseIntArray) {
        int flexItemCount = this.f11147do.getFlexItemCount();
        return h(flexItemCount, m12556class(flexItemCount), sparseIntArray);
    }

    public void d(View view, com.google.android.flexbox.Cdo cdo, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.f11147do.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i5 = cdo.f11132else;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.f11147do.getFlexWrap() == 2) {
                    view.layout(i, (i2 - i5) + view.getMeasuredHeight() + flexItem.getMarginTop(), i3, (i4 - i5) + view.getMeasuredHeight() + flexItem.getMarginTop());
                    return;
                } else {
                    int i6 = i2 + i5;
                    view.layout(i, (i6 - view.getMeasuredHeight()) - flexItem.getMarginBottom(), i3, i6 - flexItem.getMarginBottom());
                    return;
                }
            }
            if (alignItems == 2) {
                int measuredHeight = (((i5 - view.getMeasuredHeight()) + flexItem.getMarginTop()) - flexItem.getMarginBottom()) / 2;
                if (this.f11147do.getFlexWrap() != 2) {
                    int i7 = i2 + measuredHeight;
                    view.layout(i, i7, i3, view.getMeasuredHeight() + i7);
                    return;
                } else {
                    int i8 = i2 - measuredHeight;
                    view.layout(i, i8, i3, view.getMeasuredHeight() + i8);
                    return;
                }
            }
            if (alignItems == 3) {
                if (this.f11147do.getFlexWrap() != 2) {
                    int iMax = Math.max(cdo.f11129class - view.getBaseline(), flexItem.getMarginTop());
                    view.layout(i, i2 + iMax, i3, i4 + iMax);
                    return;
                } else {
                    int iMax2 = Math.max((cdo.f11129class - view.getMeasuredHeight()) + view.getBaseline(), flexItem.getMarginBottom());
                    view.layout(i, i2 - iMax2, i3, i4 - iMax2);
                    return;
                }
            }
            if (alignItems != 4) {
                return;
            }
        }
        if (this.f11147do.getFlexWrap() != 2) {
            view.layout(i, i2 + flexItem.getMarginTop(), i3, i4 + flexItem.getMarginTop());
        } else {
            view.layout(i, i2 - flexItem.getMarginBottom(), i3, i4 - flexItem.getMarginBottom());
        }
    }

    /* renamed from: default, reason: not valid java name */
    public int m12578default(long j) {
        return (int) j;
    }

    public void e(View view, com.google.android.flexbox.Cdo cdo, boolean z, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.f11147do.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i5 = cdo.f11132else;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (z) {
                    view.layout((i - i5) + view.getMeasuredWidth() + flexItem.getMarginLeft(), i2, (i3 - i5) + view.getMeasuredWidth() + flexItem.getMarginLeft(), i4);
                    return;
                } else {
                    view.layout(((i + i5) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i2, ((i3 + i5) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i4);
                    return;
                }
            }
            if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i5 - view.getMeasuredWidth()) + MarginLayoutParamsCompat.getMarginStart(marginLayoutParams)) - MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) / 2;
                if (z) {
                    view.layout(i - measuredWidth, i2, i3 - measuredWidth, i4);
                    return;
                } else {
                    view.layout(i + measuredWidth, i2, i3 + measuredWidth, i4);
                    return;
                }
            }
            if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (z) {
            view.layout(i - flexItem.getMarginRight(), i2, i3 - flexItem.getMarginRight(), i4);
        } else {
            view.layout(i + flexItem.getMarginLeft(), i2, i3 + flexItem.getMarginLeft(), i4);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public void m12579else(C0055if c0055if, int i, int i2, int i3, int i4, @Nullable List<com.google.android.flexbox.Cdo> list) throws NoSuchFieldException {
        m12583if(c0055if, i2, i, i3, i4, -1, list);
    }

    @VisibleForTesting
    public long f(int i, int i2) {
        return (i & 4294967295L) | (i2 << 32);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: final, reason: not valid java name */
    public int[] m12580final(View view, int i, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int flexItemCount = this.f11147do.getFlexItemCount();
        List<Cfor> listM12556class = m12556class(flexItemCount);
        Cfor cfor = new Cfor();
        if (view == null || !(layoutParams instanceof FlexItem)) {
            cfor.f11153if = 1;
        } else {
            cfor.f11153if = ((FlexItem) layoutParams).getOrder();
        }
        if (i == -1 || i == flexItemCount || i >= this.f11147do.getFlexItemCount()) {
            cfor.f11152do = flexItemCount;
        } else {
            cfor.f11152do = i;
            while (i < flexItemCount) {
                listM12556class.get(i).f11152do++;
                i++;
            }
        }
        listM12556class.add(cfor);
        return h(flexItemCount + 1, listM12556class, sparseIntArray);
    }

    /* renamed from: for, reason: not valid java name */
    public void m12581for(C0055if c0055if, int i, int i2) {
        m12583if(c0055if, i, i2, Integer.MAX_VALUE, 0, -1, null);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m12582goto(C0055if c0055if, int i, int i2, int i3, int i4, List<com.google.android.flexbox.Cdo> list) throws NoSuchFieldException {
        m12583if(c0055if, i2, i, i3, 0, i4, list);
    }

    /* renamed from: if, reason: not valid java name */
    public void m12583if(C0055if c0055if, int i, int i2, int i3, int i4, int i5, @Nullable List<com.google.android.flexbox.Cdo> list) throws NoSuchFieldException {
        int i6;
        C0055if c0055if2;
        int i7;
        int i8;
        int i9;
        List<com.google.android.flexbox.Cdo> list2;
        int i10;
        View view;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        com.google.android.flexbox.Cdo cdo;
        int i17;
        int i18 = i;
        int i19 = i2;
        int i20 = i5;
        boolean zIsMainAxisDirectionHorizontal = this.f11147do.isMainAxisDirectionHorizontal();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        List<com.google.android.flexbox.Cdo> arrayList = list == null ? new ArrayList() : list;
        c0055if.f11154do = arrayList;
        boolean z = i20 == -1;
        int iM12561implements = m12561implements(zIsMainAxisDirectionHorizontal);
        int iM12567protected = m12567protected(zIsMainAxisDirectionHorizontal);
        int iM12573transient = m12573transient(zIsMainAxisDirectionHorizontal);
        int iM12564interface = m12564interface(zIsMainAxisDirectionHorizontal);
        com.google.android.flexbox.Cdo cdo2 = new com.google.android.flexbox.Cdo();
        int i21 = i4;
        cdo2.f11139super = i21;
        int i22 = iM12567protected + iM12561implements;
        cdo2.f11142try = i22;
        int flexItemCount = this.f11147do.getFlexItemCount();
        boolean z2 = z;
        int i23 = 0;
        int iCombineMeasuredStates = 0;
        int i24 = 0;
        int i25 = Integer.MIN_VALUE;
        while (true) {
            if (i21 >= flexItemCount) {
                i6 = iCombineMeasuredStates;
                c0055if2 = c0055if;
                break;
            }
            View reorderedFlexItemAt = this.f11147do.getReorderedFlexItemAt(i21);
            if (reorderedFlexItemAt == null) {
                if (a(i21, flexItemCount, cdo2)) {
                    m12558do(arrayList, cdo2, i21, i23);
                }
            } else if (reorderedFlexItemAt.getVisibility() == 8) {
                cdo2.f11140this++;
                cdo2.f11135goto++;
                if (a(i21, flexItemCount, cdo2)) {
                    m12558do(arrayList, cdo2, i21, i23);
                }
            } else {
                if (reorderedFlexItemAt instanceof CompoundButton) {
                    m12568static((CompoundButton) reorderedFlexItemAt);
                }
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int i26 = flexItemCount;
                if (flexItem.getAlignSelf() == 4) {
                    cdo2.f11133final.add(Integer.valueOf(i21));
                }
                int iM12574volatile = m12574volatile(flexItem, zIsMainAxisDirectionHorizontal);
                if (flexItem.getFlexBasisPercent() != -1.0f && mode == 1073741824) {
                    iM12574volatile = Math.round(size * flexItem.getFlexBasisPercent());
                }
                if (zIsMainAxisDirectionHorizontal) {
                    int childWidthMeasureSpec = this.f11147do.getChildWidthMeasureSpec(i18, i22 + m12557continue(flexItem, true) + m12566private(flexItem, true), iM12574volatile);
                    i7 = size;
                    i8 = mode;
                    int childHeightMeasureSpec = this.f11147do.getChildHeightMeasureSpec(i19, iM12573transient + iM12564interface + m12554abstract(flexItem, true) + m12565package(flexItem, true) + i23, m12569strictfp(flexItem, true));
                    reorderedFlexItemAt.measure(childWidthMeasureSpec, childHeightMeasureSpec);
                    m(i21, childWidthMeasureSpec, childHeightMeasureSpec, reorderedFlexItemAt);
                    i9 = childWidthMeasureSpec;
                } else {
                    i7 = size;
                    i8 = mode;
                    int childWidthMeasureSpec2 = this.f11147do.getChildWidthMeasureSpec(i19, iM12573transient + iM12564interface + m12554abstract(flexItem, false) + m12565package(flexItem, false) + i23, m12569strictfp(flexItem, false));
                    int childHeightMeasureSpec2 = this.f11147do.getChildHeightMeasureSpec(i18, m12557continue(flexItem, false) + i22 + m12566private(flexItem, false), iM12574volatile);
                    reorderedFlexItemAt.measure(childWidthMeasureSpec2, childHeightMeasureSpec2);
                    m(i21, childWidthMeasureSpec2, childHeightMeasureSpec2, reorderedFlexItemAt);
                    i9 = childHeightMeasureSpec2;
                }
                this.f11147do.updateViewCache(i21, reorderedFlexItemAt);
                m12572this(reorderedFlexItemAt, i21);
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, reorderedFlexItemAt.getMeasuredState());
                int i27 = i23;
                int i28 = i22;
                com.google.android.flexbox.Cdo cdo3 = cdo2;
                int i29 = i21;
                list2 = arrayList;
                int i30 = i9;
                if (c(reorderedFlexItemAt, i8, i7, cdo2.f11142try, m12566private(flexItem, zIsMainAxisDirectionHorizontal) + m12571synchronized(reorderedFlexItemAt, zIsMainAxisDirectionHorizontal) + m12557continue(flexItem, zIsMainAxisDirectionHorizontal), flexItem, i29, i24, arrayList.size())) {
                    if (cdo3.m12552new() > 0) {
                        if (i29 > 0) {
                            i17 = i29 - 1;
                            cdo = cdo3;
                        } else {
                            cdo = cdo3;
                            i17 = 0;
                        }
                        m12558do(list2, cdo, i17, i27);
                        i23 = cdo.f11132else + i27;
                    } else {
                        i23 = i27;
                    }
                    if (!zIsMainAxisDirectionHorizontal) {
                        i10 = i2;
                        view = reorderedFlexItemAt;
                        i21 = i29;
                        if (flexItem.getWidth() == -1) {
                            FlexContainer flexContainer = this.f11147do;
                            view.measure(flexContainer.getChildWidthMeasureSpec(i10, flexContainer.getPaddingLeft() + this.f11147do.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i23, flexItem.getWidth()), i30);
                            m12572this(view, i21);
                        }
                    } else if (flexItem.getHeight() == -1) {
                        FlexContainer flexContainer2 = this.f11147do;
                        i10 = i2;
                        i21 = i29;
                        view = reorderedFlexItemAt;
                        view.measure(i30, flexContainer2.getChildHeightMeasureSpec(i10, flexContainer2.getPaddingTop() + this.f11147do.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i23, flexItem.getHeight()));
                        m12572this(view, i21);
                    } else {
                        i10 = i2;
                        view = reorderedFlexItemAt;
                        i21 = i29;
                    }
                    cdo2 = new com.google.android.flexbox.Cdo();
                    cdo2.f11135goto = 1;
                    i11 = i28;
                    cdo2.f11142try = i11;
                    cdo2.f11139super = i21;
                    i12 = 0;
                    i13 = Integer.MIN_VALUE;
                } else {
                    i10 = i2;
                    view = reorderedFlexItemAt;
                    i21 = i29;
                    cdo2 = cdo3;
                    i11 = i28;
                    cdo2.f11135goto++;
                    i12 = i24 + 1;
                    i23 = i27;
                    i13 = i25;
                }
                cdo2.f11143while |= flexItem.getFlexGrow() != 0.0f;
                cdo2.f11137import |= flexItem.getFlexShrink() != 0.0f;
                int[] iArr = this.f11148for;
                if (iArr != null) {
                    iArr[i21] = list2.size();
                }
                cdo2.f11142try += m12571synchronized(view, zIsMainAxisDirectionHorizontal) + m12557continue(flexItem, zIsMainAxisDirectionHorizontal) + m12566private(flexItem, zIsMainAxisDirectionHorizontal);
                cdo2.f11126break += flexItem.getFlexGrow();
                cdo2.f11128catch += flexItem.getFlexShrink();
                this.f11147do.onNewFlexItemAdded(view, i21, i12, cdo2);
                int iMax = Math.max(i13, m12563instanceof(view, zIsMainAxisDirectionHorizontal) + m12554abstract(flexItem, zIsMainAxisDirectionHorizontal) + m12565package(flexItem, zIsMainAxisDirectionHorizontal) + this.f11147do.getDecorationLengthCrossAxis(view));
                cdo2.f11132else = Math.max(cdo2.f11132else, iMax);
                if (zIsMainAxisDirectionHorizontal) {
                    if (this.f11147do.getFlexWrap() != 2) {
                        cdo2.f11129class = Math.max(cdo2.f11129class, view.getBaseline() + flexItem.getMarginTop());
                    } else {
                        cdo2.f11129class = Math.max(cdo2.f11129class, (view.getMeasuredHeight() - view.getBaseline()) + flexItem.getMarginBottom());
                    }
                }
                i14 = i26;
                if (a(i21, i14, cdo2)) {
                    m12558do(list2, cdo2, i21, i23);
                    i23 += cdo2.f11132else;
                }
                i15 = i5;
                if (i15 != -1 && list2.size() > 0) {
                    if (list2.get(list2.size() - 1).f11141throw >= i15 && i21 >= i15 && !z2) {
                        i23 = -cdo2.m12547do();
                        i16 = i3;
                        z2 = true;
                    }
                    if (i23 <= i16 && z2) {
                        c0055if2 = c0055if;
                        i6 = iCombineMeasuredStates;
                        break;
                    }
                    i24 = i12;
                    i25 = iMax;
                    i21++;
                    i18 = i;
                    flexItemCount = i14;
                    i19 = i10;
                    i22 = i11;
                    arrayList = list2;
                    mode = i8;
                    i20 = i15;
                    size = i7;
                }
                i16 = i3;
                if (i23 <= i16) {
                }
                i24 = i12;
                i25 = iMax;
                i21++;
                i18 = i;
                flexItemCount = i14;
                i19 = i10;
                i22 = i11;
                arrayList = list2;
                mode = i8;
                i20 = i15;
                size = i7;
            }
            i7 = size;
            i8 = mode;
            i10 = i19;
            i15 = i20;
            list2 = arrayList;
            i11 = i22;
            i14 = flexItemCount;
            i21++;
            i18 = i;
            flexItemCount = i14;
            i19 = i10;
            i22 = i11;
            arrayList = list2;
            mode = i8;
            i20 = i15;
            size = i7;
        }
        c0055if2.f11155if = i6;
    }

    public void k() {
        l(0);
    }

    public void l(int i) {
        View reorderedFlexItemAt;
        if (i >= this.f11147do.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f11147do.getFlexDirection();
        if (this.f11147do.getAlignItems() != 4) {
            for (com.google.android.flexbox.Cdo cdo : this.f11147do.getFlexLinesInternal()) {
                for (Integer num : cdo.f11133final) {
                    View reorderedFlexItemAt2 = this.f11147do.getReorderedFlexItemAt(num.intValue());
                    if (flexDirection == 0 || flexDirection == 1) {
                        j(reorderedFlexItemAt2, cdo.f11132else, num.intValue());
                    } else {
                        if (flexDirection != 2 && flexDirection != 3) {
                            throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                        }
                        i(reorderedFlexItemAt2, cdo.f11132else, num.intValue());
                    }
                }
            }
            return;
        }
        int[] iArr = this.f11148for;
        List<com.google.android.flexbox.Cdo> flexLinesInternal = this.f11147do.getFlexLinesInternal();
        int size = flexLinesInternal.size();
        for (int i2 = iArr != null ? iArr[i] : 0; i2 < size; i2++) {
            com.google.android.flexbox.Cdo cdo2 = flexLinesInternal.get(i2);
            int i3 = cdo2.f11135goto;
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = cdo2.f11139super + i4;
                if (i4 < this.f11147do.getFlexItemCount() && (reorderedFlexItemAt = this.f11147do.getReorderedFlexItemAt(i5)) != null && reorderedFlexItemAt.getVisibility() != 8) {
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    if (flexItem.getAlignSelf() == -1 || flexItem.getAlignSelf() == 4) {
                        if (flexDirection == 0 || flexDirection == 1) {
                            j(reorderedFlexItemAt, cdo2.f11132else, i5);
                        } else {
                            if (flexDirection != 2 && flexDirection != 3) {
                                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                            }
                            i(reorderedFlexItemAt, cdo2.f11132else, i5);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m12584native(int i) {
        int[] iArr = this.f11148for;
        if (iArr == null) {
            if (i < 10) {
                i = 10;
            }
            this.f11148for = new int[i];
        } else if (iArr.length < i) {
            int length = iArr.length * 2;
            if (length >= i) {
                i = length;
            }
            this.f11148for = Arrays.copyOf(iArr, i);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m12585new(C0055if c0055if, int i, int i2, int i3, int i4, @Nullable List<com.google.android.flexbox.Cdo> list) throws NoSuchFieldException {
        m12583if(c0055if, i, i2, i3, i4, -1, list);
    }

    /* renamed from: public, reason: not valid java name */
    public void m12586public(int i) {
        long[] jArr = this.f11150new;
        if (jArr == null) {
            if (i < 10) {
                i = 10;
            }
            this.f11150new = new long[i];
        } else if (jArr.length < i) {
            int length = jArr.length * 2;
            if (length >= i) {
                i = length;
            }
            this.f11150new = Arrays.copyOf(jArr, i);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public void m12587return(int i) {
        long[] jArr = this.f11151try;
        if (jArr == null) {
            if (i < 10) {
                i = 10;
            }
            this.f11151try = new long[i];
        } else if (jArr.length < i) {
            int length = jArr.length * 2;
            if (length >= i) {
                i = length;
            }
            this.f11151try = Arrays.copyOf(jArr, i);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public void m12588super(int i, int i2, int i3) {
        int mode;
        int size;
        int flexDirection = this.f11147do.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            mode = mode2;
            size = size2;
        } else {
            if (flexDirection != 2 && flexDirection != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            mode = View.MeasureSpec.getMode(i);
            size = View.MeasureSpec.getSize(i);
        }
        List<com.google.android.flexbox.Cdo> flexLinesInternal = this.f11147do.getFlexLinesInternal();
        if (mode == 1073741824) {
            int sumOfCrossSize = this.f11147do.getSumOfCrossSize() + i3;
            int i4 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).f11132else = size - i3;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = this.f11147do.getAlignContent();
                if (alignContent == 1) {
                    int i5 = size - sumOfCrossSize;
                    com.google.android.flexbox.Cdo cdo = new com.google.android.flexbox.Cdo();
                    cdo.f11132else = i5;
                    flexLinesInternal.add(0, cdo);
                    return;
                }
                if (alignContent == 2) {
                    this.f11147do.setFlexLines(m12555catch(flexLinesInternal, size, sumOfCrossSize));
                    return;
                }
                if (alignContent == 3) {
                    if (sumOfCrossSize >= size) {
                        return;
                    }
                    float size3 = (size - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                    ArrayList arrayList = new ArrayList();
                    int size4 = flexLinesInternal.size();
                    float f = 0.0f;
                    while (i4 < size4) {
                        arrayList.add(flexLinesInternal.get(i4));
                        if (i4 != flexLinesInternal.size() - 1) {
                            com.google.android.flexbox.Cdo cdo2 = new com.google.android.flexbox.Cdo();
                            if (i4 == flexLinesInternal.size() - 2) {
                                cdo2.f11132else = Math.round(f + size3);
                                f = 0.0f;
                            } else {
                                cdo2.f11132else = Math.round(size3);
                            }
                            int i6 = cdo2.f11132else;
                            f += size3 - i6;
                            if (f > 1.0f) {
                                cdo2.f11132else = i6 + 1;
                                f -= 1.0f;
                            } else if (f < -1.0f) {
                                cdo2.f11132else = i6 - 1;
                                f += 1.0f;
                            }
                            arrayList.add(cdo2);
                        }
                        i4++;
                    }
                    this.f11147do.setFlexLines(arrayList);
                    return;
                }
                if (alignContent == 4) {
                    if (sumOfCrossSize >= size) {
                        this.f11147do.setFlexLines(m12555catch(flexLinesInternal, size, sumOfCrossSize));
                        return;
                    }
                    int size5 = (size - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    com.google.android.flexbox.Cdo cdo3 = new com.google.android.flexbox.Cdo();
                    cdo3.f11132else = size5;
                    for (com.google.android.flexbox.Cdo cdo4 : flexLinesInternal) {
                        arrayList2.add(cdo3);
                        arrayList2.add(cdo4);
                        arrayList2.add(cdo3);
                    }
                    this.f11147do.setFlexLines(arrayList2);
                    return;
                }
                if (alignContent == 5 && sumOfCrossSize < size) {
                    float size6 = (size - sumOfCrossSize) / flexLinesInternal.size();
                    int size7 = flexLinesInternal.size();
                    float f2 = 0.0f;
                    while (i4 < size7) {
                        com.google.android.flexbox.Cdo cdo5 = flexLinesInternal.get(i4);
                        float f3 = cdo5.f11132else + size6;
                        if (i4 == flexLinesInternal.size() - 1) {
                            f3 += f2;
                            f2 = 0.0f;
                        }
                        int iRound = Math.round(f3);
                        f2 += f3 - iRound;
                        if (f2 > 1.0f) {
                            iRound++;
                            f2 -= 1.0f;
                        } else if (f2 < -1.0f) {
                            iRound--;
                            f2 += 1.0f;
                        }
                        cdo5.f11132else = iRound;
                        i4++;
                    }
                }
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public void m12589throw(int i, int i2) {
        m12592while(i, i2, 0);
    }

    /* renamed from: throws, reason: not valid java name */
    public int m12590throws(long j) {
        return (int) (j >> 32);
    }

    /* renamed from: try, reason: not valid java name */
    public void m12591try(C0055if c0055if, int i, int i2, int i3, int i4, List<com.google.android.flexbox.Cdo> list) throws NoSuchFieldException {
        m12583if(c0055if, i, i2, i3, 0, i4, list);
    }

    /* renamed from: while, reason: not valid java name */
    public void m12592while(int i, int i2, int i3) {
        int size;
        int paddingLeft;
        int paddingRight;
        m12562import(this.f11147do.getFlexItemCount());
        if (i3 >= this.f11147do.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f11147do.getFlexDirection();
        int flexDirection2 = this.f11147do.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(i);
            size = View.MeasureSpec.getSize(i);
            int largestMainSize = this.f11147do.getLargestMainSize();
            if (mode != 1073741824 && largestMainSize <= size) {
                size = largestMainSize;
            }
            paddingLeft = this.f11147do.getPaddingLeft();
            paddingRight = this.f11147do.getPaddingRight();
        } else {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            int mode2 = View.MeasureSpec.getMode(i2);
            size = View.MeasureSpec.getSize(i2);
            if (mode2 != 1073741824) {
                size = this.f11147do.getLargestMainSize();
            }
            paddingLeft = this.f11147do.getPaddingTop();
            paddingRight = this.f11147do.getPaddingBottom();
        }
        int i4 = paddingLeft + paddingRight;
        int[] iArr = this.f11148for;
        int i5 = iArr != null ? iArr[i3] : 0;
        List<com.google.android.flexbox.Cdo> flexLinesInternal = this.f11147do.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i6 = i5; i6 < size2; i6++) {
            com.google.android.flexbox.Cdo cdo = flexLinesInternal.get(i6);
            int i7 = cdo.f11142try;
            if (i7 < size && cdo.f11143while) {
                m12570switch(i, i2, cdo, size, i4, false);
            } else if (i7 > size && cdo.f11137import) {
                g(i, i2, cdo, size, i4, false);
            }
        }
    }
}
