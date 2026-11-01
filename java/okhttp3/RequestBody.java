package okhttp3;

import android.support.v4.al;
import android.support.v4.an1;
import android.support.v4.aq0;
import android.support.v4.m41;
import android.support.v4.qm;
import android.support.v4.rx;
import android.support.v4.wp0;
import android.support.v4.xp0;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.charset.Charset;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import okhttp3.internal.Util;
import okio.BufferedSink;
import okio.ByteString;
import okio.Okio;
import okio.Source;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b&\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\r\u0010\u000eJ\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H&J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\nH\u0016¨\u0006\u0010"}, d2 = {"Lokhttp3/RequestBody;", "", "Lokhttp3/MediaType;", "contentType", "", "contentLength", "Lokio/BufferedSink;", "sink", "Landroid/support/v4/ub2;", "writeTo", "", "isDuplex", "isOneShot", "<init>", "()V", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public abstract class RequestBody {
    public static final Companion Companion = new Companion(null);

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\b\u001a\u00020\u0005*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\b\u001a\u00020\u0005*\u00020\t2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\nJ3\u0010\b\u001a\u00020\u0005*\u00020\u000b2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\fH\u0007¢\u0006\u0004\b\u0006\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\u0005*\u00020\u00102\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\u0011J\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0013\u001a\u00020\u0002H\u0007J\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0013\u001a\u00020\tH\u0007J.\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0013\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\fH\u0007J\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0014\u001a\u00020\u0010H\u0007¨\u0006\u0017"}, d2 = {"Lokhttp3/RequestBody$Companion;", "", "", "Lokhttp3/MediaType;", "contentType", "Lokhttp3/RequestBody;", "create", "(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;", "toRequestBody", "Lokio/ByteString;", "(Lokio/ByteString;Lokhttp3/MediaType;)Lokhttp3/RequestBody;", "", "", TypedValues.Cycle.S_WAVE_OFFSET, "byteCount", "([BLokhttp3/MediaType;II)Lokhttp3/RequestBody;", "Ljava/io/File;", "(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;", "asRequestBody", "content", "file", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
    public static final class Companion {
        private Companion() {
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, String str, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(str, mediaType);
        }

        @m41
        @aq0
        @wp0(name = "create")
        public final RequestBody create(@m41 String toRequestBody, @z41 MediaType mediaType) {
            Csuper.m30700throw(toRequestBody, "$this$toRequestBody");
            Charset charset = al.f191do;
            if (mediaType != null) {
                Charset charsetCharset$default = MediaType.charset$default(mediaType, null, 1, null);
                if (charsetCharset$default == null) {
                    mediaType = MediaType.Companion.parse(mediaType + "; charset=utf-8");
                } else {
                    charset = charsetCharset$default;
                }
            }
            byte[] bytes = toRequestBody.getBytes(charset);
            Csuper.m30696super(bytes, "(this as java.lang.String).getBytes(charset)");
            return create(bytes, mediaType, 0, bytes.length);
        }

        @m41
        @aq0
        @Cfor(level = Ctry.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @an1(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
        @xp0
        public final RequestBody create(@z41 MediaType mediaType, @m41 byte[] bArr) {
            return create$default(this, mediaType, bArr, 0, 0, 12, (Object) null);
        }

        @m41
        @aq0
        @Cfor(level = Ctry.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @an1(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
        @xp0
        public final RequestBody create(@z41 MediaType mediaType, @m41 byte[] bArr, int i) {
            return create$default(this, mediaType, bArr, i, 0, 8, (Object) null);
        }

        @m41
        @aq0
        @wp0(name = "create")
        @xp0
        public final RequestBody create(@m41 byte[] bArr) {
            return create$default(this, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        }

        @m41
        @aq0
        @wp0(name = "create")
        @xp0
        public final RequestBody create(@m41 byte[] bArr, @z41 MediaType mediaType) {
            return create$default(this, bArr, mediaType, 0, 0, 6, (Object) null);
        }

        @m41
        @aq0
        @wp0(name = "create")
        @xp0
        public final RequestBody create(@m41 byte[] bArr, @z41 MediaType mediaType, int i) {
            return create$default(this, bArr, mediaType, i, 0, 4, (Object) null);
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, ByteString byteString, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(byteString, mediaType);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                mediaType = null;
            }
            if ((i3 & 2) != 0) {
                i = 0;
            }
            if ((i3 & 4) != 0) {
                i2 = bArr.length;
            }
            return companion.create(bArr, mediaType, i, i2);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, File file, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(file, mediaType);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, MediaType mediaType, byte[] bArr, int i, int i2, int i3, Object obj) {
            if ((i3 & 4) != 0) {
                i = 0;
            }
            if ((i3 & 8) != 0) {
                i2 = bArr.length;
            }
            return companion.create(mediaType, bArr, i, i2);
        }

        @m41
        @aq0
        @wp0(name = "create")
        public final RequestBody create(@m41 final ByteString toRequestBody, @z41 final MediaType mediaType) {
            Csuper.m30700throw(toRequestBody, "$this$toRequestBody");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$1
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return toRequestBody.size();
                }

                @Override // okhttp3.RequestBody
                @z41
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(@m41 BufferedSink sink) throws IOException {
                    Csuper.m30700throw(sink, "sink");
                    sink.write(toRequestBody);
                }
            };
        }

        @m41
        @aq0
        @wp0(name = "create")
        @xp0
        public final RequestBody create(@m41 final byte[] toRequestBody, @z41 final MediaType mediaType, final int i, final int i2) {
            Csuper.m30700throw(toRequestBody, "$this$toRequestBody");
            Util.checkOffsetAndCount(toRequestBody.length, i, i2);
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$2
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return i2;
                }

                @Override // okhttp3.RequestBody
                @z41
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(@m41 BufferedSink sink) throws IOException {
                    Csuper.m30700throw(sink, "sink");
                    sink.write(toRequestBody, i, i2);
                }
            };
        }

        @m41
        @aq0
        @wp0(name = "create")
        public final RequestBody create(@m41 final File asRequestBody, @z41 final MediaType mediaType) {
            Csuper.m30700throw(asRequestBody, "$this$asRequestBody");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$asRequestBody$1
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return asRequestBody.length();
                }

                @Override // okhttp3.RequestBody
                @z41
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(@m41 BufferedSink sink) throws FileNotFoundException {
                    Csuper.m30700throw(sink, "sink");
                    Source source = Okio.source(asRequestBody);
                    try {
                        sink.writeAll(source);
                        qm.m6624do(source, null);
                    } finally {
                    }
                }
            };
        }

        @m41
        @aq0
        @Cfor(level = Ctry.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @an1(expression = "content.toRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
        public final RequestBody create(@z41 MediaType mediaType, @m41 String content) {
            Csuper.m30700throw(content, "content");
            return create(content, mediaType);
        }

        @m41
        @aq0
        @Cfor(level = Ctry.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @an1(expression = "content.toRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
        public final RequestBody create(@z41 MediaType mediaType, @m41 ByteString content) {
            Csuper.m30700throw(content, "content");
            return create(content, mediaType);
        }

        @m41
        @aq0
        @Cfor(level = Ctry.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @an1(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
        @xp0
        public final RequestBody create(@z41 MediaType mediaType, @m41 byte[] content, int i, int i2) {
            Csuper.m30700throw(content, "content");
            return create(content, mediaType, i, i2);
        }

        @m41
        @aq0
        @Cfor(level = Ctry.WARNING, message = "Moved to extension function. Put the 'file' argument first to fix Java", replaceWith = @an1(expression = "file.asRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.asRequestBody"}))
        public final RequestBody create(@z41 MediaType mediaType, @m41 File file) {
            Csuper.m30700throw(file, "file");
            return create(file, mediaType);
        }
    }

    @m41
    @aq0
    @wp0(name = "create")
    public static final RequestBody create(@m41 File file, @z41 MediaType mediaType) {
        return Companion.create(file, mediaType);
    }

    @m41
    @aq0
    @wp0(name = "create")
    public static final RequestBody create(@m41 String str, @z41 MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    @m41
    @aq0
    @Cfor(level = Ctry.WARNING, message = "Moved to extension function. Put the 'file' argument first to fix Java", replaceWith = @an1(expression = "file.asRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.asRequestBody"}))
    public static final RequestBody create(@z41 MediaType mediaType, @m41 File file) {
        return Companion.create(mediaType, file);
    }

    @m41
    @aq0
    @Cfor(level = Ctry.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @an1(expression = "content.toRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    public static final RequestBody create(@z41 MediaType mediaType, @m41 String str) {
        return Companion.create(mediaType, str);
    }

    @m41
    @aq0
    @Cfor(level = Ctry.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @an1(expression = "content.toRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    public static final RequestBody create(@z41 MediaType mediaType, @m41 ByteString byteString) {
        return Companion.create(mediaType, byteString);
    }

    @m41
    @aq0
    @Cfor(level = Ctry.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @an1(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @xp0
    public static final RequestBody create(@z41 MediaType mediaType, @m41 byte[] bArr) {
        return Companion.create$default(Companion, mediaType, bArr, 0, 0, 12, (Object) null);
    }

    @m41
    @aq0
    @Cfor(level = Ctry.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @an1(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @xp0
    public static final RequestBody create(@z41 MediaType mediaType, @m41 byte[] bArr, int i) {
        return Companion.create$default(Companion, mediaType, bArr, i, 0, 8, (Object) null);
    }

    @m41
    @aq0
    @Cfor(level = Ctry.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @an1(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @xp0
    public static final RequestBody create(@z41 MediaType mediaType, @m41 byte[] bArr, int i, int i2) {
        return Companion.create(mediaType, bArr, i, i2);
    }

    @m41
    @aq0
    @wp0(name = "create")
    public static final RequestBody create(@m41 ByteString byteString, @z41 MediaType mediaType) {
        return Companion.create(byteString, mediaType);
    }

    @m41
    @aq0
    @wp0(name = "create")
    @xp0
    public static final RequestBody create(@m41 byte[] bArr) {
        return Companion.create$default(Companion, bArr, (MediaType) null, 0, 0, 7, (Object) null);
    }

    @m41
    @aq0
    @wp0(name = "create")
    @xp0
    public static final RequestBody create(@m41 byte[] bArr, @z41 MediaType mediaType) {
        return Companion.create$default(Companion, bArr, mediaType, 0, 0, 6, (Object) null);
    }

    @m41
    @aq0
    @wp0(name = "create")
    @xp0
    public static final RequestBody create(@m41 byte[] bArr, @z41 MediaType mediaType, int i) {
        return Companion.create$default(Companion, bArr, mediaType, i, 0, 4, (Object) null);
    }

    @m41
    @aq0
    @wp0(name = "create")
    @xp0
    public static final RequestBody create(@m41 byte[] bArr, @z41 MediaType mediaType, int i, int i2) {
        return Companion.create(bArr, mediaType, i, i2);
    }

    public long contentLength() throws IOException {
        return -1L;
    }

    @z41
    public abstract MediaType contentType();

    public boolean isDuplex() {
        return false;
    }

    public boolean isOneShot() {
        return false;
    }

    public abstract void writeTo(@m41 BufferedSink bufferedSink) throws IOException;
}
