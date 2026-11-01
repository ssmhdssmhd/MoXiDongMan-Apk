package android.support.v4;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class yl extends p9 {

    /* renamed from: do, reason: not valid java name */
    private static final int f8262do = 1;

    /* renamed from: if, reason: not valid java name */
    private static final String f8264if = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1";

    /* renamed from: for, reason: not valid java name */
    private static final byte[] f8263for = f8264if.getBytes(Key.CHARSET);

    @Override // android.support.v4.p9
    /* renamed from: do */
    public Bitmap mo555do(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        return TransformationUtils.m11734new(bitmapPool, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        return obj instanceof yl;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return 1101716364;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f8263for);
    }
}
