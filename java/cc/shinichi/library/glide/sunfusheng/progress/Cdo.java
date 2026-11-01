package cc.shinichi.library.glide.sunfusheng.progress;

import android.text.TextUtils;
import cc.shinichi.library.glide.sunfusheng.progress.ProgressResponseBody;
import java.io.IOException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.X509TrustManager;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* renamed from: cc.shinichi.library.glide.sunfusheng.progress.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static Map<String, OnProgressListener> f8747do = Collections.synchronizedMap(new HashMap());

    /* renamed from: if, reason: not valid java name */
    private static final ProgressResponseBody.InternalProgressListener f8748if = new C0009do();

    /* renamed from: cc.shinichi.library.glide.sunfusheng.progress.do$do, reason: invalid class name and collision with other inner class name */
    public class C0009do implements ProgressResponseBody.InternalProgressListener {
        @Override // cc.shinichi.library.glide.sunfusheng.progress.ProgressResponseBody.InternalProgressListener
        public void onProgress(String str, long j, long j2) {
            OnProgressListener onProgressListenerM10435new = Cdo.m10435new(str);
            if (onProgressListenerM10435new != null) {
                int i = (int) (((j * 1.0f) / j2) * 100.0f);
                boolean z = i >= 100;
                onProgressListenerM10435new.onProgress(str, z, i, j, j2);
                if (z) {
                    Cdo.m10436try(str);
                }
            }
        }
    }

    /* renamed from: cc.shinichi.library.glide.sunfusheng.progress.do$for, reason: invalid class name */
    public class Cfor implements Interceptor {
        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) throws IOException {
            Request request = chain.request();
            Response responseProceed = chain.proceed(request);
            return responseProceed.newBuilder().body(new ProgressResponseBody(request.url().toString(), Cdo.f8748if, responseProceed.body())).build();
        }
    }

    /* renamed from: cc.shinichi.library.glide.sunfusheng.progress.do$if, reason: invalid class name */
    public class Cif implements X509TrustManager {
        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    private Cdo() {
    }

    /* renamed from: for, reason: not valid java name */
    public static OkHttpClient m10433for() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.addNetworkInterceptor(new Cfor()).sslSocketFactory(cc.shinichi.library.glide.Cif.m10427if(), new Cif()).hostnameVerifier(cc.shinichi.library.glide.Cif.m10425do());
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builder.connectTimeout(30L, timeUnit);
        builder.writeTimeout(30L, timeUnit);
        builder.readTimeout(30L, timeUnit);
        return builder.build();
    }

    /* renamed from: if, reason: not valid java name */
    public static void m10434if(String str, OnProgressListener onProgressListener) {
        if (TextUtils.isEmpty(str) || onProgressListener == null) {
            return;
        }
        f8747do.put(str, onProgressListener);
        onProgressListener.onProgress(str, false, 1, 0L, 0L);
    }

    /* renamed from: new, reason: not valid java name */
    public static OnProgressListener m10435new(String str) {
        Map<String, OnProgressListener> map;
        OnProgressListener onProgressListener;
        if (TextUtils.isEmpty(str) || (map = f8747do) == null || map.size() == 0 || (onProgressListener = f8747do.get(str)) == null) {
            return null;
        }
        return onProgressListener;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m10436try(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f8747do.remove(str);
    }
}
