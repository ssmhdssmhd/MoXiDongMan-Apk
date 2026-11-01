package com.bumptech.glide.request.transition;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import com.bumptech.glide.request.transition.Transition;

/* renamed from: com.bumptech.glide.request.transition.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif implements Transition<Drawable> {

    /* renamed from: do, reason: not valid java name */
    private final int f10448do;

    /* renamed from: if, reason: not valid java name */
    private final boolean f10449if;

    public Cif(int i, boolean z) {
        this.f10448do = i;
        this.f10449if = z;
    }

    @Override // com.bumptech.glide.request.transition.Transition
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean transition(Drawable drawable, Transition.ViewAdapter viewAdapter) {
        Drawable currentDrawable = viewAdapter.getCurrentDrawable();
        if (currentDrawable == null) {
            currentDrawable = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{currentDrawable, drawable});
        transitionDrawable.setCrossFadeEnabled(this.f10449if);
        transitionDrawable.startTransition(this.f10448do);
        viewAdapter.setDrawable(transitionDrawable);
        return true;
    }
}
