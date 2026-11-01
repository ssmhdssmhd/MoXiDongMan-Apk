package org.adw.library.widgets.discreteseekbar.internal.compat;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.widget.TextView;
import org.adw.library.widgets.discreteseekbar.internal.drawable.MarkerDrawable;

@TargetApi(21)
/* renamed from: org.adw.library.widgets.discreteseekbar.internal.compat.for, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfor {

    /* renamed from: org.adw.library.widgets.discreteseekbar.internal.compat.for$do, reason: invalid class name */
    public static class Cdo extends ViewOutlineProvider {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ MarkerDrawable f28374do;

        public Cdo(MarkerDrawable markerDrawable) {
            this.f28374do = markerDrawable;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setConvexPath(this.f28374do.m31817throw());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static void m31768case(TextView textView, int i) {
        textView.setTextDirection(i);
    }

    /* renamed from: do, reason: not valid java name */
    public static Drawable m31769do(ColorStateList colorStateList) {
        return new RippleDrawable(colorStateList, null, null);
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m31770for(ViewParent viewParent) {
        while (viewParent != null && (viewParent instanceof ViewGroup)) {
            if (((ViewGroup) viewParent).shouldDelayChildPressedState()) {
                return true;
            }
            viewParent = viewParent.getParent();
        }
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m31771if(View view) {
        return view.isHardwareAccelerated();
    }

    /* renamed from: new, reason: not valid java name */
    public static void m31772new(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m31773try(View view, MarkerDrawable markerDrawable) {
        view.setOutlineProvider(new Cdo(markerDrawable));
    }
}
