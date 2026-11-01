package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import android.support.v4.cf1;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.data.Cbreak;
import com.bumptech.glide.load.data.Cgoto;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes.dex */
interface ImageReader {

    /* renamed from: com.bumptech.glide.load.resource.bitmap.ImageReader$do, reason: invalid class name */
    public static final class Cdo implements ImageReader {

        /* renamed from: do, reason: not valid java name */
        private final Cgoto f10110do;

        /* renamed from: for, reason: not valid java name */
        private final List<ImageHeaderParser> f10111for;

        /* renamed from: if, reason: not valid java name */
        private final ArrayPool f10112if;

        public Cdo(InputStream inputStream, List<ImageHeaderParser> list, ArrayPool arrayPool) {
            this.f10112if = (ArrayPool) cf1.m900new(arrayPool);
            this.f10111for = (List) cf1.m900new(list);
            this.f10110do = new Cgoto(inputStream, arrayPool);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        @Nullable
        public Bitmap decodeBitmap(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeStream(this.f10110do.rewindAndGet(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public int getImageOrientation() throws IOException {
            return ImageHeaderParserUtils.m11256if(this.f10111for, this.f10110do.rewindAndGet(), this.f10112if);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public ImageHeaderParser.ImageType getImageType() throws IOException {
            return ImageHeaderParserUtils.m11258try(this.f10111for, this.f10110do.rewindAndGet(), this.f10112if);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public void stopGrowingBuffers() {
            this.f10110do.m11294do();
        }
    }

    @RequiresApi(21)
    /* renamed from: com.bumptech.glide.load.resource.bitmap.ImageReader$if, reason: invalid class name */
    public static final class Cif implements ImageReader {

        /* renamed from: do, reason: not valid java name */
        private final ArrayPool f10113do;

        /* renamed from: for, reason: not valid java name */
        private final Cbreak f10114for;

        /* renamed from: if, reason: not valid java name */
        private final List<ImageHeaderParser> f10115if;

        public Cif(ParcelFileDescriptor parcelFileDescriptor, List<ImageHeaderParser> list, ArrayPool arrayPool) {
            this.f10113do = (ArrayPool) cf1.m900new(arrayPool);
            this.f10115if = (List) cf1.m900new(list);
            this.f10114for = new Cbreak(parcelFileDescriptor);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        @Nullable
        public Bitmap decodeBitmap(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeFileDescriptor(this.f10114for.rewindAndGet().getFileDescriptor(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public int getImageOrientation() throws IOException {
            return ImageHeaderParserUtils.m11253do(this.f10115if, this.f10114for, this.f10113do);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public ImageHeaderParser.ImageType getImageType() throws IOException {
            return ImageHeaderParserUtils.m11257new(this.f10115if, this.f10114for, this.f10113do);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public void stopGrowingBuffers() {
        }
    }

    @Nullable
    Bitmap decodeBitmap(BitmapFactory.Options options) throws IOException;

    int getImageOrientation() throws IOException;

    ImageHeaderParser.ImageType getImageType() throws IOException;

    void stopGrowingBuffers();
}
