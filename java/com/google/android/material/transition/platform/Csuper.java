package com.google.android.material.transition.platform;

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
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@RequiresApi(21)
/* renamed from: com.google.android.material.transition.platform.super, reason: invalid class name */
/* loaded from: classes.dex */
public final class Csuper implements VisibilityAnimatorProvider {

    /* renamed from: for, reason: not valid java name */
    private static final int f13589for = -1;

    /* renamed from: do, reason: not valid java name */
    private int f13590do;

    /* renamed from: if, reason: not valid java name */
    @Px
    private int f13591if = -1;

    /* renamed from: com.google.android.material.transition.platform.super$do, reason: invalid class name */
    public static class Cdo extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13592do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f13593if;

        public Cdo(View view, float f) {
            this.f13592do = view;
            this.f13593if = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f13592do.setTranslationX(this.f13593if);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.transition.platform.super$for, reason: invalid class name */
    public @interface Cfor {
    }

    /* renamed from: com.google.android.material.transition.platform.super$if, reason: invalid class name */
    public static class Cif extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13594do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f13595if;

        public Cif(View view, float f) {
            this.f13594do = view;
            this.f13595if = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f13594do.setTranslationY(this.f13595if);
        }
    }

    public Csuper(int i) {
        this.f13590do = i;
    }

    /* renamed from: case, reason: not valid java name */
    private int m14947case(Context context) {
        int i = this.f13591if;
        return i != -1 ? i : context.getResources().getDimensionPixelSize(R.dimen.mtrl_transition_shared_axis_slide_distance);
    }

    /* renamed from: do, reason: not valid java name */
    private static Animator m14948do(View view, View view2, int i, @Px int i2) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i == 3) {
            return m14949for(view2, i2 + translationX, translationX, translationX);
        }
        if (i == 5) {
            return m14949for(view2, translationX - i2, translationX, translationX);
        }
        if (i == 48) {
            return m14952new(view2, translationY - i2, translationY, translationY);
        }
        if (i == 80) {
            return m14952new(view2, i2 + translationY, translationY, translationY);
        }
        if (i == 8388611) {
            return m14949for(view2, m14950goto(view) ? i2 + translationX : translationX - i2, translationX, translationX);
        }
        if (i == 8388613) {
            return m14949for(view2, m14950goto(view) ? translationX - i2 : i2 + translationX, translationX, translationX);
        }
        throw new IllegalArgumentException("Invalid slide direction: " + i);
    }

    /* renamed from: for, reason: not valid java name */
    private static Animator m14949for(View view, float f, float f2, float f3) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f, f2));
        objectAnimatorOfPropertyValuesHolder.addListener(new Cdo(view, f3));
        return objectAnimatorOfPropertyValuesHolder;
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean m14950goto(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    /* renamed from: if, reason: not valid java name */
    private static Animator m14951if(View view, View view2, int i, @Px int i2) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i == 3) {
            return m14949for(view2, translationX, translationX - i2, translationX);
        }
        if (i == 5) {
            return m14949for(view2, translationX, i2 + translationX, translationX);
        }
        if (i == 48) {
            return m14952new(view2, translationY, i2 + translationY, translationY);
        }
        if (i == 80) {
            return m14952new(view2, translationY, translationY - i2, translationY);
        }
        if (i == 8388611) {
            return m14949for(view2, translationX, m14950goto(view) ? translationX - i2 : i2 + translationX, translationX);
        }
        if (i == 8388613) {
            return m14949for(view2, translationX, m14950goto(view) ? i2 + translationX : translationX - i2, translationX);
        }
        throw new IllegalArgumentException("Invalid slide direction: " + i);
    }

    /* renamed from: new, reason: not valid java name */
    private static Animator m14952new(View view, float f, float f2, float f3) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f, f2));
        objectAnimatorOfPropertyValuesHolder.addListener(new Cif(view, f3));
        return objectAnimatorOfPropertyValuesHolder;
    }

    /* renamed from: break, reason: not valid java name */
    public void m14953break(int i) {
        this.f13590do = i;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return m14948do(viewGroup, view, this.f13590do, m14947case(view.getContext()));
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return m14951if(viewGroup, view, this.f13590do, m14947case(view.getContext()));
    }

    /* renamed from: else, reason: not valid java name */
    public int m14954else() {
        return this.f13590do;
    }

    /* renamed from: this, reason: not valid java name */
    public void m14955this(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead.");
        }
        this.f13591if = i;
    }

    @Px
    /* renamed from: try, reason: not valid java name */
    public int m14956try() {
        return this.f13591if;
    }
}
