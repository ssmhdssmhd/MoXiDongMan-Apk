package com.qmuiteam.qmui.widget.webview;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* renamed from: com.qmuiteam.qmui.widget.webview.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo extends WebViewClient {

    /* renamed from: new, reason: not valid java name */
    public static final int f20025new = 112;

    /* renamed from: do, reason: not valid java name */
    private boolean f20026do;

    /* renamed from: for, reason: not valid java name */
    private boolean f20027for = false;

    /* renamed from: if, reason: not valid java name */
    private boolean f20028if;

    /* renamed from: com.qmuiteam.qmui.widget.webview.do$do, reason: invalid class name and collision with other inner class name */
    public class RunnableC0190do implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ QMUIWebView f20029do;

        public RunnableC0190do(QMUIWebView qMUIWebView) {
            this.f20029do = qMUIWebView;
        }

        @Override // java.lang.Runnable
        public void run() {
            Cdo.this.m24266for(this.f20029do);
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.webview.do$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Runnable f20031do;

        public Cfor(Runnable runnable) {
            this.f20031do = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f20031do.run();
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.webview.do$if, reason: invalid class name */
    public class Cif implements ValueCallback<String> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Runnable f20033do;

        public Cif(Runnable runnable) {
            this.f20033do = runnable;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onReceiveValue(String str) {
            this.f20033do.run();
        }
    }

    public Cdo(boolean z, boolean z2) {
        this.f20026do = z;
        this.f20028if = z2;
    }

    /* renamed from: case, reason: not valid java name */
    private void m24264case(WebView webView, @NonNull String str, @Nullable Runnable runnable) {
        if (Build.VERSION.SDK_INT > 19) {
            if (runnable == null) {
                webView.evaluateJavascript(str, null);
                return;
            } else {
                webView.evaluateJavascript(str, new Cif(runnable));
                return;
            }
        }
        webView.loadUrl("javascript:" + str);
        if (runnable != null) {
            webView.postDelayed(new Cfor(runnable), 250L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public void m24266for(WebView webView) {
        webView.dispatchKeyEvent(new KeyEvent(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, 131, 0, 0, -1, 0));
    }

    /* renamed from: if, reason: not valid java name */
    private void m24267if(QMUIWebView qMUIWebView) {
        if (qMUIWebView.m24256catch()) {
            return;
        }
        if (!this.f20028if) {
            m24264case(qMUIWebView, m24268new(), null);
        }
        m24264case(qMUIWebView, m24269try(), new RunnableC0190do(qMUIWebView));
    }

    /* renamed from: new, reason: not valid java name */
    private String m24268new() {
        return "(function(){\n   var head = document.getElementsByTagName('head')[0];\n   var style = document.createElement('style');\n   style.type = 'text/css';   style.innerHTML = 'video::-webkit-media-controls-fullscreen-button{display: none !important;}'\n   head.appendChild(style);\n})()";
    }

    /* renamed from: try, reason: not valid java name */
    private String m24269try() {
        return "(function(){\n   document.body.addEventListener('keydown', function(e){\n        if(e.keyCode == 112){\n             var html = document.documentElement;\n             var requestFullscreen = html.requestFullscreen || html.webkitRequestFullscreen;\n             requestFullscreen.call(html);\n        }\n    })\n})()";
    }

    /* renamed from: else, reason: not valid java name */
    public void m24270else(QMUIWebView qMUIWebView) {
        if (this.f20026do) {
            return;
        }
        this.f20026do = true;
        if (this.f20027for) {
            m24267if(qMUIWebView);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f20027for = true;
        if (this.f20028if) {
            m24264case(webView, m24268new(), null);
        }
        if (this.f20026do && (webView instanceof QMUIWebView)) {
            m24267if((QMUIWebView) webView);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, @Nullable Bitmap bitmap) {
        this.f20027for = false;
        super.onPageStarted(webView, str, bitmap);
    }
}
