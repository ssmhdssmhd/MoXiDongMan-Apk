package com.bumptech.glide;

import android.support.v4.cf1;
import androidx.annotation.NonNull;
import com.bumptech.glide.Cthis;
import com.bumptech.glide.request.transition.Cfor;
import com.bumptech.glide.request.transition.Cnew;
import com.bumptech.glide.request.transition.Ctry;
import com.bumptech.glide.request.transition.TransitionFactory;
import com.bumptech.glide.request.transition.ViewPropertyTransition;

/* renamed from: com.bumptech.glide.this, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cthis<CHILD extends Cthis<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: do, reason: not valid java name */
    private TransitionFactory<? super TranscodeType> f10463do = Cfor.m12025if();

    /* renamed from: new, reason: not valid java name */
    private CHILD m12031new() {
        return this;
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public final CHILD m12032case(@NonNull TransitionFactory<? super TranscodeType> transitionFactory) {
        this.f10463do = (TransitionFactory) cf1.m900new(transitionFactory);
        return (CHILD) m12031new();
    }

    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final CHILD clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    public final CHILD m12034else(@NonNull ViewPropertyTransition.Animator animator) {
        return (CHILD) m12032case(new Ctry(animator));
    }

    /* renamed from: for, reason: not valid java name */
    public final TransitionFactory<? super TranscodeType> m12035for() {
        return this.f10463do;
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public final CHILD m12036if() {
        return (CHILD) m12032case(Cfor.m12025if());
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public final CHILD m12037try(int i) {
        return (CHILD) m12032case(new Cnew(i));
    }
}
