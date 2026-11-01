package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.v4.f81;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Cdo;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: com.bumptech.glide.load.resource.bitmap.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor implements ResourceDecoder<ByteBuffer, Bitmap> {

    /* renamed from: do, reason: not valid java name */
    private final Downsampler f10162do;

    public Cfor(Downsampler downsampler) {
        this.f10162do = downsampler;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Resource<Bitmap> decode(@NonNull ByteBuffer byteBuffer, int i, int i2, @NonNull f81 f81Var) throws IOException {
        return this.f10162do.m11715case(Cdo.m12061case(byteBuffer), i, i2, f81Var);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull ByteBuffer byteBuffer, @NonNull f81 f81Var) {
        return this.f10162do.m11720while(byteBuffer);
    }
}
