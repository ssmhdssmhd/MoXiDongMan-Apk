package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Drawable;
import android.support.v4.f81;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;

/* renamed from: com.bumptech.glide.load.resource.drawable.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor implements ResourceDecoder<Drawable, Drawable> {
    @Override // com.bumptech.glide.load.ResourceDecoder
    @Nullable
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Resource<Drawable> decode(@NonNull Drawable drawable, int i, int i2, @NonNull f81 f81Var) {
        return Cdo.m11781if(drawable);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull Drawable drawable, @NonNull f81 f81Var) {
        return true;
    }
}
