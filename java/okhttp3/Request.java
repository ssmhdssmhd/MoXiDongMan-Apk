package okhttp3;

import android.support.v4.an1;
import android.support.v4.m41;
import android.support.v4.p42;
import android.support.v4.pk0;
import android.support.v4.qb1;
import android.support.v4.wp0;
import android.support.v4.xp0;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import java.net.URL;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.collections.Cinterface;
import kotlin.collections.Cthrow;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Creturn;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpMethod;
import org.mozilla.javascript.ES6Iterator;
import org.slf4j.helpers.MessageFormatter;
import sun.security.util.SecurityConstants;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u00011BC\b\u0000\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0015\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0018\u0012\u0016\u0010(\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0004\u0012\u00020\u00010'¢\u0006\u0004\b/\u00100J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001J%\u0010\u0007\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\b2\u000e\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\t¢\u0006\u0004\b\u0007\u0010\u000bJ\u0006\u0010\r\u001a\u00020\fJ\u000f\u0010\u0011\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0014\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0006\u001a\u00020\u0015H\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u0018H\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001f\u001a\u00020\u001cH\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\b\u0010 \u001a\u00020\u0002H\u0016R\u0018\u0010!\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0019\u0010\u0011\u001a\u00020\u000e8\u0007@\u0006¢\u0006\f\n\u0004\b\u0011\u0010#\u001a\u0004\b\u0011\u0010\u0010R\u0019\u0010\u0014\u001a\u00020\u00028\u0007@\u0006¢\u0006\f\n\u0004\b\u0014\u0010$\u001a\u0004\b\u0014\u0010\u0013R\u0019\u0010\u0006\u001a\u00020\u00158\u0007@\u0006¢\u0006\f\n\u0004\b\u0006\u0010%\u001a\u0004\b\u0006\u0010\u0017R\u001b\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0007@\u0006¢\u0006\f\n\u0004\b\u001b\u0010&\u001a\u0004\b\u001b\u0010\u001aR,\u0010(\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0004\u0012\u00020\u00010'8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u0013\u0010-\u001a\u00020,8F@\u0006¢\u0006\u0006\u001a\u0004\b-\u0010.R\u0013\u0010\u001f\u001a\u00020\u001c8G@\u0006¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u001e¨\u00062"}, d2 = {"Lokhttp3/Request;", "", "", "name", "header", "", "headers", p42.f4845if, ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/Class;", "type", "(Ljava/lang/Class;)Ljava/lang/Object;", "Lokhttp3/Request$Builder;", "newBuilder", "Lokhttp3/HttpUrl;", "-deprecated_url", "()Lokhttp3/HttpUrl;", "url", "-deprecated_method", "()Ljava/lang/String;", "method", "Lokhttp3/Headers;", "-deprecated_headers", "()Lokhttp3/Headers;", "Lokhttp3/RequestBody;", "-deprecated_body", "()Lokhttp3/RequestBody;", "body", "Lokhttp3/CacheControl;", "-deprecated_cacheControl", "()Lokhttp3/CacheControl;", "cacheControl", "toString", "lazyCacheControl", "Lokhttp3/CacheControl;", "Lokhttp3/HttpUrl;", "Ljava/lang/String;", "Lokhttp3/Headers;", "Lokhttp3/RequestBody;", "", p42.f4844do, "Ljava/util/Map;", "getTags$okhttp", "()Ljava/util/Map;", "", "isHttps", "()Z", "<init>", "(Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/RequestBody;Ljava/util/Map;)V", "Builder", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class Request {

    @z41
    private final RequestBody body;

    @m41
    private final Headers headers;
    private CacheControl lazyCacheControl;

    @m41
    private final String method;

    @m41
    private final Map<Class<?>, Object> tags;

    @m41
    private final HttpUrl url;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010%\n\u0002\b\u000b\b\u0016\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b;\u0010<B\u0011\b\u0010\u0012\u0006\u0010=\u001a\u00020\u001d¢\u0006\u0004\b;\u0010>J\u0010\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0005H\u0016J\u0018\u0010\b\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\u0000H\u0016J\b\u0010\u0010\u001a\u00020\u0000H\u0016J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0014\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0017J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u001a\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u0016J/\u0010\u0018\u001a\u00020\u0000\"\u0004\b\u0000\u0010\u00192\u000e\u0010\u001b\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u001a2\b\u0010\u0018\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b\u0018\u0010\u001cJ\b\u0010\u001e\u001a\u00020\u001dH\u0016R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010\u0017\u001a\u00020\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\"\u0010\f\u001a\u00020)8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\f\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R$\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R2\u00105\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a\u0012\u0004\u0012\u00020\u0001048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:¨\u0006?"}, d2 = {"Lokhttp3/Request$Builder;", "", "Lokhttp3/HttpUrl;", "url", "", "Ljava/net/URL;", "name", ES6Iterator.VALUE_PROPERTY, "header", "addHeader", "removeHeader", "Lokhttp3/Headers;", "headers", "Lokhttp3/CacheControl;", "cacheControl", "get", "head", "Lokhttp3/RequestBody;", "body", "post", SecurityConstants.FILE_DELETE_ACTION, "put", "patch", "method", p42.f4845if, ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/Class;", "type", "(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;", "Lokhttp3/Request;", "build", "Lokhttp3/HttpUrl;", "getUrl$okhttp", "()Lokhttp3/HttpUrl;", "setUrl$okhttp", "(Lokhttp3/HttpUrl;)V", "Ljava/lang/String;", "getMethod$okhttp", "()Ljava/lang/String;", "setMethod$okhttp", "(Ljava/lang/String;)V", "Lokhttp3/Headers$Builder;", "Lokhttp3/Headers$Builder;", "getHeaders$okhttp", "()Lokhttp3/Headers$Builder;", "setHeaders$okhttp", "(Lokhttp3/Headers$Builder;)V", "Lokhttp3/RequestBody;", "getBody$okhttp", "()Lokhttp3/RequestBody;", "setBody$okhttp", "(Lokhttp3/RequestBody;)V", "", p42.f4844do, "Ljava/util/Map;", "getTags$okhttp", "()Ljava/util/Map;", "setTags$okhttp", "(Ljava/util/Map;)V", "<init>", "()V", "request", "(Lokhttp3/Request;)V", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static class Builder {

        @z41
        private RequestBody body;

        @m41
        private Headers.Builder headers;

        @m41
        private String method;

        @m41
        private Map<Class<?>, Object> tags;

        @z41
        private HttpUrl url;

        public Builder() {
            this.tags = new LinkedHashMap();
            this.method = "GET";
            this.headers = new Headers.Builder();
        }

        public static /* synthetic */ Builder delete$default(Builder builder, RequestBody requestBody, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
            }
            if ((i & 1) != 0) {
                requestBody = Util.EMPTY_REQUEST;
            }
            return builder.delete(requestBody);
        }

        @m41
        public Builder addHeader(@m41 String name, @m41 String value) {
            Csuper.m30700throw(name, "name");
            Csuper.m30700throw(value, "value");
            this.headers.add(name, value);
            return this;
        }

        @m41
        public Request build() {
            HttpUrl httpUrl = this.url;
            if (httpUrl != null) {
                return new Request(httpUrl, this.method, this.headers.build(), this.body, Util.toImmutableMap(this.tags));
            }
            throw new IllegalStateException("url == null".toString());
        }

        @m41
        public Builder cacheControl(@m41 CacheControl cacheControl) {
            Csuper.m30700throw(cacheControl, "cacheControl");
            String string = cacheControl.toString();
            return string.length() == 0 ? removeHeader(pk0.f5048do) : header(pk0.f5048do, string);
        }

        @m41
        @xp0
        public final Builder delete() {
            return delete$default(this, null, 1, null);
        }

        @m41
        @xp0
        public Builder delete(@z41 RequestBody requestBody) {
            return method("DELETE", requestBody);
        }

        @m41
        public Builder get() {
            return method("GET", null);
        }

        @z41
        public final RequestBody getBody$okhttp() {
            return this.body;
        }

        @m41
        public final Headers.Builder getHeaders$okhttp() {
            return this.headers;
        }

        @m41
        public final String getMethod$okhttp() {
            return this.method;
        }

        @m41
        public final Map<Class<?>, Object> getTags$okhttp() {
            return this.tags;
        }

        @z41
        public final HttpUrl getUrl$okhttp() {
            return this.url;
        }

        @m41
        public Builder head() {
            return method("HEAD", null);
        }

        @m41
        public Builder header(@m41 String name, @m41 String value) {
            Csuper.m30700throw(name, "name");
            Csuper.m30700throw(value, "value");
            this.headers.set(name, value);
            return this;
        }

        @m41
        public Builder headers(@m41 Headers headers) {
            Csuper.m30700throw(headers, "headers");
            this.headers = headers.newBuilder();
            return this;
        }

        @m41
        public Builder method(@m41 String method, @z41 RequestBody requestBody) {
            Csuper.m30700throw(method, "method");
            if (!(method.length() > 0)) {
                throw new IllegalArgumentException("method.isEmpty() == true".toString());
            }
            if (requestBody == null) {
                if (!(true ^ HttpMethod.requiresRequestBody(method))) {
                    throw new IllegalArgumentException(("method " + method + " must have a request body.").toString());
                }
            } else if (!HttpMethod.permitsRequestBody(method)) {
                throw new IllegalArgumentException(("method " + method + " must not have a request body.").toString());
            }
            this.method = method;
            this.body = requestBody;
            return this;
        }

        @m41
        public Builder patch(@m41 RequestBody body) {
            Csuper.m30700throw(body, "body");
            return method("PATCH", body);
        }

        @m41
        public Builder post(@m41 RequestBody body) {
            Csuper.m30700throw(body, "body");
            return method("POST", body);
        }

        @m41
        public Builder put(@m41 RequestBody body) {
            Csuper.m30700throw(body, "body");
            return method("PUT", body);
        }

        @m41
        public Builder removeHeader(@m41 String name) {
            Csuper.m30700throw(name, "name");
            this.headers.removeAll(name);
            return this;
        }

        public final void setBody$okhttp(@z41 RequestBody requestBody) {
            this.body = requestBody;
        }

        public final void setHeaders$okhttp(@m41 Headers.Builder builder) {
            Csuper.m30700throw(builder, "<set-?>");
            this.headers = builder;
        }

        public final void setMethod$okhttp(@m41 String str) {
            Csuper.m30700throw(str, "<set-?>");
            this.method = str;
        }

        public final void setTags$okhttp(@m41 Map<Class<?>, Object> map) {
            Csuper.m30700throw(map, "<set-?>");
            this.tags = map;
        }

        public final void setUrl$okhttp(@z41 HttpUrl httpUrl) {
            this.url = httpUrl;
        }

        @m41
        public Builder tag(@z41 Object obj) {
            return tag(Object.class, obj);
        }

        @m41
        public Builder url(@m41 HttpUrl url) {
            Csuper.m30700throw(url, "url");
            this.url = url;
            return this;
        }

        @m41
        public <T> Builder tag(@m41 Class<? super T> type, @z41 T t) {
            Csuper.m30700throw(type, "type");
            if (t == null) {
                this.tags.remove(type);
            } else {
                if (this.tags.isEmpty()) {
                    this.tags = new LinkedHashMap();
                }
                Map<Class<?>, Object> map = this.tags;
                T tCast = type.cast(t);
                Csuper.m30672const(tCast);
                map.put(type, tCast);
            }
            return this;
        }

        @m41
        public Builder url(@m41 String url) {
            Csuper.m30700throw(url, "url");
            if (Creturn.F1(url, "ws:", true)) {
                StringBuilder sb = new StringBuilder();
                sb.append("http:");
                String strSubstring = url.substring(3);
                Csuper.m30696super(strSubstring, "(this as java.lang.String).substring(startIndex)");
                sb.append(strSubstring);
                url = sb.toString();
            } else if (Creturn.F1(url, "wss:", true)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("https:");
                String strSubstring2 = url.substring(4);
                Csuper.m30696super(strSubstring2, "(this as java.lang.String).substring(startIndex)");
                sb2.append(strSubstring2);
                url = sb2.toString();
            }
            return url(HttpUrl.Companion.get(url));
        }

        public Builder(@m41 Request request) {
            Map<Class<?>, Object> mapW;
            Csuper.m30700throw(request, "request");
            this.tags = new LinkedHashMap();
            this.url = request.url();
            this.method = request.method();
            this.body = request.body();
            if (request.getTags$okhttp().isEmpty()) {
                mapW = new LinkedHashMap<>();
            } else {
                mapW = Cinterface.W(request.getTags$okhttp());
            }
            this.tags = mapW;
            this.headers = request.headers().newBuilder();
        }

        @m41
        public Builder url(@m41 URL url) {
            Csuper.m30700throw(url, "url");
            HttpUrl.Companion companion = HttpUrl.Companion;
            String string = url.toString();
            Csuper.m30696super(string, "url.toString()");
            return url(companion.get(string));
        }
    }

    public Request(@m41 HttpUrl url, @m41 String method, @m41 Headers headers, @z41 RequestBody requestBody, @m41 Map<Class<?>, ? extends Object> tags) {
        Csuper.m30700throw(url, "url");
        Csuper.m30700throw(method, "method");
        Csuper.m30700throw(headers, "headers");
        Csuper.m30700throw(tags, "tags");
        this.url = url;
        this.method = method;
        this.headers = headers;
        this.body = requestBody;
        this.tags = tags;
    }

    @wp0(name = "-deprecated_body")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "body", imports = {}))
    public final RequestBody a() {
        return this.body;
    }

    @m41
    @wp0(name = "-deprecated_cacheControl")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "cacheControl", imports = {}))
    public final CacheControl b() {
        return cacheControl();
    }

    @wp0(name = "body")
    @z41
    public final RequestBody body() {
        return this.body;
    }

    @m41
    @wp0(name = "-deprecated_headers")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "headers", imports = {}))
    public final Headers c() {
        return this.headers;
    }

    @m41
    @wp0(name = "cacheControl")
    public final CacheControl cacheControl() {
        CacheControl cacheControl = this.lazyCacheControl;
        if (cacheControl != null) {
            return cacheControl;
        }
        CacheControl cacheControl2 = CacheControl.Companion.parse(this.headers);
        this.lazyCacheControl = cacheControl2;
        return cacheControl2;
    }

    @m41
    @wp0(name = "-deprecated_method")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "method", imports = {}))
    public final String d() {
        return this.method;
    }

    @m41
    @wp0(name = "-deprecated_url")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "url", imports = {}))
    public final HttpUrl e() {
        return this.url;
    }

    @m41
    public final Map<Class<?>, Object> getTags$okhttp() {
        return this.tags;
    }

    @z41
    public final String header(@m41 String name) {
        Csuper.m30700throw(name, "name");
        return this.headers.get(name);
    }

    @m41
    @wp0(name = "headers")
    public final Headers headers() {
        return this.headers;
    }

    public final boolean isHttps() {
        return this.url.isHttps();
    }

    @m41
    @wp0(name = "method")
    public final String method() {
        return this.method;
    }

    @m41
    public final Builder newBuilder() {
        return new Builder(this);
    }

    @z41
    public final Object tag() {
        return tag(Object.class);
    }

    @m41
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request{method=");
        sb.append(this.method);
        sb.append(", url=");
        sb.append(this.url);
        if (this.headers.size() != 0) {
            sb.append(", headers=[");
            int i = 0;
            for (qb1<? extends String, ? extends String> qb1Var : this.headers) {
                int i2 = i + 1;
                if (i < 0) {
                    Cthrow.j();
                }
                qb1<? extends String, ? extends String> qb1Var2 = qb1Var;
                String strComponent1 = qb1Var2.component1();
                String strComponent2 = qb1Var2.component2();
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(strComponent1);
                sb.append(':');
                sb.append(strComponent2);
                i = i2;
            }
            sb.append(']');
        }
        if (!this.tags.isEmpty()) {
            sb.append(", tags=");
            sb.append(this.tags);
        }
        sb.append(MessageFormatter.DELIM_STOP);
        String string = sb.toString();
        Csuper.m30696super(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @m41
    @wp0(name = "url")
    public final HttpUrl url() {
        return this.url;
    }

    @m41
    public final List<String> headers(@m41 String name) {
        Csuper.m30700throw(name, "name");
        return this.headers.values(name);
    }

    @z41
    public final <T> T tag(@m41 Class<? extends T> type) {
        Csuper.m30700throw(type, "type");
        return type.cast(this.tags.get(type));
    }
}
