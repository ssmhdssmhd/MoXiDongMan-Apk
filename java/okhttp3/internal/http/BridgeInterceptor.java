package okhttp3.internal.http;

import android.support.v4.hy1;
import android.support.v4.m41;
import android.support.v4.pk0;
import com.efs.sdk.base.Constants;
import java.io.IOException;
import java.util.List;
import kotlin.Cwhile;
import kotlin.collections.Cthrow;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Creturn;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okio.GzipSource;
import okio.Okio;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016R\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/http/BridgeInterceptor;", "Lokhttp3/Interceptor;", "", "Lokhttp3/Cookie;", "cookies", "", "cookieHeader", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "Lokhttp3/CookieJar;", "cookieJar", "Lokhttp3/CookieJar;", "<init>", "(Lokhttp3/CookieJar;)V", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class BridgeInterceptor implements Interceptor {
    private final CookieJar cookieJar;

    public BridgeInterceptor(@m41 CookieJar cookieJar) {
        Csuper.m30700throw(cookieJar, "cookieJar");
        this.cookieJar = cookieJar;
    }

    private final String cookieHeader(List<Cookie> list) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                Cthrow.j();
            }
            Cookie cookie = (Cookie) obj;
            if (i > 0) {
                sb.append("; ");
            }
            sb.append(cookie.name());
            sb.append(hy1.f2563new);
            sb.append(cookie.value());
            i = i2;
        }
        String string = sb.toString();
        Csuper.m30696super(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @Override // okhttp3.Interceptor
    @m41
    public Response intercept(@m41 Interceptor.Chain chain) throws IOException {
        ResponseBody responseBodyBody;
        Csuper.m30700throw(chain, "chain");
        Request request = chain.request();
        Request.Builder builderNewBuilder = request.newBuilder();
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody != null) {
            MediaType mediaTypeContentType = requestBodyBody.contentType();
            if (mediaTypeContentType != null) {
                builderNewBuilder.header("Content-Type", mediaTypeContentType.toString());
            }
            long jContentLength = requestBodyBody.contentLength();
            if (jContentLength != -1) {
                builderNewBuilder.header(pk0.f5055if, String.valueOf(jContentLength));
                builderNewBuilder.removeHeader(pk0.S);
            } else {
                builderNewBuilder.header(pk0.S, "chunked");
                builderNewBuilder.removeHeader(pk0.f5055if);
            }
        }
        boolean z = false;
        if (request.header(pk0.f5070switch) == null) {
            builderNewBuilder.header(pk0.f5070switch, Util.toHostHeader$default(request.url(), false, 1, null));
        }
        if (request.header(pk0.f5069super) == null) {
            builderNewBuilder.header(pk0.f5069super, "Keep-Alive");
        }
        if (request.header(pk0.f5041break) == null && request.header(pk0.f5059interface) == null) {
            builderNewBuilder.header(pk0.f5041break, Constants.CP_GZIP);
            z = true;
        }
        List<Cookie> listLoadForRequest = this.cookieJar.loadForRequest(request.url());
        if (!listLoadForRequest.isEmpty()) {
            builderNewBuilder.header(pk0.f5073throw, cookieHeader(listLoadForRequest));
        }
        if (request.header(pk0.b) == null) {
            builderNewBuilder.header(pk0.b, Util.userAgent);
        }
        Response responseProceed = chain.proceed(builderNewBuilder.build());
        HttpHeaders.receiveHeaders(this.cookieJar, request.url(), responseProceed.headers());
        Response.Builder builderRequest = responseProceed.newBuilder().request(request);
        if (z && Creturn.X0(Constants.CP_GZIP, Response.header$default(responseProceed, "Content-Encoding", null, 2, null), true) && HttpHeaders.promisesBody(responseProceed) && (responseBodyBody = responseProceed.body()) != null) {
            GzipSource gzipSource = new GzipSource(responseBodyBody.source());
            builderRequest.headers(responseProceed.headers().newBuilder().removeAll("Content-Encoding").removeAll(pk0.f5055if).build());
            builderRequest.body(new RealResponseBody(Response.header$default(responseProceed, "Content-Type", null, 2, null), -1L, Okio.buffer(gzipSource)));
        }
        return builderRequest.build();
    }
}
