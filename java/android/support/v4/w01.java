package android.support.v4;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public class w01<T> implements Transformation<T> {

    /* renamed from: do, reason: not valid java name */
    private final Collection<? extends Transformation<T>> f7368do;

    @SafeVarargs
    public w01(@NonNull Transformation<T>... transformationArr) {
        if (transformationArr.length == 0) {
            throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
        }
        this.f7368do = Arrays.asList(transformationArr);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof w01) {
            return this.f7368do.equals(((w01) obj).f7368do);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.f7368do.hashCode();
    }

    @Override // com.bumptech.glide.load.Transformation
    @NonNull
    public Resource<T> transform(@NonNull Context context, @NonNull Resource<T> resource, int i, int i2) {
        Iterator<? extends Transformation<T>> it = this.f7368do.iterator();
        Resource<T> resource2 = resource;
        while (it.hasNext()) {
            Resource<T> resourceTransform = it.next().transform(context, resource2, i, i2);
            if (resource2 != null && !resource2.equals(resource) && !resource2.equals(resourceTransform)) {
                resource2.recycle();
            }
            resource2 = resourceTransform;
        }
        return resource2;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        Iterator<? extends Transformation<T>> it = this.f7368do.iterator();
        while (it.hasNext()) {
            it.next().updateDiskCacheKey(messageDigest);
        }
    }

    public w01(@NonNull Collection<? extends Transformation<T>> collection) {
        if (!collection.isEmpty()) {
            this.f7368do = collection;
            return;
        }
        throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
    }
}
