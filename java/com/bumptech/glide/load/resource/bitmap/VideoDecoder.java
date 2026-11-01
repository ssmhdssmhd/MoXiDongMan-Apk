package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.support.v4.f81;
import android.support.v4.n9;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class VideoDecoder<T> implements ResourceDecoder<T, Bitmap> {

    /* renamed from: case, reason: not valid java name */
    @VisibleForTesting
    public static final int f10129case = 2;

    /* renamed from: new, reason: not valid java name */
    private static final String f10132new = "VideoDecoder";

    /* renamed from: try, reason: not valid java name */
    public static final long f10134try = -1;

    /* renamed from: do, reason: not valid java name */
    private final MediaMetadataRetrieverInitializer<T> f10135do;

    /* renamed from: for, reason: not valid java name */
    private final Ctry f10136for;

    /* renamed from: if, reason: not valid java name */
    private final BitmapPool f10137if;

    /* renamed from: else, reason: not valid java name */
    public static final Option<Long> f10130else = Option.m11263if("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new Cdo());

    /* renamed from: goto, reason: not valid java name */
    public static final Option<Integer> f10131goto = Option.m11263if("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new Cif());

    /* renamed from: this, reason: not valid java name */
    private static final Ctry f10133this = new Ctry();

    @VisibleForTesting
    public interface MediaMetadataRetrieverInitializer<T> {
        void initialize(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$case, reason: invalid class name */
    public static final class Ccase implements MediaMetadataRetrieverInitializer<ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaMetadataRetrieverInitializer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void initialize(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) throws IllegalArgumentException {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$do, reason: invalid class name */
    public class Cdo implements Option.CacheKeyUpdater<Long> {

        /* renamed from: do, reason: not valid java name */
        private final ByteBuffer f10138do = ByteBuffer.allocate(8);

        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void update(@NonNull byte[] bArr, @NonNull Long l, @NonNull MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.f10138do) {
                this.f10138do.position(0);
                messageDigest.update(this.f10138do.putLong(l.longValue()).array());
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$for, reason: invalid class name */
    public static final class Cfor implements MediaMetadataRetrieverInitializer<AssetFileDescriptor> {
        private Cfor() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaMetadataRetrieverInitializer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void initialize(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) throws IllegalArgumentException {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }

        public /* synthetic */ Cfor(Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$if, reason: invalid class name */
    public class Cif implements Option.CacheKeyUpdater<Integer> {

        /* renamed from: do, reason: not valid java name */
        private final ByteBuffer f10139do = ByteBuffer.allocate(4);

        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void update(@NonNull byte[] bArr, @NonNull Integer num, @NonNull MessageDigest messageDigest) {
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f10139do) {
                this.f10139do.position(0);
                messageDigest.update(this.f10139do.putInt(num.intValue()).array());
            }
        }
    }

    @RequiresApi(23)
    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$new, reason: invalid class name */
    public static final class Cnew implements MediaMetadataRetrieverInitializer<ByteBuffer> {

        /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$new$do, reason: invalid class name */
        public class Cdo extends MediaDataSource {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ ByteBuffer f10140do;

            public Cdo(ByteBuffer byteBuffer) {
                this.f10140do = byteBuffer;
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // android.media.MediaDataSource
            public long getSize() {
                return this.f10140do.limit();
            }

            @Override // android.media.MediaDataSource
            public int readAt(long j, byte[] bArr, int i, int i2) {
                if (j >= this.f10140do.limit()) {
                    return -1;
                }
                this.f10140do.position((int) j);
                int iMin = Math.min(i2, this.f10140do.remaining());
                this.f10140do.get(bArr, i, iMin);
                return iMin;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaMetadataRetrieverInitializer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void initialize(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) throws IllegalArgumentException {
            mediaMetadataRetriever.setDataSource(new Cdo(byteBuffer));
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$try, reason: invalid class name */
    public static class Ctry {
        /* renamed from: do, reason: not valid java name */
        public MediaMetadataRetriever m11752do() {
            return new MediaMetadataRetriever();
        }
    }

    public VideoDecoder(BitmapPool bitmapPool, MediaMetadataRetrieverInitializer<T> mediaMetadataRetrieverInitializer) {
        this(bitmapPool, mediaMetadataRetrieverInitializer, f10133this);
    }

    /* renamed from: case, reason: not valid java name */
    public static ResourceDecoder<ParcelFileDescriptor, Bitmap> m11741case(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new Ccase());
    }

    /* renamed from: do, reason: not valid java name */
    public static ResourceDecoder<AssetFileDescriptor, Bitmap> m11742do(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new Cfor(null));
    }

    @Nullable
    /* renamed from: for, reason: not valid java name */
    private static Bitmap m11743for(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, com.bumptech.glide.load.resource.bitmap.Ctry ctry) {
        Bitmap bitmapM11746try = (Build.VERSION.SDK_INT < 27 || i2 == Integer.MIN_VALUE || i3 == Integer.MIN_VALUE || ctry == com.bumptech.glide.load.resource.bitmap.Ctry.f10167case) ? null : m11746try(mediaMetadataRetriever, j, i, i2, i3, ctry);
        return bitmapM11746try == null ? m11745new(mediaMetadataRetriever, j, i) : bitmapM11746try;
    }

    @RequiresApi(api = 23)
    /* renamed from: if, reason: not valid java name */
    public static ResourceDecoder<ByteBuffer, Bitmap> m11744if(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new Cnew());
    }

    /* renamed from: new, reason: not valid java name */
    private static Bitmap m11745new(MediaMetadataRetriever mediaMetadataRetriever, long j, int i) {
        return mediaMetadataRetriever.getFrameAtTime(j, i);
    }

    @TargetApi(27)
    /* renamed from: try, reason: not valid java name */
    private static Bitmap m11746try(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, com.bumptech.glide.load.resource.bitmap.Ctry ctry) {
        try {
            int i4 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            int i5 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            int i6 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (i6 == 90 || i6 == 270) {
                i5 = i4;
                i4 = i5;
            }
            float fMo11778if = ctry.mo11778if(i4, i5, i2, i3);
            return mediaMetadataRetriever.getScaledFrameAtTime(j, i, Math.round(i4 * fMo11778if), Math.round(fMo11778if * i5));
        } catch (Throwable unused) {
            Log.isLoggable(f10132new, 3);
            return null;
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public Resource<Bitmap> decode(@NonNull T t, int i, int i2, @NonNull f81 f81Var) throws IOException {
        long jLongValue = ((Long) f81Var.m2196do(f10130else)).longValue();
        if (jLongValue < 0 && jLongValue != -1) {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + jLongValue);
        }
        Integer num = (Integer) f81Var.m2196do(f10131goto);
        if (num == null) {
            num = 2;
        }
        com.bumptech.glide.load.resource.bitmap.Ctry ctry = (com.bumptech.glide.load.resource.bitmap.Ctry) f81Var.m2196do(com.bumptech.glide.load.resource.bitmap.Ctry.f10171goto);
        if (ctry == null) {
            ctry = com.bumptech.glide.load.resource.bitmap.Ctry.f10169else;
        }
        com.bumptech.glide.load.resource.bitmap.Ctry ctry2 = ctry;
        MediaMetadataRetriever mediaMetadataRetrieverM11752do = this.f10136for.m11752do();
        try {
            try {
                this.f10135do.initialize(mediaMetadataRetrieverM11752do, t);
                Bitmap bitmapM11743for = m11743for(mediaMetadataRetrieverM11752do, jLongValue, num.intValue(), i, i2, ctry2);
                mediaMetadataRetrieverM11752do.release();
                return n9.m5129if(bitmapM11743for, this.f10137if);
            } catch (RuntimeException e) {
                throw new IOException(e);
            }
        } catch (Throwable th) {
            mediaMetadataRetrieverM11752do.release();
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public boolean handles(@NonNull T t, @NonNull f81 f81Var) {
        return true;
    }

    @VisibleForTesting
    public VideoDecoder(BitmapPool bitmapPool, MediaMetadataRetrieverInitializer<T> mediaMetadataRetrieverInitializer, Ctry ctry) {
        this.f10137if = bitmapPool;
        this.f10135do = mediaMetadataRetrieverInitializer;
        this.f10136for = ctry;
    }
}
