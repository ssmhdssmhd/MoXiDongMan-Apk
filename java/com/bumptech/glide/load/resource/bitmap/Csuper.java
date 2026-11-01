package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;

@Deprecated
/* renamed from: com.bumptech.glide.load.resource.bitmap.super, reason: invalid class name */
/* loaded from: classes.dex */
public class Csuper extends VideoDecoder<ParcelFileDescriptor> {
    public Csuper(Context context) {
        this(Glide.m11040new(context).m11053else());
    }

    public Csuper(BitmapPool bitmapPool) {
        super(bitmapPool, new VideoDecoder.Ccase());
    }
}
