package android.support.v4;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class uf extends p9 {

    /* renamed from: do, reason: not valid java name */
    private static final String f6860do = "com.bumptech.glide.load.resource.bitmap.CenterCrop";

    /* renamed from: if, reason: not valid java name */
    private static final byte[] f6861if = f6860do.getBytes(Key.CHARSET);

    @Override // android.support.v4.p9
    /* renamed from: do */
    public Bitmap mo555do(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        return TransformationUtils.m11731if(bitmapPool, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        return obj instanceof uf;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return -599754482;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f6861if);
    }
}
