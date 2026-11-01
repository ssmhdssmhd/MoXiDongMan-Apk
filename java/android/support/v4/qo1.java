package android.support.v4;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;
import com.bumptech.glide.util.Ccase;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class qo1 extends p9 {

    /* renamed from: do, reason: not valid java name */
    private final int f5506do;

    /* renamed from: if, reason: not valid java name */
    private static final String f5505if = "com.bumptech.glide.load.resource.bitmap.Rotate";

    /* renamed from: for, reason: not valid java name */
    private static final byte[] f5504for = f5505if.getBytes(Key.CHARSET);

    public qo1(int i) {
        this.f5506do = i;
    }

    @Override // android.support.v4.p9
    /* renamed from: do */
    public Bitmap mo555do(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        return TransformationUtils.m11728final(bitmap, this.f5506do);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        return (obj instanceof qo1) && this.f5506do == ((qo1) obj).f5506do;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return Ccase.m12055super(-950519196, Ccase.m12045final(this.f5506do));
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f5504for);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f5506do).array());
    }
}
