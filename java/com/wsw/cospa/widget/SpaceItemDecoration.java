package com.wsw.cospa.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public abstract class SpaceItemDecoration extends RecyclerView.ItemDecoration {
    private int lineWidth;
    private Paint mPaint;

    public SpaceItemDecoration(Context context, float f, @ColorInt int i) {
        this.lineWidth = (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
        Paint paint = new Paint(1);
        this.mPaint = paint;
        paint.setColor(i);
        this.mPaint.setStyle(Paint.Style.FILL);
    }

    private void drawChildBottomHorizontal(View view, Canvas canvas, RecyclerView recyclerView) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        int left = (view.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.lineWidth;
        int right = view.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + this.lineWidth;
        canvas.drawRect(left, view.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, right, this.lineWidth + r9, this.mPaint);
    }

    private void drawChildLeftVertical(View view, Canvas canvas, RecyclerView recyclerView) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        int top = (view.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.lineWidth;
        int bottom = view.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + this.lineWidth;
        canvas.drawRect(r9 - this.lineWidth, top, view.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, bottom, this.mPaint);
    }

    private void drawChildRightVertical(View view, Canvas canvas, RecyclerView recyclerView) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        int top = (view.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.lineWidth;
        int bottom = view.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + this.lineWidth;
        canvas.drawRect(view.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, top, this.lineWidth + r9, bottom, this.mPaint);
    }

    private void drawChildTopHorizontal(View view, Canvas canvas, RecyclerView recyclerView) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        canvas.drawRect((view.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.lineWidth, r9 - this.lineWidth, view.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + this.lineWidth, view.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, this.mPaint);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        boolean[] itemSidesIsHaveOffsets = getItemSidesIsHaveOffsets(((RecyclerView.LayoutParams) view.getLayoutParams()).getViewLayoutPosition());
        rect.set(itemSidesIsHaveOffsets[0] ? this.lineWidth / 2 : 0, itemSidesIsHaveOffsets[1] ? this.lineWidth : 0, itemSidesIsHaveOffsets[2] ? this.lineWidth / 2 : 0, itemSidesIsHaveOffsets[3] ? this.lineWidth : 0);
    }

    public abstract boolean[] getItemSidesIsHaveOffsets(int i);

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            boolean[] itemSidesIsHaveOffsets = getItemSidesIsHaveOffsets(((RecyclerView.LayoutParams) childAt.getLayoutParams()).getViewLayoutPosition());
            if (itemSidesIsHaveOffsets[0]) {
                drawChildLeftVertical(childAt, canvas, recyclerView);
            }
            if (itemSidesIsHaveOffsets[1]) {
                drawChildTopHorizontal(childAt, canvas, recyclerView);
            }
            if (itemSidesIsHaveOffsets[2]) {
                drawChildRightVertical(childAt, canvas, recyclerView);
            }
            if (itemSidesIsHaveOffsets[3]) {
                drawChildBottomHorizontal(childAt, canvas, recyclerView);
            }
        }
    }

    public SpaceItemDecoration(Context context, int i, @ColorInt int i2) {
        this(context, i, i2);
    }
}
