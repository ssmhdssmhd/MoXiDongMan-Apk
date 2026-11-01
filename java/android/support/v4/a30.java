package android.support.v4;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;

/* loaded from: classes.dex */
public final class a30 implements ResourceTranscoder<Drawable, byte[]> {

    /* renamed from: do, reason: not valid java name */
    private final BitmapPool f22do;

    /* renamed from: for, reason: not valid java name */
    private final ResourceTranscoder<GifDrawable, byte[]> f23for;

    /* renamed from: if, reason: not valid java name */
    private final ResourceTranscoder<Bitmap, byte[]> f24if;

    public a30(@NonNull BitmapPool bitmapPool, @NonNull ResourceTranscoder<Bitmap, byte[]> resourceTranscoder, @NonNull ResourceTranscoder<GifDrawable, byte[]> resourceTranscoder2) {
        this.f22do = bitmapPool;
        this.f24if = resourceTranscoder;
        this.f23for = resourceTranscoder2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    /* renamed from: do, reason: not valid java name */
    private static Resource<GifDrawable> m28do(@NonNull Resource<Drawable> resource) {
        return resource;
    }

    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    @Nullable
    public Resource<byte[]> transcode(@NonNull Resource<Drawable> resource, @NonNull f81 f81Var) {
        Drawable drawable = resource.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f24if.transcode(n9.m5129if(((BitmapDrawable) drawable).getBitmap(), this.f22do), f81Var);
        }
        if (drawable instanceof GifDrawable) {
            return this.f23for.transcode(m28do(resource), f81Var);
        }
        return null;
    }
}
