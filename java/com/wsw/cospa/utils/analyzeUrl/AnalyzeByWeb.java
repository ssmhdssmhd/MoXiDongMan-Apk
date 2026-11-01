package com.wsw.cospa.utils.analyzeUrl;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.ap0;
import android.webkit.ValueCallback;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.wsw.cospa.CartoonApplication;
import fi.iki.elonen.NanoHTTPD;
import io.reactivex.Cnew;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import org.apache.commons.lang3.Ccatch;
import org.apache.commons.lang3.Cclass;
import org.jsoup.nodes.Element;

/* loaded from: classes2.dex */
public class AnalyzeByWeb {
    public static final String UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36";
    public static final String UAMobile = "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36";
    private String _UA;
    private String _baseUrl;
    private String _content;

    /* renamed from: com.wsw.cospa.utils.analyzeUrl.AnalyzeByWeb$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ ObservableEmitter val$e;
        public final /* synthetic */ Handler val$handler;
        public final /* synthetic */ Web val$web;
        public final /* synthetic */ WebView val$webView;

        public AnonymousClass1(WebView webView, Web web, ObservableEmitter observableEmitter, Handler handler) {
            this.val$webView = webView;
            this.val$web = web;
            this.val$e = observableEmitter;
            this.val$handler = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(Web web, ObservableEmitter observableEmitter, WebView webView, Handler handler, String str) {
            if (str.isEmpty() || "null".equals(str)) {
                handler.postDelayed(this, 200L);
                return;
            }
            web.content = Ccatch.m32234super(str);
            observableEmitter.onNext(web.content);
            observableEmitter.onComplete();
            webView.destroy();
            handler.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            WebView webView = this.val$webView;
            String str = this.val$web.js;
            final Web web = this.val$web;
            final ObservableEmitter observableEmitter = this.val$e;
            final WebView webView2 = this.val$webView;
            final Handler handler = this.val$handler;
            webView.evaluateJavascript(str, new ValueCallback() { // from class: com.wsw.cospa.utils.analyzeUrl.new
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(Object obj) {
                    this.f22551do.lambda$run$0(web, observableEmitter, webView2, handler, (String) obj);
                }
            });
        }
    }

    public static class Web {
        private String content;
        private String js = "document.documentElement.outerHTML";

        public Web(String str) {
            this.content = str;
        }
    }

    public AnalyzeByWeb(Object obj, String str, String str2) {
        this._baseUrl = str;
        this._UA = str2;
        if (obj == null) {
            this._content = "";
            return;
        }
        if (obj instanceof Element) {
            this._content = ((Element) obj).outerHtml();
            return;
        }
        if (!(obj instanceof ap0)) {
            this._content = obj.toString();
            return;
        }
        ap0 ap0Var = (ap0) obj;
        if (ap0Var.m308this()) {
            this._content = ap0Var.m307new().outerHtml();
        } else {
            this._content = ap0Var.m303final().toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getResult$0(ObservableEmitter observableEmitter, Handler handler, Runnable runnable, Web web, WebView webView) {
        if (observableEmitter.isDisposed()) {
            return;
        }
        handler.removeCallbacks(runnable);
        observableEmitter.onNext(web.content);
        observableEmitter.onComplete();
        webView.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getResult$1(final Web web, final ObservableEmitter observableEmitter, final Handler handler, String str, String str2) {
        final WebView webView = new WebView(CartoonApplication.m24693try());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setBlockNetworkImage(true);
        webView.getSettings().setCacheMode(2);
        if (!Cclass.A(this._UA)) {
            webView.getSettings().setUserAgentString(this._UA);
        }
        final AnonymousClass1 anonymousClass1 = new AnonymousClass1(webView, web, observableEmitter, handler);
        handler.postDelayed(new Runnable() { // from class: com.wsw.cospa.utils.analyzeUrl.for
            @Override // java.lang.Runnable
            public final void run() {
                AnalyzeByWeb.lambda$getResult$0(observableEmitter, handler, anonymousClass1, web, webView);
            }
        }, 30000L);
        webView.setWebViewClient(new WebViewClient() { // from class: com.wsw.cospa.utils.analyzeUrl.AnalyzeByWeb.2
            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView2, String str3, Bitmap bitmap) {
                handler.post(anonymousClass1);
            }

            @Override // android.webkit.WebViewClient
            @Nullable
            @RequiresApi(api = 21)
            public WebResourceResponse shouldInterceptRequest(WebView webView2, WebResourceRequest webResourceRequest) {
                return webResourceRequest.getUrl().toString().contains(".css") ? new WebResourceResponse(null, null, null) : super.shouldInterceptRequest(webView2, webResourceRequest);
            }
        });
        if (str == null) {
            webView.loadDataWithBaseURL(this._baseUrl, this._content, NanoHTTPD.MIME_HTML, str2, null);
            return;
        }
        int iIndexOf = str.indexOf("@");
        if (iIndexOf > -1) {
            webView.postUrl(str.substring(0, iIndexOf), getPostData(str.substring(iIndexOf + 1)));
        } else {
            webView.loadUrl(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getResult$2(final Web web, final String str, final String str2, final ObservableEmitter observableEmitter) throws Exception {
        final Handler handler = new Handler(Looper.getMainLooper());
        handler.post(new Runnable() { // from class: com.wsw.cospa.utils.analyzeUrl.if
            @Override // java.lang.Runnable
            public final void run() {
                this.f22546do.lambda$getResult$1(web, observableEmitter, handler, str, str2);
            }
        });
    }

    public static AnalyzeByWeb parse(Object obj, String str, String str2) {
        return new AnalyzeByWeb(obj, str, str2);
    }

    public byte[] getPostData(String str) {
        return str.getBytes();
    }

    public Cnew<String> getResult(String str) {
        final String str2 = null;
        final String str3 = "utf-8";
        if (str.startsWith("html@@")) {
            str = str.substring(6);
        } else if (str.startsWith("htmlgbk@@")) {
            str = str.substring(9);
            str3 = "gbk";
        } else if (str.startsWith("result@@")) {
            str2 = this._content;
            str = str.substring(8);
        } else if (str.startsWith("baseUrl@@")) {
            str2 = this._baseUrl;
            str = str.substring(9);
        } else {
            str2 = this._baseUrl;
        }
        final Web web = new Web("加载超时");
        if (!str.trim().isEmpty()) {
            web.js = str;
        }
        return Cnew.create(new ObservableOnSubscribe() { // from class: com.wsw.cospa.utils.analyzeUrl.do
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f22536do.lambda$getResult$2(web, str2, str3, observableEmitter);
            }
        });
    }

    public String getString(String str) {
        return getResult(str).blockingFirst();
    }

    public void setUA(String str) {
        this._UA = str;
    }
}
