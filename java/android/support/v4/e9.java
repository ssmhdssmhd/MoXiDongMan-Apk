package android.support.v4;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Cfor;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.io.File;

/* loaded from: classes.dex */
public class e9 implements ResourceEncoder<BitmapDrawable> {

    /* renamed from: do, reason: not valid java name */
    private final BitmapPool f1291do;

    /* renamed from: if, reason: not valid java name */
    private final ResourceEncoder<Bitmap> f1292if;

    public e9(BitmapPool bitmapPool, ResourceEncoder<Bitmap> resourceEncoder) {
        this.f1291do = bitmapPool;
        this.f1292if = resourceEncoder;
    }

    @Override // com.bumptech.glide.load.Encoder
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean encode(@NonNull Resource<BitmapDrawable> resource, @NonNull File file, @NonNull f81 f81Var) {
        return this.f1292if.encode(new n9(resource.get().getBitmap(), this.f1291do), file, f81Var);
    }

    @Override // com.bumptech.glide.load.ResourceEncoder
    @NonNull
    public Cfor getEncodeStrategy(@NonNull f81 f81Var) {
        return this.f1292if.getEncodeStrategy(f81Var);
    }
}
