package com.futuremind.recyclerviewfastscroll.viewprovider;

import android.graphics.drawable.InsetDrawable;
import android.support.v4.ms1;
import android.support.v4.pd2;
import android.support.v4.qx;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.futuremind.recyclerviewfastscroll.R;
import com.futuremind.recyclerviewfastscroll.viewprovider.Cif;

/* renamed from: com.futuremind.recyclerviewfastscroll.viewprovider.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo extends ms1 {

    /* renamed from: do, reason: not valid java name */
    private View f10920do;

    /* renamed from: if, reason: not valid java name */
    private View f10921if;

    @Override // android.support.v4.ms1
    public int getBubbleOffset() {
        float width;
        int width2;
        if (getScroller().m12340const()) {
            width = this.f10921if.getHeight() / 2.0f;
            width2 = this.f10920do.getHeight();
        } else {
            width = this.f10921if.getWidth() / 2.0f;
            width2 = this.f10920do.getWidth();
        }
        return (int) (width - width2);
    }

    @Override // android.support.v4.ms1
    public ViewBehavior provideBubbleBehavior() {
        return new qx(new Cif.Cfor(this.f10920do).m12353new(1.0f).m12354try(1.0f).mo12349do());
    }

    @Override // android.support.v4.ms1
    public TextView provideBubbleTextView() {
        return (TextView) this.f10920do;
    }

    @Override // android.support.v4.ms1
    public View provideBubbleView(ViewGroup viewGroup) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.fastscroll__default_bubble, viewGroup, false);
        this.f10920do = viewInflate;
        return viewInflate;
    }

    @Override // android.support.v4.ms1
    public ViewBehavior provideHandleBehavior() {
        return null;
    }

    @Override // android.support.v4.ms1
    public View provideHandleView(ViewGroup viewGroup) {
        this.f10921if = new View(getContext());
        int dimensionPixelSize = getScroller().m12340const() ? 0 : getContext().getResources().getDimensionPixelSize(R.dimen.fastscroll__handle_inset);
        int dimensionPixelSize2 = !getScroller().m12340const() ? 0 : getContext().getResources().getDimensionPixelSize(R.dimen.fastscroll__handle_inset);
        pd2.m5953new(this.f10921if, new InsetDrawable(ContextCompat.getDrawable(getContext(), R.drawable.fastscroll__default_handle), dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize));
        this.f10921if.setLayoutParams(new ViewGroup.LayoutParams(getContext().getResources().getDimensionPixelSize(getScroller().m12340const() ? R.dimen.fastscroll__handle_clickable_width : R.dimen.fastscroll__handle_height), getContext().getResources().getDimensionPixelSize(getScroller().m12340const() ? R.dimen.fastscroll__handle_height : R.dimen.fastscroll__handle_clickable_width)));
        return this.f10921if;
    }
}
