package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.GravityCompat;
import androidx.transition.TransitionValues;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class MaterialSharedAxis extends Cgoto<VisibilityAnimatorProvider> {

    /* renamed from: case, reason: not valid java name */
    public static final int f13341case = 0;

    /* renamed from: else, reason: not valid java name */
    public static final int f13342else = 1;

    /* renamed from: goto, reason: not valid java name */
    public static final int f13343goto = 2;

    /* renamed from: new, reason: not valid java name */
    private final int f13345new;

    /* renamed from: try, reason: not valid java name */
    private final boolean f13346try;

    /* renamed from: this, reason: not valid java name */
    @AttrRes
    private static final int f13344this = R.attr.motionDurationLong1;

    /* renamed from: break, reason: not valid java name */
    @AttrRes
    private static final int f13340break = R.attr.motionEasingStandard;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.transition.MaterialSharedAxis$do, reason: invalid class name */
    public @interface Cdo {
    }

    public MaterialSharedAxis(int i, boolean z) {
        super(m14736const(i, z), m14737final());
        this.f13345new = i;
        this.f13346try = z;
    }

    /* renamed from: const, reason: not valid java name */
    private static VisibilityAnimatorProvider m14736const(int i, boolean z) {
        if (i == 0) {
            return new Cbreak(z ? GravityCompat.END : GravityCompat.START);
        }
        if (i == 1) {
            return new Cbreak(z ? 80 : 48);
        }
        if (i == 2) {
            return new Cthis(z);
        }
        throw new IllegalArgumentException("Invalid axis: " + i);
    }

    /* renamed from: final, reason: not valid java name */
    private static VisibilityAnimatorProvider m14737final() {
        return new Cnew();
    }

    @Override // com.google.android.material.transition.Cgoto
    @AttrRes
    /* renamed from: case */
    public int mo14731case(boolean z) {
        return f13344this;
    }

    @Override // com.google.android.material.transition.Cgoto
    /* renamed from: catch */
    public /* bridge */ /* synthetic */ boolean mo14723catch(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return super.mo14723catch(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.Cgoto
    /* renamed from: class */
    public /* bridge */ /* synthetic */ void mo14724class(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.mo14724class(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.Cgoto
    /* renamed from: do */
    public /* bridge */ /* synthetic */ void mo14725do(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.mo14725do(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.Cgoto
    @AttrRes
    /* renamed from: else */
    public int mo14732else(boolean z) {
        return f13340break;
    }

    @Override // com.google.android.material.transition.Cgoto
    /* renamed from: for */
    public /* bridge */ /* synthetic */ void mo14726for() {
        super.mo14726for();
    }

    @Override // com.google.android.material.transition.Cgoto
    @NonNull
    /* renamed from: goto, reason: not valid java name */
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider mo14738goto() {
        return super.mo14738goto();
    }

    @Override // com.google.android.material.transition.Cgoto, androidx.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.transition.Cgoto, androidx.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }

    /* renamed from: super, reason: not valid java name */
    public int m14739super() {
        return this.f13345new;
    }

    @Override // com.google.android.material.transition.Cgoto
    @Nullable
    /* renamed from: this */
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider mo14728this() {
        return super.mo14728this();
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m14740throw() {
        return this.f13346try;
    }
}
