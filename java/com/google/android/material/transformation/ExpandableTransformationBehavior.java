package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@Deprecated
/* loaded from: classes.dex */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* renamed from: try, reason: not valid java name */
    @Nullable
    private AnimatorSet f13206try;

    /* renamed from: com.google.android.material.transformation.ExpandableTransformationBehavior$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {
        public Cdo() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ExpandableTransformationBehavior.this.f13206try = null;
        }
    }

    public ExpandableTransformationBehavior() {
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    public abstract AnimatorSet mo14632else(View view, View view2, boolean z, boolean z2);

    @Override // com.google.android.material.transformation.ExpandableBehavior
    @CallSuper
    /* renamed from: try */
    public boolean mo14630try(View view, View view2, boolean z, boolean z2) {
        AnimatorSet animatorSet = this.f13206try;
        boolean z3 = animatorSet != null;
        if (z3) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSetMo14632else = mo14632else(view, view2, z, z3);
        this.f13206try = animatorSetMo14632else;
        animatorSetMo14632else.addListener(new Cdo());
        this.f13206try.start();
        if (!z2) {
            this.f13206try.end();
        }
        return true;
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
