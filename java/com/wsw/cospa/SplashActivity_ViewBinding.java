package com.wsw.cospa;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Cnew;

/* loaded from: classes2.dex */
public class SplashActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private SplashActivity f20834do;

    @UiThread
    public SplashActivity_ViewBinding(SplashActivity splashActivity) {
        this(splashActivity, splashActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SplashActivity splashActivity = this.f20834do;
        if (splashActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f20834do = null;
        splashActivity.ivSplash = null;
        splashActivity.appLogo = null;
        splashActivity.container = null;
        splashActivity.logoContainer = null;
    }

    @UiThread
    public SplashActivity_ViewBinding(SplashActivity splashActivity, View view) {
        this.f20834do = splashActivity;
        splashActivity.ivSplash = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f09024c, "field 'ivSplash'", ImageView.class);
        splashActivity.appLogo = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090094, "field 'appLogo'", ImageView.class);
        splashActivity.container = (FrameLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0903bd, "field 'container'", FrameLayout.class);
        splashActivity.logoContainer = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090296, "field 'logoContainer'", LinearLayout.class);
    }
}
