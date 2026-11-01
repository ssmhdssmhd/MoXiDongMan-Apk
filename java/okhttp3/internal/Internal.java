package okhttp3.internal;

import android.support.v4.m41;
import android.support.v4.wp0;
import android.support.v4.z41;
import javax.net.ssl.SSLSocket;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import okhttp3.Cache;
import okhttp3.ConnectionSpec;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import org.mozilla.javascript.ES6Iterator;

@wp0(name = "Internal")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a \u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004\u001a\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t\u001a\u0016\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0004\u001a\u001e\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004\u001a\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014\u001a\u001e\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\t¨\u0006\u001f"}, d2 = {"", "currentTimeMillis", "Lokhttp3/HttpUrl;", "url", "", "setCookie", "Lokhttp3/Cookie;", "parseCookie", "cookie", "", "forObsoleteRfc2965", "cookieToString", "Lokhttp3/Headers$Builder;", "builder", "line", "addHeaderLenient", "name", ES6Iterator.VALUE_PROPERTY, "Lokhttp3/Cache;", "cache", "Lokhttp3/Request;", "request", "Lokhttp3/Response;", "cacheGet", "Lokhttp3/ConnectionSpec;", "connectionSpec", "Ljavax/net/ssl/SSLSocket;", "sslSocket", "isFallback", "Landroid/support/v4/ub2;", "applyConnectionSpec", "okhttp"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class Internal {
    @m41
    public static final Headers.Builder addHeaderLenient(@m41 Headers.Builder builder, @m41 String line) {
        Csuper.m30700throw(builder, "builder");
        Csuper.m30700throw(line, "line");
        return builder.addLenient$okhttp(line);
    }

    public static final void applyConnectionSpec(@m41 ConnectionSpec connectionSpec, @m41 SSLSocket sslSocket, boolean z) throws CloneNotSupportedException {
        Csuper.m30700throw(connectionSpec, "connectionSpec");
        Csuper.m30700throw(sslSocket, "sslSocket");
        connectionSpec.apply$okhttp(sslSocket, z);
    }

    @z41
    public static final Response cacheGet(@m41 Cache cache, @m41 Request request) {
        Csuper.m30700throw(cache, "cache");
        Csuper.m30700throw(request, "request");
        return cache.get$okhttp(request);
    }

    @m41
    public static final String cookieToString(@m41 Cookie cookie, boolean z) {
        Csuper.m30700throw(cookie, "cookie");
        return cookie.toString$okhttp(z);
    }

    @z41
    public static final Cookie parseCookie(long j, @m41 HttpUrl url, @m41 String setCookie) {
        Csuper.m30700throw(url, "url");
        Csuper.m30700throw(setCookie, "setCookie");
        return Cookie.Companion.parse$okhttp(j, url, setCookie);
    }

    @m41
    public static final Headers.Builder addHeaderLenient(@m41 Headers.Builder builder, @m41 String name, @m41 String value) {
        Csuper.m30700throw(builder, "builder");
        Csuper.m30700throw(name, "name");
        Csuper.m30700throw(value, "value");
        return builder.addLenient$okhttp(name, value);
    }
}
