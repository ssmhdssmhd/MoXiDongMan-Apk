package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.support.v4.f81;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import java.io.IOException;
import java.nio.ByteBuffer;

@RequiresApi(api = 28)
/* renamed from: com.bumptech.glide.load.resource.bitmap.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew implements ResourceDecoder<ByteBuffer, Bitmap> {

    /* renamed from: do, reason: not valid java name */
    private final Cif f10165do = new Cif();

    @Override // com.bumptech.glide.load.ResourceDecoder
    @Nullable
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Resource<Bitmap> decode(@NonNull ByteBuffer byteBuffer, int i, int i2, @NonNull f81 f81Var) throws IOException {
        return this.f10165do.decode(ImageDecoder.createSource(byteBuffer), i, i2, f81Var);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull ByteBuffer byteBuffer, @NonNull f81 f81Var) throws IOException {
        return true;
    }
}
