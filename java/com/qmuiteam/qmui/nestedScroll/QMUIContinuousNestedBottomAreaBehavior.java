package com.qmuiteam.qmui.nestedScroll;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.GravityCompat;
import com.google.android.material.badge.BadgeDrawable;
import java.util.List;

/* loaded from: classes2.dex */
public class QMUIContinuousNestedBottomAreaBehavior extends QMUIViewOffsetBehavior<View> {

    /* renamed from: new, reason: not valid java name */
    private final Rect f19104new = new Rect();

    /* renamed from: try, reason: not valid java name */
    private final Rect f19105try = new Rect();

    /* renamed from: case, reason: not valid java name */
    private int f19103case = 0;

    /* renamed from: for, reason: not valid java name */
    private static int m23492for(int i) {
        return i == 0 ? BadgeDrawable.f11272import : i;
    }

    @Override // com.qmuiteam.qmui.nestedScroll.QMUIViewOffsetBehavior
    public void layoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        if (dependencies.isEmpty()) {
            super.layoutChild(coordinatorLayout, view, i);
            return;
        }
        View view2 = dependencies.get(0);
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
        Rect rect = this.f19104new;
        rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, view2.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((coordinatorLayout.getHeight() + view2.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        Rect rect2 = this.f19105try;
        GravityCompat.apply(m23492for(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
        view.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
        return view2 instanceof IQMUIContinuousNestedTopView;
    }

    /* renamed from: new, reason: not valid java name */
    public void m23493new(int i) {
        this.f19103case = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
        setTopAndBottomOffset(view2.getBottom() - m23557if());
        return false;
    }

    @Override // com.qmuiteam.qmui.nestedScroll.QMUIViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        boolean zOnLayoutChild = super.onLayoutChild(coordinatorLayout, view, i);
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        if (!dependencies.isEmpty()) {
            setTopAndBottomOffset(dependencies.get(0).getBottom() - m23557if());
        }
        return zOnLayoutChild;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i, int i2, int i3, int i4) {
        int i5 = view.getLayoutParams().height;
        if (i5 != -1 && i5 != -2) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size == 0) {
            size = coordinatorLayout.getHeight();
        }
        coordinatorLayout.onMeasureChild(view, i, i2, View.MeasureSpec.makeMeasureSpec(size - this.f19103case, i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
        return true;
    }
}
