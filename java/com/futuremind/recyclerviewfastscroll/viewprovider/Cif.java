package com.futuremind.recyclerviewfastscroll.viewprovider;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.view.View;
import androidx.annotation.AnimatorRes;
import com.futuremind.recyclerviewfastscroll.R;

/* renamed from: com.futuremind.recyclerviewfastscroll.viewprovider.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif {

    /* renamed from: do, reason: not valid java name */
    public final View f10922do;

    /* renamed from: for, reason: not valid java name */
    public AnimatorSet f10923for;

    /* renamed from: if, reason: not valid java name */
    public AnimatorSet f10924if;

    /* renamed from: new, reason: not valid java name */
    private float f10925new;

    /* renamed from: try, reason: not valid java name */
    private float f10926try;

    /* renamed from: com.futuremind.recyclerviewfastscroll.viewprovider.if$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public boolean f10927do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ View f10929if;

        public Cdo(View view) {
            this.f10929if = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            super.onAnimationCancel(animator);
            this.f10927do = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (!this.f10927do) {
                this.f10929if.setVisibility(4);
            }
            this.f10927do = false;
        }
    }

    /* renamed from: com.futuremind.recyclerviewfastscroll.viewprovider.if$for, reason: invalid class name */
    public static class Cfor extends AbstractC0054if<Cif> {
        public Cfor(View view) {
            super(view);
        }

        @Override // com.futuremind.recyclerviewfastscroll.viewprovider.Cif.AbstractC0054if
        /* renamed from: do, reason: not valid java name */
        public Cif mo12349do() {
            return new Cif(this.f10931do, this.f10933if, this.f10932for, this.f10935try, this.f10930case, this.f10934new);
        }
    }

    /* renamed from: com.futuremind.recyclerviewfastscroll.viewprovider.if$if, reason: invalid class name and collision with other inner class name */
    public static abstract class AbstractC0054if<T extends Cif> {

        /* renamed from: do, reason: not valid java name */
        public final View f10931do;

        /* renamed from: if, reason: not valid java name */
        public int f10933if = R.animator.fastscroll__default_show;

        /* renamed from: for, reason: not valid java name */
        public int f10932for = R.animator.fastscroll__default_hide;

        /* renamed from: new, reason: not valid java name */
        public int f10934new = 1000;

        /* renamed from: try, reason: not valid java name */
        public float f10935try = 0.5f;

        /* renamed from: case, reason: not valid java name */
        public float f10930case = 0.5f;

        public AbstractC0054if(View view) {
            this.f10931do = view;
        }

        /* renamed from: case, reason: not valid java name */
        public AbstractC0054if<T> m12350case(@AnimatorRes int i) {
            this.f10933if = i;
            return this;
        }

        /* renamed from: do */
        public abstract T mo12349do();

        /* renamed from: for, reason: not valid java name */
        public AbstractC0054if<T> m12351for(int i) {
            this.f10934new = i;
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public AbstractC0054if<T> m12352if(@AnimatorRes int i) {
            this.f10932for = i;
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public AbstractC0054if<T> m12353new(float f) {
            this.f10935try = f;
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public AbstractC0054if<T> m12354try(float f) {
            this.f10930case = f;
            return this;
        }
    }

    public Cif(View view, @AnimatorRes int i, @AnimatorRes int i2, float f, float f2, int i3) {
        this.f10922do = view;
        this.f10925new = f;
        this.f10926try = f2;
        AnimatorSet animatorSet = (AnimatorSet) AnimatorInflater.loadAnimator(view.getContext(), i2);
        this.f10924if = animatorSet;
        animatorSet.setStartDelay(i3);
        this.f10924if.setTarget(view);
        AnimatorSet animatorSet2 = (AnimatorSet) AnimatorInflater.loadAnimator(view.getContext(), i);
        this.f10923for = animatorSet2;
        animatorSet2.setTarget(view);
        this.f10924if.addListener(new Cdo(view));
        m12347for();
    }

    /* renamed from: do, reason: not valid java name */
    public void m12346do() {
        m12347for();
        this.f10924if.start();
    }

    /* renamed from: for, reason: not valid java name */
    public void m12347for() {
        this.f10922do.setPivotX(this.f10925new * r0.getMeasuredWidth());
        this.f10922do.setPivotY(this.f10926try * r0.getMeasuredHeight());
    }

    /* renamed from: if, reason: not valid java name */
    public void m12348if() {
        this.f10924if.cancel();
        if (this.f10922do.getVisibility() == 4) {
            this.f10922do.setVisibility(0);
            m12347for();
            this.f10923for.start();
        }
    }
}
