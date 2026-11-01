package com.luck.picture.lib.decoration;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public class RecycleViewDivider extends RecyclerView.ItemDecoration {

    /* renamed from: try, reason: not valid java name */
    private static final int[] f18717try = {R.attr.listDivider};

    /* renamed from: do, reason: not valid java name */
    private Paint f18718do;

    /* renamed from: for, reason: not valid java name */
    private int f18719for;

    /* renamed from: if, reason: not valid java name */
    private Drawable f18720if;

    /* renamed from: new, reason: not valid java name */
    private int f18721new;

    public RecycleViewDivider(Context context, int i) {
        this.f18719for = 2;
        if (i != 1 && i != 0) {
            throw new IllegalArgumentException("请输入正确的参数！");
        }
        this.f18721new = i;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(f18717try);
        this.f18720if = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void drawHorizontal(Canvas canvas, RecyclerView recyclerView) {
        int paddingLeft = recyclerView.getPaddingLeft();
        int measuredWidth = recyclerView.getMeasuredWidth() - recyclerView.getPaddingRight();
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).bottomMargin;
            int i2 = this.f18719for + bottom;
            Drawable drawable = this.f18720if;
            if (drawable != null) {
                drawable.setBounds(paddingLeft, bottom, measuredWidth, i2);
                this.f18720if.draw(canvas);
            }
            Paint paint = this.f18718do;
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
            int i2 = this.f18719for + right;
            Drawable drawable = this.f18720if;
            if (drawable != null) {
                drawable.setBounds(right, paddingTop, i2, measuredHeight);
                this.f18720if.draw(canvas);
            }
            Paint paint = this.f18718do;
            if (paint != null) {
                canvas.drawRect(right, paddingTop, i2, measuredHeight, paint);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        rect.set(0, 0, 0, this.f18719for);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        super.onDraw(canvas, recyclerView, state);
        if (this.f18721new == 1) {
            drawVertical(canvas, recyclerView);
        } else {
            drawHorizontal(canvas, recyclerView);
        }
    }

    public RecycleViewDivider(Context context, int i, int i2) {
        this(context, i);
        Drawable drawable = ContextCompat.getDrawable(context, i2);
        this.f18720if = drawable;
        this.f18719for = drawable.getIntrinsicHeight();
    }

    public RecycleViewDivider(Context context, int i, int i2, int i3) {
        this(context, i);
        this.f18719for = i2;
        Paint paint = new Paint(1);
        this.f18718do = paint;
        paint.setColor(i3);
        this.f18718do.setStyle(Paint.Style.FILL);
    }
}
