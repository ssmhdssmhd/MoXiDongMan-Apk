package android.support.v4;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Ccase;

/* loaded from: classes.dex */
public class n9 implements Resource<Bitmap>, Initializable {

    /* renamed from: do, reason: not valid java name */
    private final Bitmap f4144do;

    /* renamed from: if, reason: not valid java name */
    private final BitmapPool f4145if;

    public n9(@NonNull Bitmap bitmap, @NonNull BitmapPool bitmapPool) {
        this.f4144do = (Bitmap) cf1.m901try(bitmap, "Bitmap must not be null");
        this.f4145if = (BitmapPool) cf1.m901try(bitmapPool, "BitmapPool must not be null");
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    public static n9 m5129if(@Nullable Bitmap bitmap, @NonNull BitmapPool bitmapPool) {
        if (bitmap == null) {
            return null;
        }
        return new n9(bitmap, bitmapPool);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Bitmap get() {
        return this.f4144do;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<Bitmap> getResourceClass() {
        return Bitmap.class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return Ccase.m12047goto(this.f4144do);
    }

    @Override // com.bumptech.glide.load.engine.Initializable
    public void initialize() {
        this.f4144do.prepareToDraw();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
        this.f4145if.put(this.f4144do);
    }
}
