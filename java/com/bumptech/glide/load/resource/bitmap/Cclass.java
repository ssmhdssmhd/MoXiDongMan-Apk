package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.f81;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.drawable.Cif;

/* renamed from: com.bumptech.glide.load.resource.bitmap.class, reason: invalid class name */
/* loaded from: classes.dex */
public class Cclass implements ResourceDecoder<Uri, Bitmap> {

    /* renamed from: do, reason: not valid java name */
    private final Cif f10151do;

    /* renamed from: if, reason: not valid java name */
    private final BitmapPool f10152if;

    public Cclass(Cif cif, BitmapPool bitmapPool) {
        this.f10151do = cif;
        this.f10152if = bitmapPool;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    @Nullable
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Resource<Bitmap> decode(@NonNull Uri uri, int i, int i2, @NonNull f81 f81Var) {
        Resource<Drawable> resourceDecode = this.f10151do.decode(uri, i, i2, f81Var);
        if (resourceDecode == null) {
            return null;
        }
        return Ccase.m11755do(this.f10152if, resourceDecode.get(), i, i2);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull Uri uri, @NonNull f81 f81Var) {
        return "android.resource".equals(uri.getScheme());
    }
}
