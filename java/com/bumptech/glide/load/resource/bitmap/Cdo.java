package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.cf1;
import android.support.v4.es0;
import android.support.v4.f81;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.resource.bitmap.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo<DataType> implements ResourceDecoder<DataType, BitmapDrawable> {

    /* renamed from: do, reason: not valid java name */
    private final ResourceDecoder<DataType, Bitmap> f10157do;

    /* renamed from: if, reason: not valid java name */
    private final Resources f10158if;

    public Cdo(Context context, ResourceDecoder<DataType, Bitmap> resourceDecoder) {
        this(context.getResources(), resourceDecoder);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public Resource<BitmapDrawable> decode(@NonNull DataType datatype, int i, int i2, @NonNull f81 f81Var) throws IOException {
        return es0.m2002new(this.f10158if, this.f10157do.decode(datatype, i, i2, f81Var));
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public boolean handles(@NonNull DataType datatype, @NonNull f81 f81Var) throws IOException {
        return this.f10157do.handles(datatype, f81Var);
    }

    @Deprecated
    public Cdo(Resources resources, BitmapPool bitmapPool, ResourceDecoder<DataType, Bitmap> resourceDecoder) {
        this(resources, resourceDecoder);
    }

    public Cdo(@NonNull Resources resources, @NonNull ResourceDecoder<DataType, Bitmap> resourceDecoder) {
        this.f10158if = (Resources) cf1.m900new(resources);
        this.f10157do = (ResourceDecoder) cf1.m900new(resourceDecoder);
    }
}
