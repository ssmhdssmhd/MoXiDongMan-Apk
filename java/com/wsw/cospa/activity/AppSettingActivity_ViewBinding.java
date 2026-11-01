package com.wsw.cospa.activity;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class AppSettingActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private AppSettingActivity f20890do;

    @UiThread
    public AppSettingActivity_ViewBinding(AppSettingActivity appSettingActivity) {
        this(appSettingActivity, appSettingActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AppSettingActivity appSettingActivity = this.f20890do;
        if (appSettingActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f20890do = null;
        appSettingActivity.mToolbar = null;
        appSettingActivity.filePathView = null;
        appSettingActivity.comicSettingView = null;
        appSettingActivity.backupSettingView = null;
        appSettingActivity.tvCacheSize = null;
        appSettingActivity.cleanCacheView = null;
        appSettingActivity.donateView = null;
        appSettingActivity.feedbackView = null;
        appSettingActivity.refreshLayout = null;
        appSettingActivity.adManagerView = null;
        appSettingActivity.video_ad_view = null;
        appSettingActivity.ll_privacy_protocol = null;
        appSettingActivity.ll_dark_mode = null;
        appSettingActivity.statusBarView = null;
    }

    @UiThread
    public AppSettingActivity_ViewBinding(AppSettingActivity appSettingActivity, View view) {
        this.f20890do = appSettingActivity;
        appSettingActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        appSettingActivity.filePathView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0901bc, "field 'filePathView'", LinearLayout.class);
        appSettingActivity.comicSettingView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09010c, "field 'comicSettingView'", LinearLayout.class);
        appSettingActivity.backupSettingView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0900a5, "field 'backupSettingView'", LinearLayout.class);
        appSettingActivity.tvCacheSize = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090464, "field 'tvCacheSize'", TextView.class);
        appSettingActivity.cleanCacheView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0900fd, "field 'cleanCacheView'", LinearLayout.class);
        appSettingActivity.donateView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090147, "field 'donateView'", LinearLayout.class);
        appSettingActivity.feedbackView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0901b6, "field 'feedbackView'", LinearLayout.class);
        appSettingActivity.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
        appSettingActivity.adManagerView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0901df, "field 'adManagerView'", LinearLayout.class);
        appSettingActivity.video_ad_view = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0904dd, "field 'video_ad_view'", LinearLayout.class);
        appSettingActivity.ll_privacy_protocol = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090287, "field 'll_privacy_protocol'", LinearLayout.class);
        appSettingActivity.ll_dark_mode = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09027e, "field 'll_dark_mode'", LinearLayout.class);
        appSettingActivity.statusBarView = Cnew.m10381try(view, R.id.arg_res_0x7f0903d7, "field 'statusBarView'");
    }
}
