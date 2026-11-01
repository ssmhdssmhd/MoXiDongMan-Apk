package com.google.android.material.shape;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ScrollView;
import androidx.annotation.NonNull;

/* renamed from: com.google.android.material.shape.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    private View f12588do;

    /* renamed from: for, reason: not valid java name */
    private ScrollView f12589for;

    /* renamed from: if, reason: not valid java name */
    private MaterialShapeDrawable f12590if;

    /* renamed from: new, reason: not valid java name */
    private final int[] f12591new = new int[2];

    /* renamed from: try, reason: not valid java name */
    private final int[] f12592try = new int[2];

    /* renamed from: case, reason: not valid java name */
    private final ViewTreeObserver.OnScrollChangedListener f12587case = new ViewTreeObserverOnScrollChangedListenerC0064do();

    /* renamed from: com.google.android.material.shape.do$do, reason: invalid class name and collision with other inner class name */
    public class ViewTreeObserverOnScrollChangedListenerC0064do implements ViewTreeObserver.OnScrollChangedListener {
        public ViewTreeObserverOnScrollChangedListenerC0064do() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            Cdo.this.m14047try();
        }
    }

    public Cdo(View view, MaterialShapeDrawable materialShapeDrawable, ScrollView scrollView) {
        this.f12588do = view;
        this.f12590if = materialShapeDrawable;
        this.f12589for = scrollView;
    }

    /* renamed from: do, reason: not valid java name */
    public void m14043do(ScrollView scrollView) {
        this.f12589for = scrollView;
    }

    /* renamed from: for, reason: not valid java name */
    public void m14044for(@NonNull ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this.f12587case);
    }

    /* renamed from: if, reason: not valid java name */
    public void m14045if(MaterialShapeDrawable materialShapeDrawable) {
        this.f12590if = materialShapeDrawable;
    }

    /* renamed from: new, reason: not valid java name */
    public void m14046new(@NonNull ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this.f12587case);
    }

    /* renamed from: try, reason: not valid java name */
    public void m14047try() {
        ScrollView scrollView = this.f12589for;
        if (scrollView == null) {
            return;
        }
        if (scrollView.getChildCount() == 0) {
            throw new IllegalStateException("Scroll bar must contain a child to calculate interpolation.");
        }
        this.f12589for.getLocationInWindow(this.f12591new);
        this.f12589for.getChildAt(0).getLocationInWindow(this.f12592try);
        int top = (this.f12588do.getTop() - this.f12591new[1]) + this.f12592try[1];
        int height = this.f12588do.getHeight();
        int height2 = this.f12589for.getHeight();
        if (top < 0) {
            this.f12590if.A(Math.max(0.0f, Math.min(1.0f, (top / height) + 1.0f)));
            this.f12588do.invalidate();
            return;
        }
        if (top + height > height2) {
            this.f12590if.A(Math.max(0.0f, Math.min(1.0f, 1.0f - ((r0 - height2) / height))));
            this.f12588do.invalidate();
        } else if (this.f12590if.m13945default() != 1.0f) {
            this.f12590if.A(1.0f);
            this.f12588do.invalidate();
        }
    }
}
