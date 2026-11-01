package org.adw.library.widgets.discreteseekbar.internal.compat;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.graphics.drawable.DrawableCompat;
import org.adw.library.widgets.discreteseekbar.internal.drawable.Cdo;
import org.adw.library.widgets.discreteseekbar.internal.drawable.MarkerDrawable;

/* renamed from: org.adw.library.widgets.discreteseekbar.internal.compat.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {
    /* renamed from: case, reason: not valid java name */
    public static void m31774case(View view, MarkerDrawable markerDrawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            Cfor.m31773try(view, markerDrawable);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Drawable m31775do(ColorStateList colorStateList) {
        return Build.VERSION.SDK_INT >= 21 ? Cfor.m31769do(colorStateList) : new Cdo(colorStateList);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m31776else(@NonNull Drawable drawable, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            ((RippleDrawable) drawable).setColor(colorStateList);
        } else {
            ((Cdo) drawable).m31829super(colorStateList);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m31777for(ViewParent viewParent) {
        if (Build.VERSION.SDK_INT >= 14) {
            return Cfor.m31770for(viewParent);
        }
        return false;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m31778goto(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            Cfor.m31768case(textView, i);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m31779if(View view) {
        if (Build.VERSION.SDK_INT >= 11) {
            return Cfor.m31771if(view);
        }
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m31780new(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            Cfor.m31772new(view, drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m31781try(Drawable drawable, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT < 21) {
            drawable.setBounds(i, i2, i3, i4);
        } else {
            int i5 = (i3 - i) / 8;
            DrawableCompat.setHotspotBounds(drawable, i + i5, i2 + i5, i3 - i5, i4 - i5);
        }
    }
}
