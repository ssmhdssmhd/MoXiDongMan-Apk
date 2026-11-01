package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(18)
/* renamed from: com.google.android.material.internal.goto, reason: invalid class name */
/* loaded from: classes.dex */
class Cgoto implements ViewOverlayImpl {

    /* renamed from: do, reason: not valid java name */
    private final ViewOverlay f12197do;

    public Cgoto(@NonNull View view) {
        this.f12197do = view.getOverlay();
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    public void add(@NonNull Drawable drawable) {
        this.f12197do.add(drawable);
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    public void remove(@NonNull Drawable drawable) {
        this.f12197do.remove(drawable);
    }
}
