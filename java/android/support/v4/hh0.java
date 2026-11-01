package android.support.v4;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class hh0 implements Transformation<GifDrawable> {

    /* renamed from: do, reason: not valid java name */
    private final Transformation<Bitmap> f2405do;

    public hh0(Transformation<Bitmap> transformation) {
        this.f2405do = (Transformation) cf1.m900new(transformation);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof hh0) {
            return this.f2405do.equals(((hh0) obj).f2405do);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.f2405do.hashCode();
    }

    @Override // com.bumptech.glide.load.Transformation
    @NonNull
    public Resource<GifDrawable> transform(@NonNull Context context, @NonNull Resource<GifDrawable> resource, int i, int i2) {
        GifDrawable gifDrawable = resource.get();
        Resource<Bitmap> n9Var = new n9(gifDrawable.m11803new(), Glide.m11040new(context).m11053else());
        Resource<Bitmap> resourceTransform = this.f2405do.transform(context, n9Var, i, i2);
        if (!n9Var.equals(resourceTransform)) {
            n9Var.recycle();
        }
        gifDrawable.m11801final(this.f2405do, resourceTransform.get());
        return resource;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f2405do.updateDiskCacheKey(messageDigest);
    }
}
