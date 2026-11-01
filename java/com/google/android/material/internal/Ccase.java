package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(18)
/* renamed from: com.google.android.material.internal.case, reason: invalid class name */
/* loaded from: classes.dex */
class Ccase implements ViewGroupOverlayImpl {

    /* renamed from: do, reason: not valid java name */
    private final ViewGroupOverlay f12141do;

    public Ccase(@NonNull ViewGroup viewGroup) {
        this.f12141do = viewGroup.getOverlay();
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    public void add(@NonNull Drawable drawable) {
        this.f12141do.add(drawable);
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    public void remove(@NonNull Drawable drawable) {
        this.f12141do.remove(drawable);
    }

    @Override // com.google.android.material.internal.ViewGroupOverlayImpl
    public void add(@NonNull View view) {
        this.f12141do.add(view);
    }

    @Override // com.google.android.material.internal.ViewGroupOverlayImpl
    public void remove(@NonNull View view) {
        this.f12141do.remove(view);
    }
}
