package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.support.v4.q01;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.List;

/* loaded from: classes.dex */
interface MotionStrategy {
    void addAnimationListener(@NonNull Animator.AnimatorListener animatorListener);

    AnimatorSet createAnimator();

    q01 getCurrentMotionSpec();

    @AnimatorRes
    int getDefaultMotionSpecResource();

    List<Animator.AnimatorListener> getListeners();

    @Nullable
    q01 getMotionSpec();

    void onAnimationCancel();

    void onAnimationEnd();

    void onAnimationStart(Animator animator);

    void onChange(@Nullable ExtendedFloatingActionButton.Cbreak cbreak);

    void performNow();

    void removeAnimationListener(@NonNull Animator.AnimatorListener animatorListener);

    void setMotionSpec(@Nullable q01 q01Var);

    boolean shouldCancel();
}
