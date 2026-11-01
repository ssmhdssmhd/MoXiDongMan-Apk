package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.v4.w1;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.common.collect.LinkedHashMultimap;

/* renamed from: com.google.android.material.tabs.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo extends Cif {
    /* renamed from: case, reason: not valid java name */
    private static float m14357case(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        double d = f;
        Double.isNaN(d);
        return (float) Math.sin((d * 3.141592653589793d) / 2.0d);
    }

    /* renamed from: try, reason: not valid java name */
    private static float m14358try(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        double d = f;
        Double.isNaN(d);
        return (float) (1.0d - Math.cos((d * 3.141592653589793d) / 2.0d));
    }

    @Override // com.google.android.material.tabs.Cif
    /* renamed from: for, reason: not valid java name */
    public void mo14359for(TabLayout tabLayout, View view, View view2, float f, @NonNull Drawable drawable) {
        float fM14357case;
        float fM14358try;
        RectF rectFM14360do = Cif.m14360do(tabLayout, view);
        RectF rectFM14360do2 = Cif.m14360do(tabLayout, view2);
        if (rectFM14360do.left < rectFM14360do2.left) {
            fM14357case = m14358try(f);
            fM14358try = m14357case(f);
        } else {
            fM14357case = m14357case(f);
            fM14358try = m14358try(f);
        }
        drawable.setBounds(w1.m9012for((int) rectFM14360do.left, (int) rectFM14360do2.left, fM14357case), drawable.getBounds().top, w1.m9012for((int) rectFM14360do.right, (int) rectFM14360do2.right, fM14358try), drawable.getBounds().bottom);
    }
}
