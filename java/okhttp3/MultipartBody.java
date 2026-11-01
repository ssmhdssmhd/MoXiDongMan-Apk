package okhttp3;

import android.support.v4.an1;
import android.support.v4.aq0;
import android.support.v4.ca2;
import android.support.v4.m41;
import android.support.v4.pk0;
import android.support.v4.rx;
import android.support.v4.tp0;
import android.support.v4.wp0;
import android.support.v4.xp0;
import android.support.v4.z41;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import org.jsoup.helper.HttpConnection;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 '2\u00020\u0001:\u0003(')B'\b\u0000\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010\u0010\u001a\u00020\f\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\n0\u0018¢\u0006\u0004\b%\u0010&J\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bJ\b\u0010\r\u001a\u00020\fH\u0016J\u000f\u0010\u0010\u001a\u00020\fH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0014\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0017\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\n0\u0018H\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\b\u0010\u001c\u001a\u00020\u0006H\u0016J\u0010\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u001fR\u0016\u0010\u001c\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010 R\u0016\u0010\"\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0019\u0010\u0010\u001a\u00020\f8\u0007@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001f\u001a\u0004\b\u0010\u0010\u000fR\u001f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\n0\u00188\u0007@\u0006¢\u0006\f\n\u0004\b\u001b\u0010$\u001a\u0004\b\u001b\u0010\u001aR\u0013\u0010\u0014\u001a\u00020\u00118G@\u0006¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0013R\u0013\u0010\u0017\u001a\u00020\b8G@\u0006¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0016¨\u0006*"}, d2 = {"Lokhttp3/MultipartBody;", "Lokhttp3/RequestBody;", "Lokio/BufferedSink;", "sink", "", "countBytes", "", "writeOrCountBytes", "", "index", "Lokhttp3/MultipartBody$Part;", "part", "Lokhttp3/MediaType;", "contentType", "-deprecated_type", "()Lokhttp3/MediaType;", "type", "", "-deprecated_boundary", "()Ljava/lang/String;", "boundary", "-deprecated_size", "()I", "size", "", "-deprecated_parts", "()Ljava/util/List;", "parts", "contentLength", "Landroid/support/v4/ub2;", "writeTo", "Lokhttp3/MediaType;", "J", "Lokio/ByteString;", "boundaryByteString", "Lokio/ByteString;", "Ljava/util/List;", "<init>", "(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V", "Companion", "Builder", "Part", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class MultipartBody extends RequestBody {

    @m41
    @tp0
    public static final MediaType ALTERNATIVE;
    private static final byte[] COLONSPACE;
    private static final byte[] CRLF;
    public static final Companion Companion = new Companion(null);
    private static final byte[] DASHDASH;

    @m41
    @tp0
    public static final MediaType DIGEST;

    @m41
    @tp0
    public static final MediaType FORM;

    @m41
    @tp0
    public static final MediaType MIXED;

    @m41
    @tp0
    public static final MediaType PARALLEL;
    private final ByteString boundaryByteString;
    private long contentLength;
    private final MediaType contentType;

    @m41
    private final List<Part> parts;

    @m41
    private final MediaType type;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0013\b\u0007\u0012\b\b\u0002\u0010\u0014\u001a\u00020\n¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0018\u0010\u0007\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\r\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nJ \u0010\r\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0012\u001a\u00020\u0011R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0016R\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, d2 = {"Lokhttp3/MultipartBody$Builder;", "", "Lokhttp3/MediaType;", "type", "setType", "Lokhttp3/RequestBody;", "body", "addPart", "Lokhttp3/Headers;", "headers", "", "name", ES6Iterator.VALUE_PROPERTY, "addFormDataPart", "filename", "Lokhttp3/MultipartBody$Part;", "part", "Lokhttp3/MultipartBody;", "build", "Lokio/ByteString;", "boundary", "Lokio/ByteString;", "Lokhttp3/MediaType;", "", "parts", "Ljava/util/List;", "<init>", "(Ljava/lang/String;)V", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {
        private final ByteString boundary;
        private final List<Part> parts;
        private MediaType type;

        /* JADX WARN: Multi-variable type inference failed */
        @xp0
        public Builder() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        @xp0
        public Builder(@m41 String boundary) {
            Csuper.m30700throw(boundary, "boundary");
            this.boundary = ByteString.Companion.encodeUtf8(boundary);
            this.type = MultipartBody.MIXED;
            this.parts = new ArrayList();
        }

        @m41
        public final Builder addFormDataPart(@m41 String name, @m41 String value) {
            Csuper.m30700throw(name, "name");
            Csuper.m30700throw(value, "value");
            addPart(Part.Companion.createFormData(name, value));
            return this;
        }

        @m41
        public final Builder addPart(@m41 RequestBody body) {
            Csuper.m30700throw(body, "body");
            addPart(Part.Companion.create(body));
            return this;
        }

        @m41
        public final MultipartBody build() {
            if (!this.parts.isEmpty()) {
                return new MultipartBody(this.boundary, this.type, Util.toImmutableList(this.parts));
            }
            throw new IllegalStateException("Multipart body must have at least one part.".toString());
        }

        @m41
        public final Builder setType(@m41 MediaType type) {
            Csuper.m30700throw(type, "type");
            if (Csuper.m30676else(type.type(), "multipart")) {
                this.type = type;
                return this;
            }
            throw new IllegalArgumentException(("multipart != " + type).toString());
        }

        @m41
        public final Builder addFormDataPart(@m41 String name, @z41 String str, @m41 RequestBody body) {
            Csuper.m30700throw(name, "name");
            Csuper.m30700throw(body, "body");
            addPart(Part.Companion.createFormData(name, str, body));
            return this;
        }

        @m41
        public final Builder addPart(@z41 Headers headers, @m41 RequestBody body) {
            Csuper.m30700throw(body, "body");
            addPart(Part.Companion.create(headers, body));
            return this;
        }

        @m41
        public final Builder addPart(@m41 Part part) {
            Csuper.m30700throw(part, "part");
            this.parts.add(part);
            return this;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ Builder(String str, int i, rx rxVar) {
            if ((i & 1) != 0) {
                str = UUID.randomUUID().toString();
                Csuper.m30696super(str, "UUID.randomUUID().toString()");
            }
            this(str);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\t\u001a\u00020\u0006*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\u000b\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\fR\u0016\u0010\u0013\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\fR\u0016\u0010\u0014\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\fR\u0016\u0010\u0015\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\f¨\u0006\u0018"}, d2 = {"Lokhttp3/MultipartBody$Companion;", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "", "key", "Landroid/support/v4/ub2;", "appendQuotedString$okhttp", "(Ljava/lang/StringBuilder;Ljava/lang/String;)V", "appendQuotedString", "Lokhttp3/MediaType;", "ALTERNATIVE", "Lokhttp3/MediaType;", "", "COLONSPACE", "[B", "CRLF", "DASHDASH", "DIGEST", "FORM", "MIXED", "PARALLEL", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public final void appendQuotedString$okhttp(@m41 StringBuilder appendQuotedString, @m41 String key) {
            Csuper.m30700throw(appendQuotedString, "$this$appendQuotedString");
            Csuper.m30700throw(key, "key");
            appendQuotedString.append(ca2.f674do);
            int length = key.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = key.charAt(i);
                if (cCharAt == '\n') {
                    appendQuotedString.append("%0A");
                } else if (cCharAt == '\r') {
                    appendQuotedString.append("%0D");
                } else if (cCharAt != '\"') {
                    appendQuotedString.append(cCharAt);
                } else {
                    appendQuotedString.append("%22");
                }
            }
            appendQuotedString.append(ca2.f674do);
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u001b\b\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\bR\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0007@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\n\u001a\u0004\b\u0005\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00068\u0007@\u0006¢\u0006\f\n\u0004\b\t\u0010\u000b\u001a\u0004\b\t\u0010\b¨\u0006\u000f"}, d2 = {"Lokhttp3/MultipartBody$Part;", "", "Lokhttp3/Headers;", "-deprecated_headers", "()Lokhttp3/Headers;", "headers", "Lokhttp3/RequestBody;", "-deprecated_body", "()Lokhttp3/RequestBody;", "body", "Lokhttp3/Headers;", "Lokhttp3/RequestBody;", "<init>", "(Lokhttp3/Headers;Lokhttp3/RequestBody;)V", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
    public static final class Part {
        public static final Companion Companion = new Companion(null);

        @m41
        private final RequestBody body;

        @z41
        private final Headers headers;

        @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0007J\"\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¨\u0006\u000f"}, d2 = {"Lokhttp3/MultipartBody$Part$Companion;", "", "Lokhttp3/RequestBody;", "body", "Lokhttp3/MultipartBody$Part;", "create", "Lokhttp3/Headers;", "headers", "", "name", ES6Iterator.VALUE_PROPERTY, "createFormData", "filename", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            @m41
            @aq0
            public final Part create(@m41 RequestBody body) {
                Csuper.m30700throw(body, "body");
                return create(null, body);
            }

            @m41
            @aq0
            public final Part createFormData(@m41 String name, @m41 String value) {
                Csuper.m30700throw(name, "name");
                Csuper.m30700throw(value, "value");
                return createFormData(name, null, RequestBody.Companion.create$default(RequestBody.Companion, value, (MediaType) null, 1, (Object) null));
            }

            public /* synthetic */ Companion(rx rxVar) {
                this();
            }

            @m41
            @aq0
            public final Part create(@z41 Headers headers, @m41 RequestBody body) {
                Csuper.m30700throw(body, "body");
                rx rxVar = null;
                if (!((headers != null ? headers.get("Content-Type") : null) == null)) {
                    throw new IllegalArgumentException("Unexpected header: Content-Type".toString());
                }
                if ((headers != null ? headers.get(pk0.f5055if) : null) == null) {
                    return new Part(headers, body, rxVar);
                }
                throw new IllegalArgumentException("Unexpected header: Content-Length".toString());
            }

            @m41
            @aq0
            public final Part createFormData(@m41 String name, @z41 String str, @m41 RequestBody body) {
                Csuper.m30700throw(name, "name");
                Csuper.m30700throw(body, "body");
                StringBuilder sb = new StringBuilder();
                sb.append("form-data; name=");
                Companion companion = MultipartBody.Companion;
                companion.appendQuotedString$okhttp(sb, name);
                if (str != null) {
                    sb.append("; filename=");
                    companion.appendQuotedString$okhttp(sb, str);
                }
                String string = sb.toString();
                Csuper.m30696super(string, "StringBuilder().apply(builderAction).toString()");
                return create(new Headers.Builder().addUnsafeNonAscii(pk0.l, string).build(), body);
            }
        }

        private Part(Headers headers, RequestBody requestBody) {
            this.headers = headers;
            this.body = requestBody;
        }

        @m41
        @aq0
        public static final Part create(@z41 Headers headers, @m41 RequestBody requestBody) {
            return Companion.create(headers, requestBody);
        }

        @m41
        @aq0
        public static final Part create(@m41 RequestBody requestBody) {
            return Companion.create(requestBody);
        }

        @m41
        @aq0
        public static final Part createFormData(@m41 String str, @m41 String str2) {
            return Companion.createFormData(str, str2);
        }

        @m41
        @aq0
        public static final Part createFormData(@m41 String str, @z41 String str2, @m41 RequestBody requestBody) {
            return Companion.createFormData(str, str2, requestBody);
        }

        @m41
        @wp0(name = "-deprecated_body")
        @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "body", imports = {}))
        public final RequestBody a() {
            return this.body;
        }

        @wp0(name = "-deprecated_headers")
        @z41
        @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "headers", imports = {}))
        public final Headers b() {
            return this.headers;
        }

        @m41
        @wp0(name = "body")
        public final RequestBody body() {
            return this.body;
        }

        @wp0(name = "headers")
        @z41
        public final Headers headers() {
            return this.headers;
        }

        public /* synthetic */ Part(Headers headers, RequestBody requestBody, rx rxVar) {
            this(headers, requestBody);
        }
    }

    static {
        MediaType.Companion companion = MediaType.Companion;
        MIXED = companion.get("multipart/mixed");
        ALTERNATIVE = companion.get("multipart/alternative");
        DIGEST = companion.get("multipart/digest");
        PARALLEL = companion.get("multipart/parallel");
        FORM = companion.get(HttpConnection.MULTIPART_FORM_DATA);
        COLONSPACE = new byte[]{(byte) 58, (byte) 32};
        CRLF = new byte[]{(byte) 13, (byte) 10};
        byte b = (byte) 45;
        DASHDASH = new byte[]{b, b};
    }

    public MultipartBody(@m41 ByteString boundaryByteString, @m41 MediaType type, @m41 List<Part> parts) {
        Csuper.m30700throw(boundaryByteString, "boundaryByteString");
        Csuper.m30700throw(type, "type");
        Csuper.m30700throw(parts, "parts");
        this.boundaryByteString = boundaryByteString;
        this.type = type;
        this.parts = parts;
        this.contentType = MediaType.Companion.get(type + "; boundary=" + boundary());
        this.contentLength = -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final long writeOrCountBytes(BufferedSink bufferedSink, boolean z) throws IOException {
        Buffer buffer;
        if (z) {
            bufferedSink = new Buffer();
            buffer = bufferedSink;
        } else {
            buffer = 0;
        }
        int size = this.parts.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            Part part = this.parts.get(i);
            Headers headers = part.headers();
            RequestBody requestBodyBody = part.body();
            Csuper.m30672const(bufferedSink);
            bufferedSink.write(DASHDASH);
            bufferedSink.write(this.boundaryByteString);
            bufferedSink.write(CRLF);
            if (headers != null) {
                int size2 = headers.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    bufferedSink.writeUtf8(headers.name(i2)).write(COLONSPACE).writeUtf8(headers.value(i2)).write(CRLF);
                }
            }
            MediaType mediaTypeContentType = requestBodyBody.contentType();
            if (mediaTypeContentType != null) {
                bufferedSink.writeUtf8("Content-Type: ").writeUtf8(mediaTypeContentType.toString()).write(CRLF);
            }
            long jContentLength = requestBodyBody.contentLength();
            if (jContentLength != -1) {
                bufferedSink.writeUtf8("Content-Length: ").writeDecimalLong(jContentLength).write(CRLF);
            } else if (z) {
                Csuper.m30672const(buffer);
                buffer.clear();
                return -1L;
            }
            byte[] bArr = CRLF;
            bufferedSink.write(bArr);
            if (z) {
                j += jContentLength;
            } else {
                requestBodyBody.writeTo(bufferedSink);
            }
            bufferedSink.write(bArr);
        }
        Csuper.m30672const(bufferedSink);
        byte[] bArr2 = DASHDASH;
        bufferedSink.write(bArr2);
        bufferedSink.write(this.boundaryByteString);
        bufferedSink.write(bArr2);
        bufferedSink.write(CRLF);
        if (!z) {
            return j;
        }
        Csuper.m30672const(buffer);
        long size3 = j + buffer.size();
        buffer.clear();
        return size3;
    }

    @m41
    @wp0(name = "-deprecated_boundary")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "boundary", imports = {}))
    public final String a() {
        return boundary();
    }

    @m41
    @wp0(name = "-deprecated_parts")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "parts", imports = {}))
    public final List<Part> b() {
        return this.parts;
    }

    @m41
    @wp0(name = "boundary")
    public final String boundary() {
        return this.boundaryByteString.utf8();
    }

    @wp0(name = "-deprecated_size")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "size", imports = {}))
    public final int c() {
        return size();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        long j = this.contentLength;
        if (j != -1) {
            return j;
        }
        long jWriteOrCountBytes = writeOrCountBytes(null, true);
        this.contentLength = jWriteOrCountBytes;
        return jWriteOrCountBytes;
    }

    @Override // okhttp3.RequestBody
    @m41
    public MediaType contentType() {
        return this.contentType;
    }

    @m41
    @wp0(name = "-deprecated_type")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "type", imports = {}))
    public final MediaType d() {
        return this.type;
    }

    @m41
    public final Part part(int i) {
        return this.parts.get(i);
    }

    @m41
    @wp0(name = "parts")
    public final List<Part> parts() {
        return this.parts;
    }

    @wp0(name = "size")
    public final int size() {
        return this.parts.size();
    }

    @m41
    @wp0(name = "type")
    public final MediaType type() {
        return this.type;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(@m41 BufferedSink sink) throws IOException {
        Csuper.m30700throw(sink, "sink");
        writeOrCountBytes(sink, false);
    }
}
