package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Drawable;
import android.support.v4.e30;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.Resource;

/* renamed from: com.bumptech.glide.load.resource.drawable.do, reason: invalid class name */
/* loaded from: classes.dex */
final class Cdo extends e30<Drawable> {
    private Cdo(Drawable drawable) {
        super(drawable);
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    public static Resource<Drawable> m11781if(@Nullable Drawable drawable) {
        if (drawable != null) {
            return new Cdo(drawable);
        }
        return null;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<Drawable> getResourceClass() {
        return this.f1241do.getClass();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return Math.max(1, this.f1241do.getIntrinsicWidth() * this.f1241do.getIntrinsicHeight() * 4);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
    }
}
