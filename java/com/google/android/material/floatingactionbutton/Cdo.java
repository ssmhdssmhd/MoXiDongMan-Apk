package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import androidx.annotation.Nullable;

/* renamed from: com.google.android.material.floatingactionbutton.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo {

    /* renamed from: do, reason: not valid java name */
    @Nullable
    private Animator f11995do;

    /* renamed from: do, reason: not valid java name */
    public void m13510do() {
        Animator animator = this.f11995do;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m13511for(Animator animator) {
        m13510do();
        this.f11995do = animator;
    }

    /* renamed from: if, reason: not valid java name */
    public void m13512if() {
        this.f11995do = null;
    }
}
