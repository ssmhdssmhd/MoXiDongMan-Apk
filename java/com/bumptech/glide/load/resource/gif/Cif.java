package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.support.v4.f81;
import android.support.v4.n9;
import androidx.annotation.NonNull;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

/* renamed from: com.bumptech.glide.load.resource.gif.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif implements ResourceDecoder<GifDecoder, Bitmap> {

    /* renamed from: do, reason: not valid java name */
    private final BitmapPool f10249do;

    public Cif(BitmapPool bitmapPool) {
        this.f10249do = bitmapPool;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Resource<Bitmap> decode(@NonNull GifDecoder gifDecoder, int i, int i2, @NonNull f81 f81Var) {
        return n9.m5129if(gifDecoder.getNextFrame(), this.f10249do);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull GifDecoder gifDecoder, @NonNull f81 f81Var) {
        return true;
    }
}
