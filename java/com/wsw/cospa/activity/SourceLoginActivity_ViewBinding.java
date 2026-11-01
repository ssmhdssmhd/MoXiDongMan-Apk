package com.wsw.cospa.activity;

import android.view.View;
import android.webkit.WebView;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.google.android.material.appbar.AppBarLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class SourceLoginActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private SourceLoginActivity f21386do;

    @UiThread
    public SourceLoginActivity_ViewBinding(SourceLoginActivity sourceLoginActivity) {
        this(sourceLoginActivity, sourceLoginActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SourceLoginActivity sourceLoginActivity = this.f21386do;
        if (sourceLoginActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21386do = null;
        sourceLoginActivity.webView = null;
        sourceLoginActivity.mToolbar = null;
        sourceLoginActivity.mAppBarLayout = null;
        sourceLoginActivity.llContent = null;
    }

    @UiThread
    public SourceLoginActivity_ViewBinding(SourceLoginActivity sourceLoginActivity, View view) {
        this.f21386do = sourceLoginActivity;
        sourceLoginActivity.webView = (WebView) Cnew.m10373case(view, R.id.arg_res_0x7f0904e5, "field 'webView'", WebView.class);
        sourceLoginActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        sourceLoginActivity.mAppBarLayout = (AppBarLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090299, "field 'mAppBarLayout'", AppBarLayout.class);
        sourceLoginActivity.llContent = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09027c, "field 'llContent'", LinearLayout.class);
    }
}
