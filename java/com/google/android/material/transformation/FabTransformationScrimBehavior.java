package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.support.v4.r01;
import android.support.v4.z1;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;

@Deprecated
/* loaded from: classes.dex */
public class FabTransformationScrimBehavior extends ExpandableTransformationBehavior {

    /* renamed from: break, reason: not valid java name */
    public static final long f13227break = 0;

    /* renamed from: catch, reason: not valid java name */
    public static final long f13228catch = 150;

    /* renamed from: goto, reason: not valid java name */
    public static final long f13229goto = 75;

    /* renamed from: this, reason: not valid java name */
    public static final long f13230this = 150;

    /* renamed from: case, reason: not valid java name */
    private final r01 f13231case;

    /* renamed from: else, reason: not valid java name */
    private final r01 f13232else;

    /* renamed from: com.google.android.material.transformation.FabTransformationScrimBehavior$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f13233do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ View f13235if;

        public Cdo(boolean z, View view) {
            this.f13233do = z;
            this.f13235if = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f13233do) {
                return;
            }
            this.f13235if.setVisibility(4);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f13233do) {
                this.f13235if.setVisibility(0);
            }
        }
    }

    public FabTransformationScrimBehavior() {
        this.f13231case = new r01(75L, 150L);
        this.f13232else = new r01(0L, 150L);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m14655goto(@NonNull View view, boolean z, boolean z2, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfFloat;
        r01 r01Var = z ? this.f13231case : this.f13232else;
        if (z) {
            if (!z2) {
                view.setAlpha(0.0f);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 1.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 0.0f);
        }
        r01Var.m6721do(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    @NonNull
    /* renamed from: else */
    public AnimatorSet mo14632else(@NonNull View view, @NonNull View view2, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        m14655goto(view2, z, z2, arrayList, new ArrayList());
        AnimatorSet animatorSet = new AnimatorSet();
        z1.m10010do(animatorSet, arrayList);
        animatorSet.addListener(new Cdo(z, view2));
        return animatorSet;
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 instanceof FloatingActionButton;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
        return super.onTouchEvent(coordinatorLayout, view, motionEvent);
    }

    public FabTransformationScrimBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13231case = new r01(75L, 150L);
        this.f13232else = new r01(0L, 150L);
    }
}
