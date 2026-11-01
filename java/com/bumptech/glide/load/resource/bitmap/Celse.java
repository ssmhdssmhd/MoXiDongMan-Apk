package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.es0;
import androidx.annotation.NonNull;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.security.MessageDigest;

/* renamed from: com.bumptech.glide.load.resource.bitmap.else, reason: invalid class name */
/* loaded from: classes.dex */
public class Celse implements Transformation<Drawable> {

    /* renamed from: do, reason: not valid java name */
    private final Transformation<Bitmap> f10159do;

    /* renamed from: if, reason: not valid java name */
    private final boolean f10160if;

    public Celse(Transformation<Bitmap> transformation, boolean z) {
        this.f10159do = transformation;
        this.f10160if = z;
    }

    /* renamed from: if, reason: not valid java name */
    private Resource<Drawable> m11765if(Context context, Resource<Bitmap> resource) {
        return es0.m2002new(context.getResources(), resource);
    }

    /* renamed from: do, reason: not valid java name */
    public Transformation<BitmapDrawable> m11766do() {
        return this;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof Celse) {
            return this.f10159do.equals(((Celse) obj).f10159do);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.f10159do.hashCode();
    }

    @Override // com.bumptech.glide.load.Transformation
    @NonNull
    public Resource<Drawable> transform(@NonNull Context context, @NonNull Resource<Drawable> resource, int i, int i2) {
        BitmapPool bitmapPoolM11053else = Glide.m11040new(context).m11053else();
        Drawable drawable = resource.get();
        Resource<Bitmap> resourceM11755do = Ccase.m11755do(bitmapPoolM11053else, drawable, i, i2);
        if (resourceM11755do != null) {
            Resource<Bitmap> resourceTransform = this.f10159do.transform(context, resourceM11755do, i, i2);
            if (!resourceTransform.equals(resourceM11755do)) {
                return m11765if(context, resourceTransform);
            }
            resourceTransform.recycle();
            return resource;
        }
        if (!this.f10160if) {
            return resource;
        }
        throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f10159do.updateDiskCacheKey(messageDigest);
    }
}
