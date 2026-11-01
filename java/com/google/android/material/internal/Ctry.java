package com.google.android.material.internal;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* renamed from: com.google.android.material.internal.try, reason: invalid class name */
/* loaded from: classes.dex */
class Ctry extends Celse implements ViewGroupOverlayImpl {
    public Ctry(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
    }

    /* renamed from: if, reason: not valid java name */
    public static Ctry m13692if(ViewGroup viewGroup) {
        return (Ctry) Celse.m13666do(viewGroup);
    }

    @Override // com.google.android.material.internal.ViewGroupOverlayImpl
    public void add(@NonNull View view) {
        this.f12183do.m13674if(view);
    }

    @Override // com.google.android.material.internal.ViewGroupOverlayImpl
    public void remove(@NonNull View view) {
        this.f12183do.m13673goto(view);
    }
}
