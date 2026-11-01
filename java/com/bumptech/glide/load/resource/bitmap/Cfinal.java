package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.v4.f81;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Ccase;

/* renamed from: com.bumptech.glide.load.resource.bitmap.final, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfinal implements ResourceDecoder<Bitmap, Bitmap> {

    /* renamed from: com.bumptech.glide.load.resource.bitmap.final$do, reason: invalid class name */
    public static final class Cdo implements Resource<Bitmap> {

        /* renamed from: do, reason: not valid java name */
        private final Bitmap f10161do;

        public Cdo(@NonNull Bitmap bitmap) {
            this.f10161do = bitmap;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Bitmap get() {
            return this.f10161do;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        @NonNull
        public Class<Bitmap> getResourceClass() {
            return Bitmap.class;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public int getSize() {
            return Ccase.m12047goto(this.f10161do);
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public void recycle() {
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Resource<Bitmap> decode(@NonNull Bitmap bitmap, int i, int i2, @NonNull f81 f81Var) {
        return new Cdo(bitmap);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull Bitmap bitmap, @NonNull f81 f81Var) {
        return true;
    }
}
