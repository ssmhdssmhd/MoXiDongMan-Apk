package android.support.v4;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class wb2<T> implements Transformation<T> {

    /* renamed from: do, reason: not valid java name */
    private static final Transformation<?> f7454do = new wb2();

    private wb2() {
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public static <T> wb2<T> m9118do() {
        return (wb2) f7454do;
    }

    @Override // com.bumptech.glide.load.Transformation
    @NonNull
    public Resource<T> transform(@NonNull Context context, @NonNull Resource<T> resource, int i, int i2) {
        return resource;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
    }
}
