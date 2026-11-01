package okhttp3.brotli;

import android.support.v4.m41;
import android.support.v4.pk0;
import com.efs.sdk.base.Constants;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Creturn;
import okhttp3.Interceptor;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;
import org.brotli.dec.Cif;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lokhttp3/brotli/BrotliInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "response", "uncompress$okhttp_brotli", "(Lokhttp3/Response;)Lokhttp3/Response;", "uncompress", "<init>", "()V", "okhttp-brotli"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class BrotliInterceptor implements Interceptor {
    public static final BrotliInterceptor INSTANCE = new BrotliInterceptor();

    private BrotliInterceptor() {
    }

    @Override // okhttp3.Interceptor
    @m41
    public Response intercept(@m41 Interceptor.Chain chain) {
        Csuper.m30700throw(chain, "chain");
        return chain.request().header(pk0.f5041break) == null ? uncompress$okhttp_brotli(chain.proceed(chain.request().newBuilder().header(pk0.f5041break, "br,gzip").build())) : chain.proceed(chain.request());
    }

    @m41
    public final Response uncompress$okhttp_brotli(@m41 Response response) {
        ResponseBody responseBodyBody;
        String strHeader$default;
        BufferedSource bufferedSourceBuffer;
        Csuper.m30700throw(response, "response");
        if (!HttpHeaders.promisesBody(response) || (responseBodyBody = response.body()) == null || (strHeader$default = Response.header$default(response, "Content-Encoding", null, 2, null)) == null) {
            return response;
        }
        if (Creturn.X0(strHeader$default, "br", true)) {
            bufferedSourceBuffer = Okio.buffer(Okio.source(new Cif(responseBodyBody.source().inputStream())));
        } else {
            if (!Creturn.X0(strHeader$default, Constants.CP_GZIP, true)) {
                return response;
            }
            bufferedSourceBuffer = Okio.buffer(new GzipSource(responseBodyBody.source()));
        }
        return response.newBuilder().removeHeader("Content-Encoding").removeHeader(pk0.f5055if).body(ResponseBody.Companion.create(bufferedSourceBuffer, responseBodyBody.contentType(), -1L)).build();
    }
}
