package android.support.v4;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class vf extends p9 {

    /* renamed from: do, reason: not valid java name */
    private static final String f7164do = "com.bumptech.glide.load.resource.bitmap.CenterInside";

    /* renamed from: if, reason: not valid java name */
    private static final byte[] f7165if = f7164do.getBytes(Key.CHARSET);

    @Override // android.support.v4.p9
    /* renamed from: do */
    public Bitmap mo555do(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        return TransformationUtils.m11729for(bitmapPool, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        return obj instanceof vf;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return -670243078;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f7165if);
    }
}
