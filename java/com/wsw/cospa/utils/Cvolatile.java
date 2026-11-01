package com.wsw.cospa.utils;

import android.os.Build;
import android.os.Environment;
import android.support.v4.pk0;
import android.support.v4.v02;
import android.support.v4.vv0;
import android.support.v4.wq;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.bean.DnsInfo;
import com.wsw.cospa.model.impl.Cnew;
import com.wsw.cospa.model.impl.Ctry;
import com.wsw.cospa.utils.Cvolatile;
import com.wsw.cospa.utils.cronetUtils.Cif;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.Proxy;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import javax.net.ssl.X509TrustManager;
import okhttp3.Cache;
import okhttp3.ConnectionPool;
import okhttp3.ConnectionSpec;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.TlsVersion;
import okhttp3.brotli.BrotliInterceptor;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava.RxJavaCallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.converter.scalars.ScalarsConverterFactory;

/* renamed from: com.wsw.cospa.utils.volatile, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cvolatile {

    /* renamed from: case, reason: not valid java name */
    public static final int f22760case = 1800;

    /* renamed from: do, reason: not valid java name */
    private static OkHttpClient.Builder f22761do = null;

    /* renamed from: else, reason: not valid java name */
    private static final long f22762else = 1800;

    /* renamed from: for, reason: not valid java name */
    private static Ccontinue f22763for = null;

    /* renamed from: goto, reason: not valid java name */
    private static Map<String, DnsInfo> f22764goto = null;

    /* renamed from: if, reason: not valid java name */
    private static OkHttpClient f22765if = null;

    /* renamed from: new, reason: not valid java name */
    private static Cabstract f22766new = null;

    /* renamed from: try, reason: not valid java name */
    public static final int f22767try = 1800;

    /* renamed from: com.wsw.cospa.utils.volatile$do, reason: invalid class name */
    public class Cdo implements X509TrustManager {
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

    static {
        vv0.m8965if("OkHttpUtil", "static 块");
        m27167this();
        f22764goto = new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public static /* synthetic */ Response m27155break(Interceptor.Chain chain) throws IOException {
        return chain.proceed(chain.request().newBuilder().addHeader("Keep-Alive", "300").addHeader(pk0.f5069super, "Keep-Alive").addHeader(pk0.f5048do, "no-cache").build());
    }

    /* renamed from: case, reason: not valid java name */
    public static String m27156case(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        DnsInfo dnsInfo = f22764goto.get(str);
        if (dnsInfo == null) {
            return m27162final(str);
        }
        List<String> list = dnsInfo.ips;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return list.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public static /* synthetic */ boolean m27157catch(String str, SSLSession sSLSession) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public static /* synthetic */ void m27158class(String str) {
    }

    /* renamed from: const, reason: not valid java name */
    public static DnsInfo m27159const(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        DnsInfo dnsInfo = new DnsInfo();
        ArrayList arrayList = new ArrayList();
        if (str2.indexOf(";") != -1) {
            String[] strArrSplit = str2.split(";");
            String str3 = strArrSplit[strArrSplit.length - 1];
            if (str3.indexOf(",") != -1) {
                String[] strArrSplit2 = str3.split(",");
                for (int i = 0; i < strArrSplit.length - 2; i++) {
                    arrayList.add(strArrSplit[i]);
                }
                arrayList.add(strArrSplit2[0]);
            } else {
                for (int i2 = 0; i2 < strArrSplit.length - 1; i2++) {
                    arrayList.add(strArrSplit[i2]);
                }
            }
            dnsInfo.ips = arrayList;
        } else if (str2.indexOf(",") != -1) {
            arrayList.add(str2.split(",")[0]);
            dnsInfo.ips = arrayList;
        }
        dnsInfo.hostmame = str;
        return dnsInfo;
    }

    /* renamed from: else, reason: not valid java name */
    public static OkHttpClient.Builder m27161else() {
        boolean zM8713do = v02.m8711if(CartoonApplication.m24690do()).m8713do(wq.y, false);
        if (f22761do == null) {
            synchronized (Cvolatile.class) {
                if (f22761do == null) {
                    m27167this();
                }
            }
        }
        if (f22763for == null) {
            synchronized (Cvolatile.class) {
                if (f22763for == null) {
                    f22763for = new Ccontinue();
                }
            }
        }
        if (f22766new == null) {
            synchronized (Cvolatile.class) {
                if (f22766new == null) {
                    f22766new = new Cabstract();
                }
            }
        }
        if (zM8713do) {
            f22761do.dns(f22763for);
        } else {
            f22761do.dns(f22766new);
        }
        return f22761do;
    }

    /* renamed from: final, reason: not valid java name */
    public static String m27162final(String str) throws IOException {
        Request requestBuild = new Request.Builder().url(String.format("http://119.29.29.29/d?dn=%s&ttl=1", str)).get().build();
        try {
            if (f22765if == null) {
                f22765if = m27164goto();
            }
            Response responseExecute = f22765if.newCall(requestBuild).execute();
            if (!responseExecute.isSuccessful()) {
                return null;
            }
            InputStream inputStreamByteStream = responseExecute.body().byteStream();
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamByteStream));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
            }
            String string = sb.toString();
            vv0.m8963do("httpdns", "get ip for host(" + str + ") success :" + string);
            DnsInfo dnsInfoM27159const = m27159const(str, string);
            if (dnsInfoM27159const == null) {
                return null;
            }
            f22764goto.put(str, dnsInfoM27159const);
            List<String> list = dnsInfoM27159const.ips;
            if (list == null || list.size() <= 0) {
                return null;
            }
            return list.get(0);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static OkHttpClient m27164goto() {
        if (f22765if == null) {
            synchronized (Cvolatile.class) {
                if (f22765if == null) {
                    f22765if = m27161else().build();
                }
            }
        }
        OkHttpClient.Builder builderM27161else = m27161else();
        f22761do = builderM27161else;
        OkHttpClient okHttpClientBuild = builderM27161else.build();
        f22765if = okHttpClientBuild;
        return okHttpClientBuild;
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> T m27166new(Class<T> cls, String str) {
        Gson gsonCreate = new GsonBuilder().setPrettyPrinting().disableHtmlEscaping().create();
        return (T) new Retrofit.Builder().baseUrl(str).client(m27164goto()).addConverterFactory(GsonConverterFactory.create(gsonCreate)).addConverterFactory(ScalarsConverterFactory.create()).addCallAdapterFactory(RxJavaCallAdapterFactory.create()).build().create(cls);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m27167this() {
        if (f22763for == null) {
            synchronized (Cvolatile.class) {
                if (f22763for == null) {
                    f22763for = new Ccontinue();
                }
            }
        }
        if (f22766new == null) {
            synchronized (Cvolatile.class) {
                if (f22766new == null) {
                    f22766new = new Cabstract();
                }
            }
        }
        if (!Cif.m26733try().m26736else()) {
            Cif.m26733try().m26735case(CartoonApplication.m24690do());
        }
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        f22761do = builder;
        builder.proxy(Proxy.NO_PROXY);
        f22761do.proxySelector(new Cfinal());
        OkHttpClient.Builder builder2 = f22761do;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builder2.readTimeout(f22762else, timeUnit);
        f22761do.connectTimeout(f22762else, timeUnit);
        f22761do.writeTimeout(f22762else, timeUnit);
        f22761do.retryOnConnectionFailure(true);
        f22761do.connectionPool(new ConnectionPool(5, 1L, timeUnit));
        if (Build.VERSION.SDK_INT == 24) {
            ConnectionSpec connectionSpec = ConnectionSpec.MODERN_TLS;
            f22761do.connectionSpecs(Arrays.asList(connectionSpec, ConnectionSpec.COMPATIBLE_TLS, ConnectionSpec.CLEARTEXT, new ConnectionSpec.Builder(connectionSpec).tlsVersions(TlsVersion.TLS_1_1, TlsVersion.TLS_1_2, TlsVersion.TLS_1_3).build(), new ConnectionSpec.Builder(connectionSpec).tlsVersions(TlsVersion.SSL_3_0).build()));
        } else {
            f22761do.connectionSpecs(Arrays.asList(ConnectionSpec.MODERN_TLS, ConnectionSpec.COMPATIBLE_TLS, ConnectionSpec.CLEARTEXT));
        }
        f22761do.followRedirects(true);
        f22761do.followSslRedirects(true);
        File externalFilesDir = CartoonApplication.m24690do().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        f22761do.cache(new Cache(externalFilesDir, Cdefault.m26763if(externalFilesDir)));
        f22761do.sslSocketFactory(new Cinstanceof(Ctry.m26450new()), new Cdo()).hostnameVerifier(new HostnameVerifier() { // from class: android.support.v4.r61
            @Override // javax.net.ssl.HostnameVerifier
            public final boolean verify(String str, SSLSession sSLSession) {
                return Cvolatile.m27157catch(str, sSLSession);
            }
        });
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(new HttpLoggingInterceptor.Logger() { // from class: android.support.v4.t61
            @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
            public final void log(String str) {
                Cvolatile.m27158class(str);
            }
        });
        httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.HEADERS);
        f22761do.addNetworkInterceptor(httpLoggingInterceptor);
        f22761do.addInterceptor(new Cnew(1));
        f22761do.addInterceptor(m27168try());
        f22761do.addInterceptor(new com.wsw.cospa.utils.cronetUtils.Cdo());
        f22761do.addInterceptor(BrotliInterceptor.INSTANCE);
        f22761do.protocols(Collections.unmodifiableList(Arrays.asList(Protocol.HTTP_2, Protocol.HTTP_1_1)));
        if (v02.m8711if(CartoonApplication.m24690do()).m8713do(wq.y, false)) {
            f22761do.dns(f22763for);
        } else {
            f22761do.dns(f22766new);
        }
        f22765if = f22761do.build();
    }

    /* renamed from: try, reason: not valid java name */
    private static Interceptor m27168try() {
        return new Interceptor() { // from class: android.support.v4.s61
            @Override // okhttp3.Interceptor
            public final Response intercept(Interceptor.Chain chain) {
                return Cvolatile.m27155break(chain);
            }
        };
    }
}
