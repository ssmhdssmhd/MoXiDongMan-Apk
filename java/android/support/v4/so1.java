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
public final class so1 extends p9 {

    /* renamed from: do, reason: not valid java name */
    private final int f6220do;

    /* renamed from: if, reason: not valid java name */
    private static final String f6219if = "com.bumptech.glide.load.resource.bitmap.RoundedCorners";

    /* renamed from: for, reason: not valid java name */
    private static final byte[] f6218for = f6219if.getBytes(Key.CHARSET);

    public so1(int i) {
        cf1.m897do(i > 0, "roundingRadius must be greater than 0.");
        this.f6220do = i;
    }

    @Override // android.support.v4.p9
    /* renamed from: do */
    public Bitmap mo555do(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        return TransformationUtils.m11740while(bitmapPool, bitmap, this.f6220do);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        return (obj instanceof so1) && this.f6220do == ((so1) obj).f6220do;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return Ccase.m12055super(-569625254, Ccase.m12045final(this.f6220do));
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f6218for);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f6220do).array());
    }
}
