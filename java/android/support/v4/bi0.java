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
public final class bi0 extends p9 {

    /* renamed from: do, reason: not valid java name */
    private final float f449do;

    /* renamed from: for, reason: not valid java name */
    private final float f450for;

    /* renamed from: if, reason: not valid java name */
    private final float f451if;

    /* renamed from: new, reason: not valid java name */
    private final float f452new;

    /* renamed from: try, reason: not valid java name */
    private static final String f448try = "com.bumptech.glide.load.resource.bitmap.GranularRoundedCorners";

    /* renamed from: case, reason: not valid java name */
    private static final byte[] f447case = f448try.getBytes(Key.CHARSET);

    public bi0(float f, float f2, float f3, float f4) {
        this.f449do = f;
        this.f451if = f2;
        this.f450for = f3;
        this.f452new = f4;
    }

    @Override // android.support.v4.p9
    /* renamed from: do, reason: not valid java name */
    public Bitmap mo555do(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        return TransformationUtils.m11738throw(bitmapPool, bitmap, this.f449do, this.f451if, this.f450for, this.f452new);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (!(obj instanceof bi0)) {
            return false;
        }
        bi0 bi0Var = (bi0) obj;
        return this.f449do == bi0Var.f449do && this.f451if == bi0Var.f451if && this.f450for == bi0Var.f450for && this.f452new == bi0Var.f452new;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return Ccase.m12042const(this.f452new, Ccase.m12042const(this.f450for, Ccase.m12042const(this.f451if, Ccase.m12055super(-2013597734, Ccase.m12041class(this.f449do)))));
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f447case);
        messageDigest.update(ByteBuffer.allocate(16).putFloat(this.f449do).putFloat(this.f451if).putFloat(this.f450for).putFloat(this.f452new).array());
    }
}
