package com.qmuiteam.qmui.nestedScroll;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.kh1;
import android.support.v4.zh1;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.NestedScrollingChild2;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon;

/* loaded from: classes2.dex */
public class QMUIContinuousNestedTopDelegateLayout extends FrameLayout implements NestedScrollingChild2, NestedScrollingParent2, IQMUIContinuousNestedTopView {

    /* renamed from: const, reason: not valid java name */
    public static final String f19177const = "@qmui_scroll_info_top_dl_offset";

    /* renamed from: break, reason: not valid java name */
    private final NestedScrollingParentHelper f19178break;

    /* renamed from: case, reason: not valid java name */
    private zh1 f19179case;

    /* renamed from: catch, reason: not valid java name */
    private final NestedScrollingChildHelper f19180catch;

    /* renamed from: class, reason: not valid java name */
    private Runnable f19181class;

    /* renamed from: do, reason: not valid java name */
    private IQMUIContinuousNestedScrollCommon.OnScrollNotifier f19182do;

    /* renamed from: else, reason: not valid java name */
    private zh1 f19183else;

    /* renamed from: for, reason: not valid java name */
    private IQMUIContinuousNestedTopView f19184for;

    /* renamed from: goto, reason: not valid java name */
    private int f19185goto;

    /* renamed from: if, reason: not valid java name */
    private View f19186if;

    /* renamed from: new, reason: not valid java name */
    private View f19187new;

    /* renamed from: this, reason: not valid java name */
    private int f19188this;

    /* renamed from: try, reason: not valid java name */
    private zh1 f19189try;

    /* renamed from: com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedTopDelegateLayout$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            QMUIContinuousNestedTopDelegateLayout.this.m23548do();
        }
    }

    /* renamed from: com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedTopDelegateLayout$if, reason: invalid class name */
    public class Cif implements IQMUIContinuousNestedScrollCommon.OnScrollNotifier {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ IQMUIContinuousNestedScrollCommon.OnScrollNotifier f19191do;

        public Cif(IQMUIContinuousNestedScrollCommon.OnScrollNotifier onScrollNotifier) {
            this.f19191do = onScrollNotifier;
        }

        @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon.OnScrollNotifier
        public void notify(int i, int i2) {
            this.f19191do.notify(QMUIContinuousNestedTopDelegateLayout.this.getCurrentScroll(), QMUIContinuousNestedTopDelegateLayout.this.getScrollOffsetRange());
        }

        @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon.OnScrollNotifier
        public void onScrollStateChange(View view, int i) {
        }
    }

