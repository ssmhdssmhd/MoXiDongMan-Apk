package android.support.v4;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class hc0 extends p9 {

    /* renamed from: do, reason: not valid java name */
    private static final String f2365do = "com.bumptech.glide.load.resource.bitmap.FitCenter";

    /* renamed from: if, reason: not valid java name */
    private static final byte[] f2366if = f2365do.getBytes(Key.CHARSET);

    @Override // android.support.v4.p9
    /* renamed from: do */
    public Bitmap mo555do(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        return TransformationUtils.m11722case(bitmapPool, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        return obj instanceof hc0;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return 1572326941;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f2366if);
    }
}
