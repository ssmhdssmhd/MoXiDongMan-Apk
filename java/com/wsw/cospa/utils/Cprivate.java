package com.wsw.cospa.utils;

import androidx.annotation.NonNull;
import com.efs.sdk.base.Constants;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okio.BufferedSink;
import okio.GzipSink;
import okio.Okio;

/* renamed from: com.wsw.cospa.utils.private, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cprivate implements Interceptor {

    /* renamed from: com.wsw.cospa.utils.private$do, reason: invalid class name */
    public class Cdo extends RequestBody {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ RequestBody f22709do;

        public Cdo(RequestBody requestBody) {
            this.f22709do = requestBody;
        }

        @Override // okhttp3.RequestBody
        public long contentLength() {
            return -1L;
        }

        @Override // okhttp3.RequestBody
        public MediaType contentType() {
            return this.f22709do.contentType();
        }

        @Override // okhttp3.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            BufferedSink bufferedSinkBuffer = Okio.buffer(new GzipSink(bufferedSink));
            this.f22709do.writeTo(bufferedSinkBuffer);
            bufferedSinkBuffer.close();
        }
    }

    /* renamed from: do, reason: not valid java name */
    private RequestBody m27025do(RequestBody requestBody) {
        return new Cdo(requestBody);
    }

    @Override // okhttp3.Interceptor
    @NonNull
    public Response intercept(@NonNull Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        return (request.body() == null || request.header("Content-Encoding") != null) ? chain.proceed(request) : chain.proceed(request.newBuilder().header("Content-Encoding", Constants.CP_GZIP).method(request.method(), m27025do(request.body())).build());
    }
}
