package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.support.v4.f81;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Cdo;
import java.io.IOException;
import java.io.InputStream;

@RequiresApi(api = 28)
/* renamed from: com.bumptech.glide.load.resource.bitmap.this, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cthis implements ResourceDecoder<InputStream, Bitmap> {

    /* renamed from: do, reason: not valid java name */
    private final Cif f10166do = new Cif();

    @Override // com.bumptech.glide.load.ResourceDecoder
    @Nullable
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Resource<Bitmap> decode(@NonNull InputStream inputStream, int i, int i2, @NonNull f81 f81Var) throws IOException {
        return this.f10166do.decode(ImageDecoder.createSource(Cdo.m12065if(inputStream)), i, i2, f81Var);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull InputStream inputStream, @NonNull f81 f81Var) throws IOException {
        return true;
    }
}
