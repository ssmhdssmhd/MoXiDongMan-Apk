package com.wsw.cospa.model.impl;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.pk0;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.gson.GsonBuilder;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.bean.CookieBean;
import com.wsw.cospa.dao.Cnew;
import com.wsw.cospa.model.impl.Cif;
import com.wsw.cospa.utils.Cvolatile;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeUrl;
import com.wsw.cospa.utils.analyzeUrl.impl.IHttpGetApi;
import com.wsw.cospa.utils.analyzeUrl.impl.IHttpPostApi;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.ConnectionPool;
import okhttp3.ConnectionSpec;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Response;
import org.apache.commons.lang3.Ccatch;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;

/* renamed from: com.wsw.cospa.model.impl.if, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cif {

    /* renamed from: do, reason: not valid java name */
    private static OkHttpClient.Builder f22374do = null;

    /* renamed from: for, reason: not valid java name */
    public static final int f22375for = 120;

    /* renamed from: if, reason: not valid java name */
    public static final int f22376if = 120;

    /* renamed from: new, reason: not valid java name */
    private static final long f22377new = 120;

    /* renamed from: com.wsw.cospa.model.impl.if$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ WebView f22378do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ ObservableEmitter f22379for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f22380if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Handler f22381new;

        public Cdo(WebView webView, String str, ObservableEmitter observableEmitter, Handler handler) {
            this.f22378do = webView;
            this.f22380if = str;
            this.f22379for = observableEmitter;
            this.f22381new = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public /* synthetic */ void m26446if(ObservableEmitter observableEmitter, WebView webView, Handler handler, String str) {
            String strM32234super = Ccatch.m32234super(str);
            if (!Cif.this.m26427final(strM32234super)) {
                handler.postDelayed(this, 1000L);
                return;
            }
            observableEmitter.onNext(strM32234super);
            observableEmitter.onComplete();
            webView.destroy();
            handler.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            final WebView webView = this.f22378do;
            String str = this.f22380if;
            final ObservableEmitter observableEmitter = this.f22379for;
            final Handler handler = this.f22381new;
            webView.evaluateJavascript(str, new ValueCallback() { // from class: com.wsw.cospa.model.impl.do
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(Object obj) {
                    this.f22369do.m26446if(observableEmitter, webView, handler, (String) obj);
                }
            });
        }
    }

    /* renamed from: com.wsw.cospa.model.impl.if$for, reason: invalid class name */
    public static /* synthetic */ class Cfor {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f22383do;

        static {
            int[] iArr = new int[AnalyzeUrl.UrlMode.values().length];
            f22383do = iArr;
            try {
                iArr[AnalyzeUrl.UrlMode.POST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22383do[AnalyzeUrl.UrlMode.GET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.wsw.cospa.model.impl.if$if, reason: invalid class name and collision with other inner class name */
    public class C0225if extends WebViewClient {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CookieManager f22385do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ String f22386for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ WebView f22387if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Handler f22388new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ Runnable f22389try;

        public C0225if(CookieManager cookieManager, WebView webView, String str, Handler handler, Runnable runnable) {
            this.f22385do = cookieManager;
            this.f22387if = webView;
            this.f22386for = str;
            this.f22388new = handler;
            this.f22389try = runnable;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            HashMap map = new HashMap();
            map.put(pk0.f5073throw, this.f22385do.getCookie(this.f22387if.getUrl()));
            CookieBean cookieBeanLoad = Cnew.m26132case().m26138try().m3142this().load(this.f22386for);
            if (cookieBeanLoad != null) {
                cookieBeanLoad.setVariable(map);
                Cnew.m26132case().m26138try().m3142this().insertOrReplace(cookieBeanLoad);
            } else {
                Cnew.m26132case().m26138try().m3142this().insertOrReplace(new CookieBean(this.f22386for, new GsonBuilder().disableHtmlEscaping().create().toJson(map)));
            }
            this.f22388new.post(this.f22389try);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static Cif m26424break() {
        return new Cif();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public boolean m26427final(String str) {
        return Pattern.matches(".*[^\\x00-\\xFF]{50,}.*", str.replaceAll("&nbsp;|<br.*?>|\\s|\\n", ""));
    }

    /* renamed from: goto, reason: not valid java name */
    public static OkHttpClient.Builder m26429goto() {
        SSLSocketFactory ccase = Build.VERSION.SDK_INT < 21 ? new Ccase(Ctry.m26449if()) : Ctry.m26450new();
        ArrayList arrayList = new ArrayList();
        arrayList.add(ConnectionSpec.MODERN_TLS);
        arrayList.add(ConnectionSpec.COMPATIBLE_TLS);
        arrayList.add(ConnectionSpec.CLEARTEXT);
        if (f22374do == null) {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            f22374do = builder.connectTimeout(f22377new, timeUnit).writeTimeout(f22377new, timeUnit).readTimeout(f22377new, timeUnit).retryOnConnectionFailure(true).sslSocketFactory(ccase, Ctry.m26449if()).hostnameVerifier(Ctry.m26448for()).protocols(Collections.singletonList(Protocol.HTTP_1_1)).addInterceptor(m26435this()).connectionPool(new ConnectionPool(5, 1L, timeUnit)).addInterceptor(new Cnew(1)).followRedirects(true).followSslRedirects(true).connectionSpecs(arrayList);
        }
        return f22374do;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public static /* synthetic */ Response m26431import(Interceptor.Chain chain) throws IOException {
        return chain.proceed(chain.request().newBuilder().addHeader("Keep-Alive", "300").addHeader(pk0.f5069super, "Keep-Alive").addHeader(pk0.f5048do, "no-cache").build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: native, reason: not valid java name */
    public static /* synthetic */ void m26432native(retrofit2.Response response, boolean z, String str, ObservableEmitter observableEmitter) throws Exception {
        CookieBean cookieBeanLoad;
        if (!response.raw().headers(pk0.M).isEmpty() && z) {
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = response.raw().headers(pk0.M).iterator();
            while (it.hasNext()) {
                for (String str2 : it.next().split(";")) {
                    if (!TextUtils.isEmpty(str2)) {
                        sb.append(str2);
                        sb.append(";");
                    }
                }
            }
            String string = sb.toString();
            if (!TextUtils.isEmpty(string)) {
                HashMap map = new HashMap();
                map.put(pk0.f5073throw, string);
                CookieBean cookieBeanLoad2 = Cnew.m26132case().m26138try().m3142this().load(str);
                if (cookieBeanLoad2 != null) {
                    cookieBeanLoad2.setVariable(map);
                    Cnew.m26132case().m26138try().m3142this().insertOrReplace(cookieBeanLoad2);
                } else {
                    Cnew.m26132case().m26138try().m3142this().insertOrReplace(new CookieBean(str, new GsonBuilder().disableHtmlEscaping().create().toJson(map)));
                }
            }
        } else if (!z && (cookieBeanLoad = Cnew.m26132case().m26138try().m3142this().load(str)) != null) {
            cookieBeanLoad.getVariable().remove(pk0.f5073throw);
            Cnew.m26132case().m26138try().m3142this().insertOrReplace(cookieBeanLoad);
        }
        observableEmitter.onNext(response);
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public static /* synthetic */ void m26434super(ObservableEmitter observableEmitter, Handler handler, Runnable runnable, WebView webView) {
        if (observableEmitter.isDisposed()) {
            return;
        }
        handler.removeCallbacks(runnable);
        observableEmitter.onNext("超时");
        observableEmitter.onComplete();
        webView.destroy();
    }

    /* renamed from: this, reason: not valid java name */
    private static Interceptor m26435this() {
        return new Interceptor() { // from class: android.support.v4.l7
            @Override // okhttp3.Interceptor
            public final Response intercept(Interceptor.Chain chain) {
                return Cif.m26431import(chain);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public /* synthetic */ void m26436throw(AnalyzeUrl analyzeUrl, String str, final ObservableEmitter observableEmitter, final Handler handler, String str2) {
        final WebView webView = new WebView(CartoonApplication.m24693try());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setUserAgentString(analyzeUrl.getHeaderMap().get(pk0.b));
        CookieManager cookieManager = CookieManager.getInstance();
        final Cdo cdo = new Cdo(webView, str, observableEmitter, handler);
        handler.postDelayed(new Runnable() { // from class: android.support.v4.k7
            @Override // java.lang.Runnable
            public final void run() {
                Cif.m26434super(observableEmitter, handler, cdo, webView);
            }
        }, 25000L);
        webView.setWebViewClient(new C0225if(cookieManager, webView, str2, handler, cdo));
        int i = Cfor.f22383do[analyzeUrl.getUrlMode().ordinal()];
        if (i == 1) {
            webView.postUrl(analyzeUrl.getUrl(), analyzeUrl.getQueryStr().getBytes());
        } else if (i != 2) {
            webView.loadUrl(analyzeUrl.getUrl());
        } else {
            webView.loadUrl(String.format("%s?%s", analyzeUrl.getUrl(), analyzeUrl.getQueryStr()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public /* synthetic */ void m26438while(final AnalyzeUrl analyzeUrl, final String str, final String str2, final ObservableEmitter observableEmitter) throws Exception {
        final Handler handler = new Handler(Looper.getMainLooper());
        handler.post(new Runnable() { // from class: android.support.v4.j7
            @Override // java.lang.Runnable
            public final void run() {
                this.f3018do.m26436throw(analyzeUrl, str, observableEmitter, handler, str2);
            }
        });
    }

    /* renamed from: catch, reason: not valid java name */
    public io.reactivex.Cnew<retrofit2.Response<String>> m26439catch(AnalyzeUrl analyzeUrl) {
        int i = Cfor.f22383do[analyzeUrl.getUrlMode().ordinal()];
        return i != 1 ? i != 2 ? ((IHttpGetApi) m26440class(analyzeUrl.getHost()).create(IHttpGetApi.class)).getWebContent(analyzeUrl.getPath(), analyzeUrl.getHeaderMap()) : ((IHttpGetApi) m26440class(analyzeUrl.getHost()).create(IHttpGetApi.class)).searchBook(analyzeUrl.getPath(), analyzeUrl.getQueryMap(), analyzeUrl.getHeaderMap()) : analyzeUrl.getBody() != null ? ((IHttpPostApi) m26440class(analyzeUrl.getHost()).create(IHttpPostApi.class)).searchBookBody(analyzeUrl.getPath(), analyzeUrl.getBody(), analyzeUrl.getHeaderMap()) : ((IHttpPostApi) m26440class(analyzeUrl.getHost()).create(IHttpPostApi.class)).searchBook(analyzeUrl.getPath(), analyzeUrl.getQueryMap(), analyzeUrl.getHeaderMap());
    }

    /* renamed from: class, reason: not valid java name */
    public Retrofit m26440class(String str) {
        return new Retrofit.Builder().baseUrl(str).addConverterFactory(com.wsw.cospa.model.impl.Cfor.m26422if()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).client(Cvolatile.m27164goto()).build();
    }

    /* renamed from: const, reason: not valid java name */
    public Retrofit m26441const(String str, String str2) {
        return new Retrofit.Builder().baseUrl(str).addConverterFactory(com.wsw.cospa.model.impl.Cfor.m26421for(str2)).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).client(Cvolatile.m27164goto()).build();
    }

    @SuppressLint({"AddJavascriptInterface", "SetJavaScriptEnabled"})
    /* renamed from: else, reason: not valid java name */
    public io.reactivex.Cnew<String> m26442else(final AnalyzeUrl analyzeUrl, final String str) {
        final String str2 = "document.documentElement.outerHTML";
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.h7
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f2327do.m26438while(analyzeUrl, str2, str, observableEmitter);
            }
        });
    }

    /* renamed from: public, reason: not valid java name */
    public io.reactivex.Cnew<retrofit2.Response<String>> m26443public(final retrofit2.Response<String> response, final String str, final boolean z) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.i7
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cif.m26432native(response, z, str, observableEmitter);
            }
        });
    }

    /* renamed from: return, reason: not valid java name */
    public void m26444return(retrofit2.Response<String> response, String str, boolean z) {
        CookieBean cookieBeanLoad;
        if (response.raw().headers(pk0.M).isEmpty() || !z) {
            if (z || (cookieBeanLoad = Cnew.m26132case().m26138try().m3142this().load(str)) == null) {
                return;
            }
            cookieBeanLoad.getVariable().remove(pk0.f5073throw);
            Cnew.m26132case().m26138try().m3142this().insertOrReplace(cookieBeanLoad);
            return;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = response.raw().headers(pk0.M).iterator();
        while (it.hasNext()) {
            for (String str2 : it.next().split(";")) {
                if (!TextUtils.isEmpty(str2)) {
                    sb.append(str2);
                    sb.append(";");
                }
            }
        }
        String string = sb.toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        HashMap map = new HashMap();
        map.put(pk0.f5073throw, string);
        CookieBean cookieBeanLoad2 = Cnew.m26132case().m26138try().m3142this().load(str);
        if (cookieBeanLoad2 == null) {
            Cnew.m26132case().m26138try().m3142this().insertOrReplace(new CookieBean(str, new GsonBuilder().disableHtmlEscaping().create().toJson(map)));
        } else {
            cookieBeanLoad2.setVariable(map);
            Cnew.m26132case().m26138try().m3142this().insertOrReplace(cookieBeanLoad2);
        }
    }
}
