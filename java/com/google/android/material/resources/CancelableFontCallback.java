package com.google.android.material.resources;

import android.graphics.Typeface;
import android.support.v4.c62;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class CancelableFontCallback extends c62 {

    /* renamed from: do, reason: not valid java name */
    private final Typeface f12437do;

    /* renamed from: for, reason: not valid java name */
    private boolean f12438for;

    /* renamed from: if, reason: not valid java name */
    private final ApplyFont f12439if;

    public interface ApplyFont {
        void apply(Typeface typeface);
    }

    public CancelableFontCallback(ApplyFont applyFont, Typeface typeface) {
        this.f12437do = typeface;
        this.f12439if = applyFont;
    }

    /* renamed from: new, reason: not valid java name */
    private void m13892new(Typeface typeface) {
        if (this.f12438for) {
            return;
        }
        this.f12439if.apply(typeface);
    }

    @Override // android.support.v4.c62
    /* renamed from: do */
    public void mo757do(int i) {
        m13892new(this.f12437do);
    }

    /* renamed from: for, reason: not valid java name */
    public void m13893for() {
        this.f12438for = true;
    }

    @Override // android.support.v4.c62
    /* renamed from: if */
    public void mo758if(Typeface typeface, boolean z) {
        m13892new(typeface);
    }
}
