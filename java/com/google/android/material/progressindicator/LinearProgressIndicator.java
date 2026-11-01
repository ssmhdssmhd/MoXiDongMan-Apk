package com.google.android.material.progressindicator;

import android.content.Context;
import android.support.v4.ft0;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class LinearProgressIndicator extends BaseProgressIndicator<ft0> {

    /* renamed from: abstract, reason: not valid java name */
    public static final int f12348abstract = 2;

    /* renamed from: continue, reason: not valid java name */
    public static final int f12349continue = 3;

    /* renamed from: default, reason: not valid java name */
    public static final int f12350default = R.style.Widget_MaterialComponents_LinearProgressIndicator;

    /* renamed from: extends, reason: not valid java name */
    public static final int f12351extends = 0;

    /* renamed from: finally, reason: not valid java name */
    public static final int f12352finally = 1;

    /* renamed from: package, reason: not valid java name */
    public static final int f12353package = 0;

    /* renamed from: private, reason: not valid java name */
    public static final int f12354private = 1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.progressindicator.LinearProgressIndicator$do, reason: invalid class name */
    public @interface Cdo {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.progressindicator.LinearProgressIndicator$if, reason: invalid class name */
    public @interface Cif {
    }

    public LinearProgressIndicator(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: return, reason: not valid java name */
    private void m13807return() {
        setIndeterminateDrawable(IndeterminateDrawable.m13802static(getContext(), (ft0) this.f12322do));
        setProgressDrawable(DeterminateDrawable.m13790throws(getContext(), (ft0) this.f12322do));
    }

    public int getIndeterminateAnimationType() {
        return ((ft0) this.f12322do).f1988else;
    }

    public int getIndicatorDirection() {
        return ((ft0) this.f12322do).f1989goto;
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        S s = this.f12322do;
        ft0 ft0Var = (ft0) s;
        boolean z2 = true;
        if (((ft0) s).f1989goto != 1 && ((ViewCompat.getLayoutDirection(this) != 1 || ((ft0) this.f12322do).f1989goto != 2) && (ViewCompat.getLayoutDirection(this) != 0 || ((ft0) this.f12322do).f1989goto != 3))) {
            z2 = false;
        }
        ft0Var.f1990this = z2;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        int paddingLeft = i - (getPaddingLeft() + getPaddingRight());
        int paddingTop = i2 - (getPaddingTop() + getPaddingBottom());
        IndeterminateDrawable<ft0> indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
        DeterminateDrawable<ft0> progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
    public ft0 mo13780this(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        return new ft0(context, attributeSet);
    }

    public void setIndeterminateAnimationType(int i) {
        if (((ft0) this.f12322do).f1988else == i) {
            return;
        }
        if (m13779native() && isIndeterminate()) {
            throw new IllegalStateException("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
        }
        S s = this.f12322do;
        ((ft0) s).f1988else = i;
        ((ft0) s).mo2406try();
        if (i == 0) {
            getIndeterminateDrawable().m13803default(new Celse((ft0) this.f12322do));
        } else {
            getIndeterminateDrawable().m13803default(new Cgoto(getContext(), (ft0) this.f12322do));
        }
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setIndicatorColor(@NonNull int... iArr) {
        super.setIndicatorColor(iArr);
        ((ft0) this.f12322do).mo2406try();
    }

    public void setIndicatorDirection(int i) {
        S s = this.f12322do;
        ((ft0) s).f1989goto = i;
        ft0 ft0Var = (ft0) s;
        boolean z = true;
        if (i != 1 && ((ViewCompat.getLayoutDirection(this) != 1 || ((ft0) this.f12322do).f1989goto != 2) && (ViewCompat.getLayoutDirection(this) != 0 || i != 3))) {
            z = false;
        }
        ft0Var.f1990this = z;
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackCornerRadius(int i) {
        super.setTrackCornerRadius(i);
        ((ft0) this.f12322do).mo2406try();
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    /* renamed from: throw */
    public void mo13781throw(int i, boolean z) {
        S s = this.f12322do;
        if (s != 0 && ((ft0) s).f1988else == 0 && isIndeterminate()) {
            return;
        }
        super.mo13781throw(i, z);
    }

    public LinearProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i, f12350default);
        m13807return();
    }
}
