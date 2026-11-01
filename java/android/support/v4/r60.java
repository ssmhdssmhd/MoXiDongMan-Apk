package android.support.v4;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;

/* loaded from: classes.dex */
public class r60 {

    /* renamed from: case, reason: not valid java name */
    private static final float f5665case = 2.0f;

    /* renamed from: try, reason: not valid java name */
    private static final float f5666try = 4.5f;

    /* renamed from: do, reason: not valid java name */
    private final boolean f5667do;

    /* renamed from: for, reason: not valid java name */
    private final int f5668for;

    /* renamed from: if, reason: not valid java name */
    private final int f5669if;

    /* renamed from: new, reason: not valid java name */
    private final float f5670new;

    public r60(@NonNull Context context) {
        this.f5667do = px0.m6247if(context, R.attr.elevationOverlayEnabled, false);
        this.f5669if = qx0.m6678if(context, R.attr.elevationOverlayColor, 0);
        this.f5668for = qx0.m6678if(context, R.attr.colorSurface, 0);
        this.f5670new = context.getResources().getDisplayMetrics().density;
    }

    /* renamed from: const, reason: not valid java name */
    private boolean m6780const(@ColorInt int i) {
        return ColorUtils.setAlphaComponent(i, 255) == this.f5668for;
    }

    @ColorInt
    /* renamed from: break, reason: not valid java name */
    public int m6781break() {
        return this.f5669if;
    }

    @ColorInt
    /* renamed from: case, reason: not valid java name */
    public int m6782case(@ColorInt int i, float f, @NonNull View view) {
        return m6792try(i, f + m6791this(view));
    }

    @ColorInt
    /* renamed from: catch, reason: not valid java name */
    public int m6783catch() {
        return this.f5668for;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m6784class() {
        return this.f5667do;
    }

    /* renamed from: do, reason: not valid java name */
    public int m6785do(float f) {
        return Math.round(m6789if(f) * 255.0f);
    }

    @ColorInt
    /* renamed from: else, reason: not valid java name */
    public int m6786else(float f) {
        return m6792try(this.f5668for, f);
    }

    @ColorInt
    /* renamed from: for, reason: not valid java name */
    public int m6787for(@ColorInt int i, float f) {
        float fM6789if = m6789if(f);
        return ColorUtils.setAlphaComponent(qx0.m6677goto(ColorUtils.setAlphaComponent(i, 255), this.f5669if, fM6789if), Color.alpha(i));
    }

    @ColorInt
    /* renamed from: goto, reason: not valid java name */
    public int m6788goto(float f, @NonNull View view) {
        return m6786else(f + m6791this(view));
    }

    /* renamed from: if, reason: not valid java name */
    public float m6789if(float f) {
        if (this.f5670new <= 0.0f || f <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f / r0)) * 4.5f) + f5665case) / 100.0f, 1.0f);
    }

    @ColorInt
    /* renamed from: new, reason: not valid java name */
    public int m6790new(@ColorInt int i, float f, @NonNull View view) {
        return m6787for(i, f + m6791this(view));
    }

    /* renamed from: this, reason: not valid java name */
    public float m6791this(@NonNull View view) {
        return ViewUtils.m13623this(view);
    }

    @ColorInt
    /* renamed from: try, reason: not valid java name */
    public int m6792try(@ColorInt int i, float f) {
        return (this.f5667do && m6780const(i)) ? m6787for(i, f) : i;
    }
}
