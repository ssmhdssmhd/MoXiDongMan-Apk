package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.Cbreak;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.bitmap.Ccatch;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* loaded from: classes.dex */
public final class ImageHeaderParserUtils {

    /* renamed from: do, reason: not valid java name */
    private static final int f9475do = 5242880;

    public interface OrientationReader {
        int getOrientation(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    public interface TypeReader {
        ImageHeaderParser.ImageType getType(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    /* renamed from: com.bumptech.glide.load.ImageHeaderParserUtils$do, reason: invalid class name */
    public class Cdo implements TypeReader {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ InputStream f9476do;

        public Cdo(InputStream inputStream) {
            this.f9476do = inputStream;
        }

        @Override // com.bumptech.glide.load.ImageHeaderParserUtils.TypeReader
        public ImageHeaderParser.ImageType getType(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.getType(this.f9476do);
            } finally {
                this.f9476do.reset();
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.ImageHeaderParserUtils$for, reason: invalid class name */
    public class Cfor implements TypeReader {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cbreak f9477do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ArrayPool f9478if;

        public Cfor(Cbreak cbreak, ArrayPool arrayPool) {
            this.f9477do = cbreak;
            this.f9478if = arrayPool;
        }

        @Override // com.bumptech.glide.load.ImageHeaderParserUtils.TypeReader
        public ImageHeaderParser.ImageType getType(ImageHeaderParser imageHeaderParser) throws Throwable {
            Ccatch ccatch = null;
            try {
                Ccatch ccatch2 = new Ccatch(new FileInputStream(this.f9477do.rewindAndGet().getFileDescriptor()), this.f9478if);
                try {
                    ImageHeaderParser.ImageType type = imageHeaderParser.getType(ccatch2);
                    try {
                        ccatch2.close();
                    } catch (IOException unused) {
                    }
                    this.f9477do.rewindAndGet();
                    return type;
                } catch (Throwable th) {
                    th = th;
                    ccatch = ccatch2;
                    if (ccatch != null) {
                        try {
                            ccatch.close();
                        } catch (IOException unused2) {
                        }
                    }
                    this.f9477do.rewindAndGet();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.ImageHeaderParserUtils$if, reason: invalid class name */
    public class Cif implements TypeReader {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ByteBuffer f9479do;

        public Cif(ByteBuffer byteBuffer) {
            this.f9479do = byteBuffer;
        }

        @Override // com.bumptech.glide.load.ImageHeaderParserUtils.TypeReader
        public ImageHeaderParser.ImageType getType(ImageHeaderParser imageHeaderParser) throws IOException {
            return imageHeaderParser.getType(this.f9479do);
        }
    }

    /* renamed from: com.bumptech.glide.load.ImageHeaderParserUtils$new, reason: invalid class name */
    public class Cnew implements OrientationReader {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ InputStream f9480do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ArrayPool f9481if;

        public Cnew(InputStream inputStream, ArrayPool arrayPool) {
            this.f9480do = inputStream;
            this.f9481if = arrayPool;
        }

        @Override // com.bumptech.glide.load.ImageHeaderParserUtils.OrientationReader
        public int getOrientation(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.getOrientation(this.f9480do, this.f9481if);
            } finally {
                this.f9480do.reset();
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.ImageHeaderParserUtils$try, reason: invalid class name */
    public class Ctry implements OrientationReader {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cbreak f9482do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ArrayPool f9483if;

        public Ctry(Cbreak cbreak, ArrayPool arrayPool) {
            this.f9482do = cbreak;
            this.f9483if = arrayPool;
        }

        @Override // com.bumptech.glide.load.ImageHeaderParserUtils.OrientationReader
        public int getOrientation(ImageHeaderParser imageHeaderParser) throws Throwable {
            Ccatch ccatch = null;
            try {
                Ccatch ccatch2 = new Ccatch(new FileInputStream(this.f9482do.rewindAndGet().getFileDescriptor()), this.f9483if);
                try {
                    int orientation = imageHeaderParser.getOrientation(ccatch2, this.f9483if);
                    try {
                        ccatch2.close();
                    } catch (IOException unused) {
                    }
                    this.f9482do.rewindAndGet();
                    return orientation;
                } catch (Throwable th) {
                    th = th;
                    ccatch = ccatch2;
                    if (ccatch != null) {
                        try {
                            ccatch.close();
                        } catch (IOException unused2) {
                        }
                    }
                    this.f9482do.rewindAndGet();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    private ImageHeaderParserUtils() {
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public static ImageHeaderParser.ImageType m11252case(@NonNull List<ImageHeaderParser> list, @Nullable ByteBuffer byteBuffer) throws IOException {
        return byteBuffer == null ? ImageHeaderParser.ImageType.UNKNOWN : m11254else(list, new Cif(byteBuffer));
    }

    @RequiresApi(21)
    /* renamed from: do, reason: not valid java name */
    public static int m11253do(@NonNull List<ImageHeaderParser> list, @NonNull Cbreak cbreak, @NonNull ArrayPool arrayPool) throws IOException {
        return m11255for(list, new Ctry(cbreak, arrayPool));
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    private static ImageHeaderParser.ImageType m11254else(@NonNull List<ImageHeaderParser> list, TypeReader typeReader) throws IOException {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ImageHeaderParser.ImageType type = typeReader.getType(list.get(i));
            if (type != ImageHeaderParser.ImageType.UNKNOWN) {
                return type;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    /* renamed from: for, reason: not valid java name */
    private static int m11255for(@NonNull List<ImageHeaderParser> list, OrientationReader orientationReader) throws IOException {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            int orientation = orientationReader.getOrientation(list.get(i));
            if (orientation != -1) {
                return orientation;
            }
        }
        return -1;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m11256if(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull ArrayPool arrayPool) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new Ccatch(inputStream, arrayPool);
        }
        inputStream.mark(f9475do);
        return m11255for(list, new Cnew(inputStream, arrayPool));
    }

    @NonNull
    @RequiresApi(21)
    /* renamed from: new, reason: not valid java name */
    public static ImageHeaderParser.ImageType m11257new(@NonNull List<ImageHeaderParser> list, @NonNull Cbreak cbreak, @NonNull ArrayPool arrayPool) throws IOException {
        return m11254else(list, new Cfor(cbreak, arrayPool));
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public static ImageHeaderParser.ImageType m11258try(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull ArrayPool arrayPool) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new Ccatch(inputStream, arrayPool);
        }
        inputStream.mark(f9475do);
        return m11254else(list, new Cdo(inputStream));
    }
}
