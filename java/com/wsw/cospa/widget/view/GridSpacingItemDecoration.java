package com.wsw.cospa.widget.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorRes;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public class GridSpacingItemDecoration extends RecyclerView.ItemDecoration {
    private int color;
    private Drawable mDivider;
    private Paint mPaint;
    private int space;
    private int type;

    public GridSpacingItemDecoration(int i) {
        this.color = -1;
        this.space = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawGrideview(Canvas canvas, RecyclerView recyclerView) {
        RecyclerView.LayoutParams layoutParams;
        GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
        int childCount = recyclerView.getChildCount();
        int childCount2 = (recyclerView.getChildCount() / gridLayoutManager.getSpanCount()) - 1;
        if (childCount2 < 1) {
            childCount2 = 1;
        }
        int spanCount = childCount2 * gridLayoutManager.getSpanCount();
        if (recyclerView.getChildCount() < gridLayoutManager.getSpanCount()) {
            spanCount = recyclerView.getChildCount();
        }
        int i = spanCount;
        int spanCount2 = gridLayoutManager.getSpanCount() - 1;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            if (i2 < i) {
                int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                int i3 = this.space;
                int i4 = bottom + i3;
                int i5 = ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + i3;
                int i6 = i2 + 1;
                int i7 = i5 * i6;
                int measuredWidth = (childAt.getMeasuredWidth() * i6) + i7 + (this.space * i2);
                Drawable drawable = this.mDivider;
                if (drawable != null) {
                    drawable.setBounds(i7, bottom, measuredWidth, i4);
                    this.mDivider.draw(canvas);
                }
                Paint paint = this.mPaint;
                if (paint != null) {
                    layoutParams = layoutParams2;
                    canvas.drawRect(i7, bottom, measuredWidth, i4, paint);
                } else {
                    layoutParams = layoutParams2;
                }
            }
            if (i2 != spanCount2) {
                int spanCount3 = (((ViewGroup.MarginLayoutParams) layoutParams).topMargin + this.space) * ((i2 / gridLayoutManager.getSpanCount()) + 1);
                int measuredHeight = ((childAt.getMeasuredHeight() + this.space) * ((i2 / gridLayoutManager.getSpanCount()) + 1)) + this.space;
                int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int i8 = this.space + right;
                Drawable drawable2 = this.mDivider;
                if (drawable2 != null) {
                    drawable2.setBounds(right, spanCount3, i8, measuredHeight);
                    this.mDivider.draw(canvas);
                }
                Paint paint2 = this.mPaint;
                if (paint2 != null) {
                    canvas.drawRect(right, spanCount3, i8, measuredHeight, paint2);
                }
            } else {
                spanCount2 += 4;
            }
        }
    }

    private void drawGrideview1(Canvas canvas, RecyclerView recyclerView) {
        GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
        int childCount = recyclerView.getChildCount();
        int spanCount = gridLayoutManager.getSpanCount();
        int i = 0;
        while (i < childCount) {
            View childAt = recyclerView.getChildAt(i);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            int i2 = this.space + bottom;
            int paddingLeft = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + childAt.getPaddingLeft() + this.space;
            int i3 = i + 1;
            int measuredWidth = (childAt.getMeasuredWidth() * i3) + paddingLeft + (this.space * i);
            Drawable drawable = this.mDivider;
            if (drawable != null) {
                drawable.setBounds(paddingLeft, bottom, measuredWidth, i2);
                this.mDivider.draw(canvas);
            }
            Paint paint = this.mPaint;
            if (paint != null) {
                canvas.drawRect(paddingLeft, bottom, measuredWidth, i2, paint);
            }
            int spanCount2 = (((ViewGroup.MarginLayoutParams) layoutParams).topMargin + this.space) * ((i / gridLayoutManager.getSpanCount()) + 1);
            int measuredHeight = ((childAt.getMeasuredHeight() + this.space) * ((i / gridLayoutManager.getSpanCount()) + 1)) + this.space;
            int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            int i4 = this.space + right;
            Drawable drawable2 = this.mDivider;
            if (drawable2 != null) {
                drawable2.setBounds(right, spanCount2, i4, measuredHeight);
                this.mDivider.draw(canvas);
            }
            Paint paint2 = this.mPaint;
            if (paint2 != null) {
                canvas.drawRect(right, spanCount2, i4, measuredHeight, paint2);
            }
            if (i < spanCount) {
                int top = childAt.getTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                int i5 = this.space;
                int i6 = top + i5;
                int i7 = (((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + i5) * i3;
                int measuredWidth2 = (childAt.getMeasuredWidth() * i3) + i7 + (this.space * i);
                Drawable drawable3 = this.mDivider;
                if (drawable3 != null) {
                    drawable3.setBounds(i7, top, measuredWidth2, i6);
                    this.mDivider.draw(canvas);
                }
                Paint paint3 = this.mPaint;
                if (paint3 != null) {
                    canvas.drawRect(i7, top, measuredWidth2, i6, paint3);
                }
            }
            if (i % spanCount == 0) {
                int spanCount3 = (((ViewGroup.MarginLayoutParams) layoutParams).topMargin + this.space) * ((i / gridLayoutManager.getSpanCount()) + 1);
                int measuredHeight2 = ((childAt.getMeasuredHeight() + this.space) * ((i / gridLayoutManager.getSpanCount()) + 1)) + this.space;
                int left = childAt.getLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                int i8 = this.space + left;
                Drawable drawable4 = this.mDivider;
                if (drawable4 != null) {
                    drawable4.setBounds(left, spanCount3, i8, measuredHeight2);
                    this.mDivider.draw(canvas);
                }
                Paint paint4 = this.mPaint;
                if (paint4 != null) {
                    canvas.drawRect(left, spanCount3, i8, measuredHeight2, paint4);
                }
            }
            i = i3;
        }
    }

    private void drawHorizontal(Canvas canvas, RecyclerView recyclerView) {
        int paddingLeft = recyclerView.getPaddingLeft();
        int measuredWidth = recyclerView.getMeasuredWidth() - recyclerView.getPaddingRight();
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).bottomMargin;
            int i2 = this.space + bottom;
            Drawable drawable = this.mDivider;
            if (drawable != null) {
                drawable.setBounds(paddingLeft, bottom, measuredWidth, i2);
                this.mDivider.draw(canvas);
            }
            Paint paint = this.mPaint;
            if (paint != null) {
                canvas.drawRect(paddingLeft, bottom, measuredWidth, i2, paint);
            }
        }
    }

    private void drawVertical(Canvas canvas, RecyclerView recyclerView) {
        int paddingTop = recyclerView.getPaddingTop();
        int measuredHeight = recyclerView.getMeasuredHeight() - recyclerView.getPaddingBottom();
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).rightMargin;
            int i2 = this.space + right;
            Drawable drawable = this.mDivider;
            if (drawable != null) {
                drawable.setBounds(right, paddingTop, i2, measuredHeight);
                this.mDivider.draw(canvas);
            }
            Paint paint = this.mPaint;
            if (paint != null) {
                canvas.drawRect(right, paddingTop, i2, measuredHeight, paint);
            }
        }
    }

    public int getColor() {
        return this.color;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        if (recyclerView.getLayoutManager() != null) {
            if (!(recyclerView.getLayoutManager() instanceof LinearLayoutManager) || (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                int i = this.space;
                rect.set(i, i, i, i);
            } else if (((LinearLayoutManager) recyclerView.getLayoutManager()).getOrientation() == 0) {
                int i2 = this.space;
                rect.set(i2, 0, i2, 0);
            } else {
                int i3 = this.space;
                rect.set(0, i3, 0, i3);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        super.onDraw(canvas, recyclerView, state);
        if (recyclerView.getLayoutManager() != null) {
            if (!(recyclerView.getLayoutManager() instanceof LinearLayoutManager) || (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                if (this.type == 0) {
                    drawGrideview(canvas, recyclerView);
                    return;
                } else {
                    drawGrideview1(canvas, recyclerView);
                    return;
                }
            }
            if (((LinearLayoutManager) recyclerView.getLayoutManager()).getOrientation() == 0) {
                drawHorizontal(canvas, recyclerView);
            } else {
                drawVertical(canvas, recyclerView);
            }
        }
    }

    public void setColor(@ColorRes int i) {
        this.color = i;
    }

    public GridSpacingItemDecoration(int i, int i2) {
        this.color = -1;
        this.space = i;
        this.color = i2;
        Paint paint = new Paint(1);
        this.mPaint = paint;
        paint.setColor(i2);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setStrokeWidth(i * 2);
    }

    public GridSpacingItemDecoration(int i, int i2, int i3) {
        this.color = -1;
        this.space = i;
        this.color = i2;
        Paint paint = new Paint(1);
        this.mPaint = paint;
        paint.setColor(i2);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setStrokeWidth(i * 2);
        this.type = i3;
    }

    public GridSpacingItemDecoration(int i, Drawable drawable) {
        this.color = -1;
        this.space = i;
        this.mDivider = drawable;
    }
}
