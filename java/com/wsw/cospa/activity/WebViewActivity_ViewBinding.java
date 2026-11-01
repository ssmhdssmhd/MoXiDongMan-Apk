package com.wsw.cospa.activity;

import android.view.View;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class WebViewActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private WebViewActivity f21426do;

    @UiThread
    public WebViewActivity_ViewBinding(WebViewActivity webViewActivity) {
        this(webViewActivity, webViewActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WebViewActivity webViewActivity = this.f21426do;
        if (webViewActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21426do = null;
        webViewActivity.mToolbar = null;
        webViewActivity.tvTitle = null;
        webViewActivity.mWebView = null;
        webViewActivity.mIndicatorView = null;
        webViewActivity.error_view = null;
        webViewActivity.tvRetry = null;
        webViewActivity.tvErrorView = null;
    }

    @UiThread
    public WebViewActivity_ViewBinding(WebViewActivity webViewActivity, View view) {
        this.f21426do = webViewActivity;
        webViewActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        webViewActivity.tvTitle = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904be, "field 'tvTitle'", TextView.class);
        webViewActivity.mWebView = (WebView) Cnew.m10373case(view, R.id.arg_res_0x7f0902ad, "field 'mWebView'", WebView.class);
        webViewActivity.mIndicatorView = (AVLoadingIndicatorView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a2, "field 'mIndicatorView'", AVLoadingIndicatorView.class);
        webViewActivity.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        webViewActivity.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
        webViewActivity.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
    }
}