    public QMUIContinuousNestedTopDelegateLayout(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: if, reason: not valid java name */
    private void m23547if(int i) {
        this.f19185goto = i;
        zh1 zh1Var = this.f19189try;
        if (zh1Var != null) {
            zh1Var.m10204catch(-i);
        }
        zh1 zh1Var2 = this.f19179case;
        if (zh1Var2 != null) {
            zh1Var2.m10204catch(-i);
        }
        zh1 zh1Var3 = this.f19183else;
        if (zh1Var3 != null) {
            zh1Var3.m10204catch(-i);
        }
        IQMUIContinuousNestedScrollCommon.OnScrollNotifier onScrollNotifier = this.f19182do;
        if (onScrollNotifier != null) {
            onScrollNotifier.notify(getCurrentScroll(), getScrollOffsetRange());
        }
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedTopView
    public int consumeScroll(int i) {
        int i2 = this.f19188this;
        if (i2 <= 0) {
            IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView = this.f19184for;
            return iQMUIContinuousNestedTopView != null ? iQMUIContinuousNestedTopView.consumeScroll(i) : i;
        }
        if (i > 0) {
            if (this.f19184for == null) {
                if (i == Integer.MAX_VALUE) {
                    m23547if(i2);
                    return i;
                }
                int i3 = this.f19185goto;
                if (i3 + i <= i2) {
                    m23547if(i3 + i);
                    return 0;
                }
                if (i3 >= i2) {
                    return i;
                }
                int i4 = i - (i2 - i3);
                m23547if(i2);
                return i4;
            }
            int paddingTop = getPaddingTop();
            View view = this.f19186if;
            int iMin = Math.min(i2, paddingTop + (view == null ? 0 : view.getHeight()));
            if (i == Integer.MAX_VALUE) {
                m23547if(iMin);
            } else {
                int i5 = this.f19185goto;
                if (i5 + i <= iMin) {
                    m23547if(i5 + i);
                    return 0;
                }
                if (i5 < iMin) {
                    i -= iMin - i5;
                    m23547if(iMin);
                }
            }
            int iConsumeScroll = this.f19184for.consumeScroll(i);
            if (iConsumeScroll <= 0) {
                return iConsumeScroll;
            }
            if (iConsumeScroll == Integer.MAX_VALUE) {
                m23547if(this.f19188this);
                return iConsumeScroll;
            }
            int i6 = this.f19185goto;
            int i7 = i6 + iConsumeScroll;
            int i8 = this.f19188this;
            if (i7 <= i8) {
                m23547if(i6 + iConsumeScroll);
                return 0;
            }
            int i9 = iConsumeScroll - (i8 - i6);
            m23547if(i8);
            return i9;
        }
        if (i >= 0) {
            return i;
        }
        if (this.f19184for == null) {
            if (i == Integer.MIN_VALUE) {
                m23547if(0);
                return i;
            }
            int i10 = this.f19185goto;
            if (i10 + i >= 0) {
                m23547if(i10 + i);
                return 0;
            }
            if (i10 <= 0) {
                return i;
            }
            int i11 = i + i10;
            m23547if(0);
            return i11;
        }
        int paddingBottom = i2 - getPaddingBottom();
        View view2 = this.f19187new;
        int iMax = Math.max(0, paddingBottom - (view2 == null ? 0 : view2.getHeight()));
        if (i == Integer.MIN_VALUE) {
            m23547if(iMax);
        } else {
            int i12 = this.f19185goto;
            if (i12 + i > iMax) {
                m23547if(i12 + i);
                return 0;
            }
            if (i12 > iMax) {
                i += i12 - iMax;
                m23547if(iMax);
            }
        }
        int iConsumeScroll2 = this.f19184for.consumeScroll(i);
        if (iConsumeScroll2 >= 0) {
            return iConsumeScroll2;
        }
        if (iConsumeScroll2 == Integer.MIN_VALUE) {
            m23547if(0);
            return iConsumeScroll2;
        }
        int i13 = this.f19185goto;
        if (i13 + iConsumeScroll2 > 0) {
            m23547if(i13 + iConsumeScroll2);
            return 0;
        }
        if (i13 <= 0) {
            return iConsumeScroll2;
        }
        int i14 = iConsumeScroll2 + i13;
        m23547if(0);
        return i14;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f19180catch.dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f19180catch.dispatchNestedPreFling(f, f2);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.f19180catch.dispatchNestedPreScroll(i, i2, iArr, iArr2, i3);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return this.f19180catch.dispatchNestedScroll(i, i2, i3, i4, iArr, i5);
    }

    /* renamed from: do, reason: not valid java name */
    public void m23548do() {
        int i;
        if ((this.f19186if == null && this.f19187new == null) || this.f19184for == null) {
            return;
        }
        int containerHeaderOffsetRange = getContainerHeaderOffsetRange();
        int currentScroll = this.f19184for.getCurrentScroll();
        int scrollOffsetRange = this.f19184for.getScrollOffsetRange();
        if (currentScroll > 0 && this.f19186if != null && (i = this.f19185goto) < containerHeaderOffsetRange) {
            int i2 = containerHeaderOffsetRange - i;
            if (i2 >= currentScroll) {
                this.f19184for.consumeScroll(Integer.MIN_VALUE);
                m23547if(this.f19185goto + currentScroll);
            } else {
                this.f19184for.consumeScroll(-i2);
                m23547if(containerHeaderOffsetRange);
            }
        }
        int i3 = this.f19185goto;
        if (i3 <= containerHeaderOffsetRange || currentScroll >= scrollOffsetRange || this.f19187new == null) {
            return;
        }
        int i4 = i3 - containerHeaderOffsetRange;
        int i5 = scrollOffsetRange - currentScroll;
        if (i4 >= i5) {
            this.f19184for.consumeScroll(Integer.MAX_VALUE);
            m23547if((containerHeaderOffsetRange + i4) - i5);
        } else {
            this.f19184for.consumeScroll(i4);
            m23547if(containerHeaderOffsetRange);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m23549for() {
        removeCallbacks(this.f19181class);
        post(this.f19181class);
    }

    public int getContainerHeaderOffsetRange() {
        if (this.f19188this == 0 || this.f19186if == null) {
            return 0;
        }
        return Math.min(getPaddingTop() + this.f19186if.getHeight(), this.f19188this);
    }

    public int getContainerOffsetCurrent() {
        return this.f19185goto;
    }

    public int getContainerOffsetRange() {
        return this.f19188this;
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedTopView
    public int getCurrentScroll() {
        int i = this.f19185goto;
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView = this.f19184for;
        return iQMUIContinuousNestedTopView != null ? i + iQMUIContinuousNestedTopView.getCurrentScroll() : i;
    }

    public IQMUIContinuousNestedTopView getDelegateView() {
        return this.f19184for;
    }

    public View getFooterView() {
        return this.f19187new;
    }

    public View getHeaderView() {
        return this.f19186if;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f19178break.getNestedScrollAxes();
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedTopView
    public int getScrollOffsetRange() {
        int i = this.f19188this;
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView = this.f19184for;
        return iQMUIContinuousNestedTopView != null ? i + iQMUIContinuousNestedTopView.getScrollOffsetRange() : i;
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean hasNestedScrollingParent(int i) {
        return this.f19180catch.hasNestedScrollingParent(i);
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void injectScrollNotifier(IQMUIContinuousNestedScrollCommon.OnScrollNotifier onScrollNotifier) {
        this.f19182do = onScrollNotifier;
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView = this.f19184for;
        if (iQMUIContinuousNestedTopView != null) {
            iQMUIContinuousNestedTopView.injectScrollNotifier(new Cif(onScrollNotifier));
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f19180catch.isNestedScrollingEnabled();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int paddingTop = getPaddingTop();
        View view = this.f19186if;
        if (view != null) {
            int measuredHeight = view.getMeasuredHeight() + paddingTop;
            this.f19186if.layout(0, paddingTop, i5, measuredHeight);
            paddingTop = measuredHeight;
        }
        Object obj = this.f19184for;
        if (obj != null) {
            View view2 = (View) obj;
            int measuredHeight2 = view2.getMeasuredHeight() + paddingTop;
            view2.layout(0, paddingTop, i5, measuredHeight2);
            paddingTop = measuredHeight2;
        }
        View view3 = this.f19187new;
        if (view3 != null) {
            int measuredHeight3 = view3.getMeasuredHeight() + paddingTop;
            this.f19187new.layout(0, paddingTop, i5, measuredHeight3);
            paddingTop = measuredHeight3;
        }
        this.f19188this = Math.max(0, (paddingTop + getPaddingBottom()) - i6);
        zh1 zh1Var = this.f19189try;
        if (zh1Var != null) {
            zh1Var.m10207else();
            this.f19185goto = -this.f19189try.m10211new();
        }
        zh1 zh1Var2 = this.f19179case;
        if (zh1Var2 != null) {
            zh1Var2.m10207else();
            this.f19185goto = -this.f19179case.m10211new();
        }
        zh1 zh1Var3 = this.f19183else;
        if (zh1Var3 != null) {
            zh1Var3.m10207else();
            this.f19185goto = -this.f19183else.m10211new();
        }
        int i7 = this.f19185goto;
        int i8 = this.f19188this;
        if (i7 > i8) {
            m23547if(i8);
        }
        m23549for();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingTop = getPaddingTop();
        View view = this.f19186if;
        if (view != null) {
            view.measure(i, View.MeasureSpec.makeMeasureSpec(size2, 0));
            paddingTop += this.f19186if.getMeasuredHeight();
        }
        Object obj = this.f19184for;
        if (obj != null) {
            View view2 = (View) obj;
            view2.measure(i, View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
            paddingTop += view2.getMeasuredHeight();
        }
        View view3 = this.f19187new;
        if (view3 != null) {
            view3.measure(i, View.MeasureSpec.makeMeasureSpec(size2, 0));
            paddingTop += this.f19187new.getMeasuredHeight();
        }
        int paddingBottom = paddingTop + getPaddingBottom();
        if (paddingBottom < size2) {
            setMeasuredDimension(size, paddingBottom);
        } else {
            setMeasuredDimension(size, size2);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(@NonNull View view, int i, int i2, @NonNull int[] iArr, int i3) {
        dispatchNestedPreScroll(i, i2, iArr, null, i3);
        int i4 = i2 - iArr[1];
        if (i4 > 0) {
            int paddingTop = getPaddingTop();
            View view2 = this.f19186if;
            int height = paddingTop + (view2 != null ? view2.getHeight() : 0);
            int i5 = this.f19185goto;
            if (i5 + i4 <= height) {
                m23547if(i5 + i4);
                iArr[1] = iArr[1] + i4;
                return;
            } else {
                if (i5 < height) {
                    iArr[1] = iArr[1] + (height - i5);
                    m23547if(height);
                    return;
                }
                return;
            }
        }
        if (i4 < 0) {
            int paddingBottom = getPaddingBottom();
            View view3 = this.f19187new;
            int height2 = this.f19188this - (paddingBottom + (view3 != null ? view3.getHeight() : 0));
            int i6 = this.f19185goto;
            if (i6 + i4 >= height2) {
                m23547if(i6 + i4);
                iArr[1] = iArr[1] + i4;
            } else if (i6 > height2) {
                iArr[1] = iArr[1] + (height2 - i6);
                m23547if(height2);
            }
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        int i6 = 0;
        if (i4 > 0) {
            int i7 = this.f19185goto;
            int i8 = i7 + i4;
            int i9 = this.f19188this;
            if (i8 <= i9) {
                m23547if(i7 + i4);
                i6 = i4;
            } else if (i7 <= i9) {
                i6 = i9 - i7;
                m23547if(i9);
            }
        } else if (i4 < 0) {
            int i10 = this.f19185goto;
            if (i10 + i4 >= 0) {
                m23547if(i10 + i4);
                i6 = i4;
            } else if (i10 >= 0) {
                m23547if(0);
                i6 = -i10;
            }
        }
        dispatchNestedScroll(0, i2 + i6, 0, i4 - i6, null, i5);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i, int i2) {
        this.f19178break.onNestedScrollAccepted(view, view2, i, i2);
        startNestedScroll(2, i2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return onStartNestedScroll(view, view2, i, 0);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i, int i2) {
        return (i & 2) != 0;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(@NonNull View view, int i) {
        this.f19178break.onStopNestedScroll(view, i);
        stopNestedScroll(i);
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void restoreScrollInfo(@NonNull Bundle bundle) {
        m23547if(kh1.m4405for(-bundle.getInt(f19177const, 0), 0, getContainerOffsetRange()));
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView = this.f19184for;
        if (iQMUIContinuousNestedTopView != null) {
            iQMUIContinuousNestedTopView.restoreScrollInfo(bundle);
        }
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void saveScrollInfo(@NonNull Bundle bundle) {
        bundle.putInt(f19177const, -this.f19185goto);
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView = this.f19184for;
        if (iQMUIContinuousNestedTopView != null) {
            iQMUIContinuousNestedTopView.saveScrollInfo(bundle);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setDelegateView(@NonNull IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView) {
        if (!(iQMUIContinuousNestedTopView instanceof View)) {
            throw new IllegalArgumentException("delegateView must be a instance of View");
        }
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView2 = this.f19184for;
        if (iQMUIContinuousNestedTopView2 != null) {
            iQMUIContinuousNestedTopView2.injectScrollNotifier(null);
        }
        this.f19184for = iQMUIContinuousNestedTopView;
        View view = (View) iQMUIContinuousNestedTopView;
        this.f19179case = new zh1(view);
        addView(view, new FrameLayout.LayoutParams(-1, -2));
    }

    public void setFooterView(@NonNull View view) {
        this.f19187new = view;
        this.f19183else = new zh1(view);
        addView(view, new FrameLayout.LayoutParams(-1, -2));
    }

    public void setHeaderView(@NonNull View view) {
        this.f19186if = view;
        this.f19189try = new zh1(view);
        addView(view, new FrameLayout.LayoutParams(-1, -2));
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z) {
        this.f19180catch.setNestedScrollingEnabled(z);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean startNestedScroll(int i, int i2) {
        return this.f19180catch.startNestedScroll(i, i2);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public void stopNestedScroll(int i) {
        this.f19180catch.stopNestedScroll(i);
    }

    public QMUIContinuousNestedTopDelegateLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return dispatchNestedPreScroll(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return dispatchNestedScroll(i, i2, i3, i4, iArr, 0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return hasNestedScrollingParent(0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i) {
        return startNestedScroll(i, 0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        stopNestedScroll(0);
    }

    public QMUIContinuousNestedTopDelegateLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19185goto = 0;
        this.f19188this = 0;
        this.f19181class = new Cdo();
        this.f19178break = new NestedScrollingParentHelper(this);
        this.f19180catch = new NestedScrollingChildHelper(this);
        ViewCompat.setNestedScrollingEnabled(this, true);
        setClipToPadding(false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        onNestedScrollAccepted(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        onNestedScroll(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        onNestedPreScroll(view, i, i2, iArr, 0);
    }
}
