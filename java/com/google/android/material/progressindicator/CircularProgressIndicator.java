package com.google.android.material.progressindicator;

import android.content.Context;
import android.support.v4.zl;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class CircularProgressIndicator extends BaseProgressIndicator<zl> {

    /* renamed from: default, reason: not valid java name */
    public static final int f12335default = R.style.Widget_MaterialComponents_CircularProgressIndicator;

    /* renamed from: extends, reason: not valid java name */
    public static final int f12336extends = 0;

    /* renamed from: finally, reason: not valid java name */
    public static final int f12337finally = 1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.progressindicator.CircularProgressIndicator$do, reason: invalid class name */
    public @interface Cdo {
    }

    public CircularProgressIndicator(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: return, reason: not valid java name */
    private void m13783return() {
        setIndeterminateDrawable(IndeterminateDrawable.m13801return(getContext(), (zl) this.f12322do));
        setProgressDrawable(DeterminateDrawable.m13789switch(getContext(), (zl) this.f12322do));
    }

    public int getIndicatorDirection() {
        return ((zl) this.f12322do).f8595this;
    }

    @Px
    public int getIndicatorInset() {
        return ((zl) this.f12322do).f8594goto;
    }

    @Px
    public int getIndicatorSize() {
        return ((zl) this.f12322do).f8593else;
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
    public zl mo13780this(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        return new zl(context, attributeSet);
    }

    public void setIndicatorDirection(int i) {
        ((zl) this.f12322do).f8595this = i;
        invalidate();
    }

    public void setIndicatorInset(@Px int i) {
        S s = this.f12322do;
        if (((zl) s).f8594goto != i) {
            ((zl) s).f8594goto = i;
            invalidate();
        }
    }

    public void setIndicatorSize(@Px int i) {
        int iMax = Math.max(i, getTrackThickness() * 2);
        S s = this.f12322do;
        if (((zl) s).f8593else != iMax) {
            ((zl) s).f8593else = iMax;
            ((zl) s).mo2406try();
            invalidate();
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackThickness(int i) {
        super.setTrackThickness(i);
        ((zl) this.f12322do).mo2406try();
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i, f12335default);
        m13783return();
    }
}
