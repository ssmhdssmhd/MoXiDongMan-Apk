package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* loaded from: classes.dex */
public class FlexboxItemDecoration extends RecyclerView.ItemDecoration {

    /* renamed from: case, reason: not valid java name */
    private static final int[] f11046case = {android.R.attr.listDivider};

    /* renamed from: for, reason: not valid java name */
    public static final int f11047for = 1;

    /* renamed from: new, reason: not valid java name */
    public static final int f11048new = 2;

    /* renamed from: try, reason: not valid java name */
    public static final int f11049try = 3;

    /* renamed from: do, reason: not valid java name */
    private Drawable f11050do;

    /* renamed from: if, reason: not valid java name */
    private int f11051if;

    public FlexboxItemDecoration(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(f11046case);
        this.f11050do = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
        setOrientation(3);
    }

    /* renamed from: case, reason: not valid java name */
    private void m12444case(Rect rect, int i, FlexboxLayoutManager flexboxLayoutManager, List<Cdo> list) {
        if (list.size() == 0 || flexboxLayoutManager.m12491switch(i) == 0) {
            return;
        }
        if (flexboxLayoutManager.isMainAxisDirectionHorizontal()) {
            if (m12449new()) {
                rect.top = this.f11050do.getIntrinsicHeight();
                rect.bottom = 0;
                return;
            } else {
                rect.top = 0;
                rect.bottom = 0;
                return;
            }
        }
        if (m12450try()) {
            if (flexboxLayoutManager.m12490extends()) {
                rect.right = this.f11050do.getIntrinsicWidth();
                rect.left = 0;
            } else {
                rect.left = this.f11050do.getIntrinsicWidth();
                rect.right = 0;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m12445do(Canvas canvas, RecyclerView recyclerView) {
        int top;
        int intrinsicHeight;
        int left;
        int right;
        int i;
        int iMin;
        int left2;
        if (m12449new()) {
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) recyclerView.getLayoutManager();
            int flexDirection = flexboxLayoutManager.getFlexDirection();
            int left3 = recyclerView.getLeft() - recyclerView.getPaddingLeft();
            int right2 = recyclerView.getRight() + recyclerView.getPaddingRight();
            int childCount = recyclerView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = recyclerView.getChildAt(i2);
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                if (flexDirection == 3) {
                    intrinsicHeight = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    top = this.f11050do.getIntrinsicHeight() + intrinsicHeight;
                } else {
                    top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    intrinsicHeight = top - this.f11050do.getIntrinsicHeight();
                }
                if (!flexboxLayoutManager.isMainAxisDirectionHorizontal()) {
                    left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    right = childAt.getRight();
                    i = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                } else if (flexboxLayoutManager.m12490extends()) {
                    iMin = Math.min(childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + this.f11050do.getIntrinsicWidth(), right2);
                    left2 = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    this.f11050do.setBounds(left2, intrinsicHeight, iMin, top);
                    this.f11050do.draw(canvas);
                } else {
                    left = Math.max((childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f11050do.getIntrinsicWidth(), left3);
                    right = childAt.getRight();
                    i = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                }
                int i3 = left;
                iMin = right + i;
                left2 = i3;
                this.f11050do.setBounds(left2, intrinsicHeight, iMin, top);
                this.f11050do.draw(canvas);
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m12446else(Rect rect, int i, FlexboxLayoutManager flexboxLayoutManager, List<Cdo> list, int i2) {
        if (m12447for(i, list, flexboxLayoutManager)) {
            return;
        }
        if (flexboxLayoutManager.isMainAxisDirectionHorizontal()) {
            if (!m12450try()) {
                rect.left = 0;
                rect.right = 0;
                return;
            } else if (flexboxLayoutManager.m12490extends()) {
                rect.right = this.f11050do.getIntrinsicWidth();
                rect.left = 0;
                return;
            } else {
                rect.left = this.f11050do.getIntrinsicWidth();
                rect.right = 0;
                return;
            }
        }
        if (!m12449new()) {
            rect.top = 0;
            rect.bottom = 0;
        } else if (i2 == 3) {
            rect.bottom = this.f11050do.getIntrinsicHeight();
            rect.top = 0;
        } else {
            rect.top = this.f11050do.getIntrinsicHeight();
            rect.bottom = 0;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m12447for(int i, List<Cdo> list, FlexboxLayoutManager flexboxLayoutManager) {
        int iM12491switch = flexboxLayoutManager.m12491switch(i);
        if ((iM12491switch == -1 || iM12491switch >= flexboxLayoutManager.getFlexLinesInternal().size() || flexboxLayoutManager.getFlexLinesInternal().get(iM12491switch).f11139super != i) && i != 0) {
            return list.size() != 0 && list.get(list.size() - 1).f11141throw == i - 1;
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    private void m12448if(Canvas canvas, RecyclerView recyclerView) {
        int left;
        int intrinsicWidth;
        int iMax;
        int bottom;
        int i;
        int i2;
        if (m12450try()) {
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) recyclerView.getLayoutManager();
            int top = recyclerView.getTop() - recyclerView.getPaddingTop();
            int bottom2 = recyclerView.getBottom() + recyclerView.getPaddingBottom();
            int childCount = recyclerView.getChildCount();
            int flexDirection = flexboxLayoutManager.getFlexDirection();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = recyclerView.getChildAt(i3);
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                if (flexboxLayoutManager.m12490extends()) {
                    intrinsicWidth = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    left = this.f11050do.getIntrinsicWidth() + intrinsicWidth;
                } else {
                    left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    intrinsicWidth = left - this.f11050do.getIntrinsicWidth();
                }
                if (flexboxLayoutManager.isMainAxisDirectionHorizontal()) {
                    iMax = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    bottom = childAt.getBottom();
                    i = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                } else if (flexDirection == 3) {
                    int iMin = Math.min(childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + this.f11050do.getIntrinsicHeight(), bottom2);
                    iMax = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    i2 = iMin;
                    this.f11050do.setBounds(intrinsicWidth, iMax, left, i2);
                    this.f11050do.draw(canvas);
                } else {
                    iMax = Math.max((childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f11050do.getIntrinsicHeight(), top);
                    bottom = childAt.getBottom();
                    i = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                }
                i2 = bottom + i;
                this.f11050do.setBounds(intrinsicWidth, iMax, left, i2);
                this.f11050do.draw(canvas);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m12449new() {
        return (this.f11051if & 1) > 0;
    }

    /* renamed from: try, reason: not valid java name */
    private boolean m12450try() {
        return (this.f11051if & 2) > 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition == 0) {
            return;
        }
        if (!m12449new() && !m12450try()) {
            rect.set(0, 0, 0, 0);
            return;
        }
        FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) recyclerView.getLayoutManager();
        List<Cdo> flexLines = flexboxLayoutManager.getFlexLines();
        m12446else(rect, childAdapterPosition, flexboxLayoutManager, flexLines, flexboxLayoutManager.getFlexDirection());
        m12444case(rect, childAdapterPosition, flexboxLayoutManager, flexLines);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        m12445do(canvas, recyclerView);
        m12448if(canvas, recyclerView);
    }

    public void setDrawable(Drawable drawable) {
        if (drawable == null) {
            throw new IllegalArgumentException("Drawable cannot be null.");
        }
        this.f11050do = drawable;
    }

    public void setOrientation(int i) {
        this.f11051if = i;
    }
}
