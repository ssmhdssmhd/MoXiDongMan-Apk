package android.support.v4;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;

/* loaded from: classes.dex */
public class g9 implements ResourceTranscoder<Bitmap, BitmapDrawable> {

    /* renamed from: do, reason: not valid java name */
    private final Resources f2081do;

    public g9(@NonNull Context context) {
        this(context.getResources());
    }

    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    @Nullable
    public Resource<BitmapDrawable> transcode(@NonNull Resource<Bitmap> resource, @NonNull f81 f81Var) {
        return es0.m2002new(this.f2081do, resource);
    }

    @Deprecated
    public g9(@NonNull Resources resources, BitmapPool bitmapPool) {
        this(resources);
    }

    public g9(@NonNull Resources resources) {
        this.f2081do = (Resources) cf1.m900new(resources);
    }
}
