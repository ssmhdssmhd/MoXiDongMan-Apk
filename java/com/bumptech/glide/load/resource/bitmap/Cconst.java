package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.v4.f81;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.util.Cfor;
import com.bumptech.glide.util.Ctry;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.resource.bitmap.const, reason: invalid class name */
/* loaded from: classes.dex */
public class Cconst implements ResourceDecoder<InputStream, Bitmap> {

    /* renamed from: do, reason: not valid java name */
    private final Downsampler f10153do;

    /* renamed from: if, reason: not valid java name */
    private final ArrayPool f10154if;

    /* renamed from: com.bumptech.glide.load.resource.bitmap.const$do, reason: invalid class name */
    public static class Cdo implements Downsampler.DecodeCallbacks {

        /* renamed from: do, reason: not valid java name */
        private final Ccatch f10155do;

        /* renamed from: if, reason: not valid java name */
        private final Cfor f10156if;

        public Cdo(Ccatch ccatch, Cfor cfor) {
            this.f10155do = ccatch;
            this.f10156if = cfor;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public void onDecodeComplete(BitmapPool bitmapPool, Bitmap bitmap) throws IOException {
            IOException iOExceptionM12071if = this.f10156if.m12071if();
            if (iOExceptionM12071if != null) {
                if (bitmap == null) {
                    throw iOExceptionM12071if;
                }
                bitmapPool.put(bitmap);
                throw iOExceptionM12071if;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public void onObtainBounds() {
            this.f10155do.m11760if();
        }
    }

    public Cconst(Downsampler downsampler, ArrayPool arrayPool) {
        this.f10153do = downsampler;
        this.f10154if = arrayPool;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Resource<Bitmap> decode(@NonNull InputStream inputStream, int i, int i2, @NonNull f81 f81Var) throws IOException {
        Ccatch ccatch;
        boolean z;
        if (inputStream instanceof Ccatch) {
            ccatch = (Ccatch) inputStream;
            z = false;
        } else {
            ccatch = new Ccatch(inputStream, this.f10154if);
            z = true;
        }
        Cfor cforM12070for = Cfor.m12070for(ccatch);
        try {
            return this.f10153do.m11716else(new Ctry(cforM12070for), i, i2, f81Var, new Cdo(ccatch, cforM12070for));
        } finally {
            cforM12070for.m12072new();
            if (z) {
                ccatch.m11759for();
            }
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull InputStream inputStream, @NonNull f81 f81Var) {
        return this.f10153do.m11719throw(inputStream);
    }
}
