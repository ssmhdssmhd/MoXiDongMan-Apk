package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import android.support.v4.f81;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import java.io.IOException;

@RequiresApi(21)
/* renamed from: com.bumptech.glide.load.resource.bitmap.break, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cbreak implements ResourceDecoder<ParcelFileDescriptor, Bitmap> {

    /* renamed from: do, reason: not valid java name */
    private final Downsampler f10142do;

    public Cbreak(Downsampler downsampler) {
        this.f10142do = downsampler;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    @Nullable
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Resource<Bitmap> decode(@NonNull ParcelFileDescriptor parcelFileDescriptor, int i, int i2, @NonNull f81 f81Var) throws IOException {
        return this.f10142do.m11717new(parcelFileDescriptor, i, i2, f81Var);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull ParcelFileDescriptor parcelFileDescriptor, @NonNull f81 f81Var) {
        return this.f10142do.m11718super(parcelFileDescriptor);
    }
}
