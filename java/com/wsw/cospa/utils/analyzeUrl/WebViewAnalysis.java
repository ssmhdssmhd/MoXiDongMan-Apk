package com.wsw.cospa.utils.analyzeUrl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import android.support.v4.l22;
import android.support.v4.pk0;
import android.support.v4.v02;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.bean.CookieBean;
import com.wsw.cospa.dao.Cnew;
import com.wsw.cospa.utils.Ccase;
import fi.iki.elonen.NanoHTTPD;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class WebViewAnalysis {
    private static WebViewAnalysis webViewAnalysis;
    private final int TOTAL_TIMES = 20;
    private final int WAITING_TIMES = 3;

    public class CustomWebChromeClient extends WebChromeClient {
        private final ClientValueCallback resultCallback;
        private WebView webView;

        public class ClientValueCallback implements ValueCallback<String> {
            private final List<String> html;
            private int mTime;
            private int mWait;

            /* JADX INFO: Access modifiers changed from: private */
            public List<String> getHtml() throws InterruptedException {
                int i;
                int size = this.html.size();
                int size2 = -1;
                int i2 = 0;
                loop0: while (true) {
                    while (i2 < this.mTime && (size == 0 || size2 < size || i < this.mWait)) {
                        i2++;
                        size2 = this.html.size();
                        try {
                            Thread.sleep(1000L);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                        size = this.html.size();
                        i = size2 >= size ? i + 1 : 0;
                    }
                }
                return this.html;
            }

            private ClientValueCallback(int i, int i2) {
                this.mTime = 20;
                this.mWait = 3;
                this.mTime = i;
                this.mWait = i2;
                this.html = new ArrayList();
            }

            @Override // android.webkit.ValueCallback
            public void onReceiveValue(String str) {
                this.html.add(str);
            }
        }

        public CustomWebChromeClient(int i, int i2) {
            this.resultCallback = new ClientValueCallback(i, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onProgressChanged$0(WebView webView) {
            webView.evaluateJavascript("window.document.documentElement.outerHTML;", this.resultCallback);
        }

        public WebViewBox getHtml() {
            return new WebViewBox(this.resultCallback.getHtml(), this.webView);
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(final WebView webView, int i) {
            super.onProgressChanged(webView, i);
            if (i == 100) {
                Ccase.m26722this().m26728throw().execute(new Runnable() { // from class: android.support.v4.wf2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f7512do.lambda$onProgressChanged$0(webView);
                    }
                });
            }
        }

        public void setWebView(WebView webView) {
            this.webView = webView;
        }
    }

    public class CustomWebViewClient extends WebViewClient {
        private final CookieManager cookieManager;

        public CustomWebViewClient(CookieManager cookieManager) {
            this.cookieManager = cookieManager;
        }

        public void finalize() throws Throwable {
            super.finalize();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            String str2;
            String cookie = this.cookieManager.getCookie(str);
            HashMap map = new HashMap();
            map.put(pk0.f5073throw, cookie);
            String host = URI.create(str).getHost();
            if (str.startsWith("https")) {
                str2 = "https://" + host;
            } else {
                str2 = "http://" + host;
            }
            CookieBean cookieBeanLoad = Cnew.m26132case().m26138try().m3142this().load(str2);
            if (cookieBeanLoad != null) {
                cookieBeanLoad.setVariable(map);
                Cnew.m26132case().m26138try().m3142this().insertOrReplace(cookieBeanLoad);
            } else {
                Cnew.m26132case().m26138try().m3142this().insertOrReplace(new CookieBean(str2, new GsonBuilder().disableHtmlEscaping().create().toJson(map)));
            }
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            v02.m8711if(CartoonApplication.m24690do()).m8718this(str, this.cookieManager.getCookie(str));
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
    }

    public class WebViewBox {
        private List<String> htmls;
        private WebView webView;

        public List<String> getHtmls() {
            return this.htmls;
        }

        public WebView getWebView() {
            return this.webView;
        }

        private WebViewBox(List<String> list, WebView webView) {
            this.htmls = list;
            this.webView = webView;
        }
    }

    public static WebViewAnalysis getInstance() {
        if (webViewAnalysis == null) {
            synchronized (WebViewAnalysis.class) {
                if (webViewAnalysis == null) {
                    webViewAnalysis = new WebViewAnalysis();
                }
            }
        }
        return webViewAnalysis;
    }

    @SuppressLint({"DiscouragedPrivateApi", "PrivateApi"})
    private static Context initAndGetAppCtxWithReflection() {
        try {
            return (Context) Class.forName("android.app.ActivityThread").getDeclaredMethod("currentApplication", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setWebView$0(CustomWebViewClient customWebViewClient, CustomWebChromeClient customWebChromeClient, String str, String str2, String str3) {
        WebView webView = getInstance().getWebView(customWebViewClient, customWebChromeClient, str);
        if (l22.m4571return(str2)) {
            webView.loadUrl(str3);
        } else {
            webView.loadUrl(str3, (Map) new GsonBuilder().disableHtmlEscaping().create().fromJson(str2, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.utils.analyzeUrl.WebViewAnalysis.1
            }.getType()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setWebView$1(WebViewBox webViewBox) {
        release(webViewBox.getWebView());
    }

    public static void release(WebView webView) {
        if (webView != null) {
            webView.loadDataWithBaseURL(null, "", NanoHTTPD.MIME_HTML, "utf-8", null);
            webView.stopLoading();
            ViewGroup viewGroup = (ViewGroup) webView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(webView);
            }
            webView.clearHistory();
            webView.removeAllViews();
            webView.destroy();
        }
    }

    private String setWebView(boolean z, final String str, final String str2, final String str3, int i, int i2) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return null;
        }
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        final CustomWebViewClient customWebViewClient = new CustomWebViewClient(CookieManager.getInstance());
        final CustomWebChromeClient customWebChromeClient = new CustomWebChromeClient(i, i2);
        Ccase.m26722this().m26728throw().execute(new Runnable() { // from class: android.support.v4.vf2
            @Override // java.lang.Runnable
            public final void run() {
                this.f7200do.lambda$setWebView$0(customWebViewClient, customWebChromeClient, str3, str2, str);
            }
        });
        Gson gsonCreate = new GsonBuilder().disableHtmlEscaping().create();
        final WebViewBox html = customWebChromeClient.getHtml();
        Ccase.m26722this().m26728throw().execute(new Runnable() { // from class: com.wsw.cospa.utils.analyzeUrl.try
            @Override // java.lang.Runnable
            public final void run() {
                WebViewAnalysis.lambda$setWebView$1(html);
            }
        });
        if (!z) {
            return gsonCreate.toJson(html.getHtmls());
        }
        List<String> htmls = html.getHtmls();
        if (htmls.size() > 0) {
            return htmls.get(htmls.size() - 1);
        }
        return null;
    }

    public String getFinalResult(String str) {
        return getFinalResult(str, null);
    }

    public String getResult(String str) {
        return getResult(str, null);
    }

    public WebView getWebView(CustomWebViewClient customWebViewClient, CustomWebChromeClient customWebChromeClient, String str) {
        WebView webView = new WebView(CartoonApplication.m24690do());
        WebSettings settings = webView.getSettings();
        settings.setCacheMode(2);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDefaultTextEncodingName("UTF-8");
        settings.setBlockNetworkImage(true);
        settings.setJavaScriptEnabled(true);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
        if (!l22.m4571return(str)) {
            settings.setUserAgentString(str);
        }
        webView.setWebViewClient(customWebViewClient);
        webView.setWebChromeClient(customWebChromeClient);
        customWebChromeClient.setWebView(webView);
        return webView;
    }

    public String getFinalResult(String str, String str2) {
        return getFinalResult(str, str2, null);
    }

    public String getResult(String str, String str2) {
        return getResult(str, str2, null);
    }

    public String getFinalResult(String str, String str2, String str3) {
        return getFinalResult(str, str2, str3, 20, 3);
    }

    public String getResult(String str, String str2, String str3) {
        return getResult(str, str2, str3, 20, 3);
    }

    public String getFinalResult(String str, String str2, String str3, int i, int i2) {
        return setWebView(true, str, str2, str3, i, i2);
    }

    public String getResult(String str, String str2, String str3, int i, int i2) {
        return setWebView(false, str, str2, str3, i, i2);
    }
}
