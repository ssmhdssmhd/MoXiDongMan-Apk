package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.GravityCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@RequiresApi(21)
/* renamed from: com.google.android.material.transition.platform.class, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cclass extends Cconst<VisibilityAnimatorProvider> {

    /* renamed from: case, reason: not valid java name */
    public static final int f13449case = 0;

    /* renamed from: else, reason: not valid java name */
    public static final int f13450else = 1;

    /* renamed from: goto, reason: not valid java name */
    public static final int f13451goto = 2;

    /* renamed from: new, reason: not valid java name */
    private final int f13453new;

    /* renamed from: try, reason: not valid java name */
    private final boolean f13454try;

    /* renamed from: this, reason: not valid java name */
    @AttrRes
    private static final int f13452this = R.attr.motionDurationLong1;

    /* renamed from: break, reason: not valid java name */
    @AttrRes
    private static final int f13448break = R.attr.motionEasingStandard;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.transition.platform.class$do, reason: invalid class name */
    public @interface Cdo {
    }

    public Cclass(int i, boolean z) {
        super(m14850const(i, z), m14851final());
        this.f13453new = i;
        this.f13454try = z;
    }

    /* renamed from: const, reason: not valid java name */
    private static VisibilityAnimatorProvider m14850const(int i, boolean z) {
        if (i == 0) {
            return new Csuper(z ? GravityCompat.END : GravityCompat.START);
        }
        if (i == 1) {
            return new Csuper(z ? 80 : 48);
        }
        if (i == 2) {
            return new Cfinal(z);
        }
        throw new IllegalArgumentException("Invalid axis: " + i);
    }

    /* renamed from: final, reason: not valid java name */
    private static VisibilityAnimatorProvider m14851final() {
        return new Cnew();
    }

    @Override // com.google.android.material.transition.platform.Cconst
    @AttrRes
    /* renamed from: case */
    public int mo14840case(boolean z) {
        return f13452this;
    }

    @Override // com.google.android.material.transition.platform.Cconst
    /* renamed from: catch */
    public /* bridge */ /* synthetic */ boolean mo14841catch(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return super.mo14841catch(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.platform.Cconst
    /* renamed from: class */
    public /* bridge */ /* synthetic */ void mo14842class(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.mo14842class(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.platform.Cconst
    /* renamed from: do */
    public /* bridge */ /* synthetic */ void mo14843do(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.mo14843do(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.platform.Cconst
    @AttrRes
    /* renamed from: else */
    public int mo14844else(boolean z) {
        return f13448break;
    }

    @Override // com.google.android.material.transition.platform.Cconst
    /* renamed from: for */
    public /* bridge */ /* synthetic */ void mo14845for() {
        super.mo14845for();
    }

    @Override // com.google.android.material.transition.platform.Cconst
    @NonNull
    /* renamed from: goto, reason: not valid java name */
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider mo14852goto() {
        return super.mo14852goto();
    }

    @Override // com.google.android.material.transition.platform.Cconst, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.transition.platform.Cconst, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }

    /* renamed from: super, reason: not valid java name */
    public int m14853super() {
        return this.f13453new;
    }

    @Override // com.google.android.material.transition.platform.Cconst
    @Nullable
    /* renamed from: this */
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider mo14846this() {
        return super.mo14846this();
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m14854throw() {
        return this.f13454try;
    }
}
