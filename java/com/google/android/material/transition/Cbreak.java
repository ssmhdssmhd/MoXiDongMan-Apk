package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* renamed from: com.google.android.material.transition.break, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cbreak implements VisibilityAnimatorProvider {

    /* renamed from: for, reason: not valid java name */
    private static final int f13362for = -1;

    /* renamed from: do, reason: not valid java name */
    private int f13363do;

    /* renamed from: if, reason: not valid java name */
    @Px
    private int f13364if = -1;

    /* renamed from: com.google.android.material.transition.break$do, reason: invalid class name */
    public static class Cdo extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13365do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f13366if;

        public Cdo(View view, float f) {
            this.f13365do = view;
            this.f13366if = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f13365do.setTranslationX(this.f13366if);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.transition.break$for, reason: invalid class name */
    public @interface Cfor {
    }

    /* renamed from: com.google.android.material.transition.break$if, reason: invalid class name */
    public static class Cif extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13367do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f13368if;

        public Cif(View view, float f) {
            this.f13367do = view;
            this.f13368if = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f13367do.setTranslationY(this.f13368if);
        }
    }

    public Cbreak(int i) {
        this.f13363do = i;
    }

    /* renamed from: case, reason: not valid java name */
    private int m14769case(Context context) {
        int i = this.f13364if;
        return i != -1 ? i : context.getResources().getDimensionPixelSize(R.dimen.mtrl_transition_shared_axis_slide_distance);
    }

    /* renamed from: do, reason: not valid java name */
    private static Animator m14770do(View view, View view2, int i, @Px int i2) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i == 3) {
            return m14771for(view2, i2 + translationX, translationX, translationX);
        }
        if (i == 5) {
            return m14771for(view2, translationX - i2, translationX, translationX);
        }
        if (i == 48) {
            return m14774new(view2, translationY - i2, translationY, translationY);
        }
        if (i == 80) {
            return m14774new(view2, i2 + translationY, translationY, translationY);
        }
        if (i == 8388611) {
            return m14771for(view2, m14772goto(view) ? i2 + translationX : translationX - i2, translationX, translationX);
        }
        if (i == 8388613) {
            return m14771for(view2, m14772goto(view) ? translationX - i2 : i2 + translationX, translationX, translationX);
        }
        throw new IllegalArgumentException("Invalid slide direction: " + i);
    }

    /* renamed from: for, reason: not valid java name */
    private static Animator m14771for(View view, float f, float f2, float f3) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f, f2));
        objectAnimatorOfPropertyValuesHolder.addListener(new Cdo(view, f3));
        return objectAnimatorOfPropertyValuesHolder;
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean m14772goto(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    /* renamed from: if, reason: not valid java name */
    private static Animator m14773if(View view, View view2, int i, @Px int i2) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i == 3) {
            return m14771for(view2, translationX, translationX - i2, translationX);
        }
        if (i == 5) {
            return m14771for(view2, translationX, i2 + translationX, translationX);
        }
        if (i == 48) {
            return m14774new(view2, translationY, i2 + translationY, translationY);
        }
        if (i == 80) {
            return m14774new(view2, translationY, translationY - i2, translationY);
        }
        if (i == 8388611) {
            return m14771for(view2, translationX, m14772goto(view) ? translationX - i2 : i2 + translationX, translationX);
        }
        if (i == 8388613) {
            return m14771for(view2, translationX, m14772goto(view) ? i2 + translationX : translationX - i2, translationX);
        }
        throw new IllegalArgumentException("Invalid slide direction: " + i);
    }

    /* renamed from: new, reason: not valid java name */
    private static Animator m14774new(View view, float f, float f2, float f3) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f, f2));
        objectAnimatorOfPropertyValuesHolder.addListener(new Cif(view, f3));
        return objectAnimatorOfPropertyValuesHolder;
    }

    /* renamed from: break, reason: not valid java name */
    public void m14775break(int i) {
        this.f13363do = i;
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return m14770do(viewGroup, view, this.f13363do, m14769case(view.getContext()));
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return m14773if(viewGroup, view, this.f13363do, m14769case(view.getContext()));
    }

    /* renamed from: else, reason: not valid java name */
    public int m14776else() {
        return this.f13363do;
    }

    /* renamed from: this, reason: not valid java name */
    public void m14777this(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead.");
        }
        this.f13364if = i;
    }

    @Px
    /* renamed from: try, reason: not valid java name */
    public int m14778try() {
        return this.f13364if;
    }
}
