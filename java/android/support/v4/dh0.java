package android.support.v4;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

/* loaded from: classes.dex */
public final class dh0 implements GifDecoder.BitmapProvider {

    /* renamed from: do, reason: not valid java name */
    private final BitmapPool f1044do;

    /* renamed from: if, reason: not valid java name */
    @Nullable
    private final ArrayPool f1045if;

    public dh0(BitmapPool bitmapPool) {
        this(bitmapPool, null);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    @NonNull
    public Bitmap obtain(int i, int i2, @NonNull Bitmap.Config config) {
        return this.f1044do.getDirty(i, i2, config);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    @NonNull
    public byte[] obtainByteArray(int i) {
        ArrayPool arrayPool = this.f1045if;
        return arrayPool == null ? new byte[i] : (byte[]) arrayPool.get(i, byte[].class);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    @NonNull
    public int[] obtainIntArray(int i) {
        ArrayPool arrayPool = this.f1045if;
        return arrayPool == null ? new int[i] : (int[]) arrayPool.get(i, int[].class);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public void release(@NonNull Bitmap bitmap) {
        this.f1044do.put(bitmap);
    }

    public dh0(BitmapPool bitmapPool, @Nullable ArrayPool arrayPool) {
        this.f1044do = bitmapPool;
        this.f1045if = arrayPool;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public void release(@NonNull byte[] bArr) {
        ArrayPool arrayPool = this.f1045if;
        if (arrayPool == null) {
            return;
        }
        arrayPool.put(bArr);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public void release(@NonNull int[] iArr) {
        ArrayPool arrayPool = this.f1045if;
        if (arrayPool == null) {
            return;
        }
        arrayPool.put(iArr);
    }
}
