package com.wsw.cospa.activity;

import android.view.View;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class FeedbackActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private FeedbackActivity f21103do;

    @UiThread
    public FeedbackActivity_ViewBinding(FeedbackActivity feedbackActivity) {
        this(feedbackActivity, feedbackActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FeedbackActivity feedbackActivity = this.f21103do;
        if (feedbackActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21103do = null;
        feedbackActivity.mToolbar = null;
        feedbackActivity.tvTitle = null;
        feedbackActivity.mWebView = null;
    }

    @UiThread
    public FeedbackActivity_ViewBinding(FeedbackActivity feedbackActivity, View view) {
        this.f21103do = feedbackActivity;
        feedbackActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        feedbackActivity.tvTitle = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904be, "field 'tvTitle'", TextView.class);
        feedbackActivity.mWebView = (WebView) Cnew.m10373case(view, R.id.arg_res_0x7f0902ad, "field 'mWebView'", WebView.class);
    }
}
