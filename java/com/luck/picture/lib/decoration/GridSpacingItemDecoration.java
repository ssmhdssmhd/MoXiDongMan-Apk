package com.luck.picture.lib.decoration;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public class GridSpacingItemDecoration extends RecyclerView.ItemDecoration {

    /* renamed from: do, reason: not valid java name */
    private int f18714do;

    /* renamed from: for, reason: not valid java name */
    private boolean f18715for;

    /* renamed from: if, reason: not valid java name */
    private int f18716if;

    public GridSpacingItemDecoration(int i, int i2, boolean z) {
        this.f18714do = i;
        this.f18716if = i2;
        this.f18715for = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        int i = this.f18714do;
        int i2 = childAdapterPosition % i;
        if (this.f18715for) {
            int i3 = this.f18716if;
            rect.left = i3 - ((i2 * i3) / i);
            rect.right = ((i2 + 1) * i3) / i;
            if (childAdapterPosition < i) {
                rect.top = i3;
            }
            rect.bottom = i3;
            return;
        }
        int i4 = this.f18716if;
        rect.left = (i2 * i4) / i;
        rect.right = i4 - (((i2 + 1) * i4) / i);
        if (childAdapterPosition < i) {
            rect.top = i4;
        }
        rect.bottom = i4;
    }
}
