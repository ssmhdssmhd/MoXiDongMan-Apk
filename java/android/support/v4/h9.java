package android.support.v4;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.bitmap.Celse;
import java.security.MessageDigest;

@Deprecated
/* loaded from: classes.dex */
public class h9 implements Transformation<BitmapDrawable> {

    /* renamed from: do, reason: not valid java name */
    private final Transformation<Drawable> f2346do;

    public h9(Transformation<Bitmap> transformation) {
        this.f2346do = (Transformation) cf1.m900new(new Celse(transformation, false));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do, reason: not valid java name */
    private static Resource<BitmapDrawable> m2967do(Resource<Drawable> resource) {
        if (resource.get() instanceof BitmapDrawable) {
            return resource;
        }
        throw new IllegalArgumentException("Wrapped transformation unexpectedly returned a non BitmapDrawable resource: " + resource.get());
    }

    /* renamed from: if, reason: not valid java name */
    private static Resource<Drawable> m2968if(Resource<BitmapDrawable> resource) {
        return resource;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof h9) {
            return this.f2346do.equals(((h9) obj).f2346do);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.f2346do.hashCode();
    }

    @Override // com.bumptech.glide.load.Transformation
    @NonNull
    public Resource<BitmapDrawable> transform(@NonNull Context context, @NonNull Resource<BitmapDrawable> resource, int i, int i2) {
        return m2967do(this.f2346do.transform(context, m2968if(resource), i, i2));
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f2346do.updateDiskCacheKey(messageDigest);
    }
}
