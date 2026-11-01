package com.wsw.cospa.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class AboutMeActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private AboutMeActivity f20837do;

    @UiThread
    public AboutMeActivity_ViewBinding(AboutMeActivity aboutMeActivity) {
        this(aboutMeActivity, aboutMeActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AboutMeActivity aboutMeActivity = this.f20837do;
        if (aboutMeActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f20837do = null;
        aboutMeActivity.mToolbar = null;
        aboutMeActivity.sdvLauncher = null;
        aboutMeActivity.tvVersion = null;
        aboutMeActivity.qqgrouppay1 = null;
        aboutMeActivity.qqgrouppay2 = null;
        aboutMeActivity.qqgroup1 = null;
        aboutMeActivity.qqgroup2 = null;
        aboutMeActivity.qqgroup3 = null;
        aboutMeActivity.qqgroup4 = null;
        aboutMeActivity.qqgroup5 = null;
        aboutMeActivity.qqgroup6 = null;
        aboutMeActivity.qqgroup7 = null;
        aboutMeActivity.qqgroup8 = null;
        aboutMeActivity.qqchannel = null;
        aboutMeActivity.tv_rule = null;
        aboutMeActivity.doutuApp = null;
        aboutMeActivity.yueduApp = null;
        aboutMeActivity.uninstallApp = null;
        aboutMeActivity.likeApp = null;
        aboutMeActivity.xinfangyuanApp = null;
        aboutMeActivity.mashanglai_app = null;
        aboutMeActivity.zhixun_app = null;
    }

    @UiThread
    public AboutMeActivity_ViewBinding(AboutMeActivity aboutMeActivity, View view) {
        this.f20837do = aboutMeActivity;
        aboutMeActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        aboutMeActivity.sdvLauncher = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090388, "field 'sdvLauncher'", ImageView.class);
        aboutMeActivity.tvVersion = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904c4, "field 'tvVersion'", TextView.class);
        aboutMeActivity.qqgrouppay1 = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09034b, "field 'qqgrouppay1'", TextView.class);
        aboutMeActivity.qqgrouppay2 = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09034c, "field 'qqgrouppay2'", TextView.class);
        aboutMeActivity.qqgroup1 = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090343, "field 'qqgroup1'", TextView.class);
        aboutMeActivity.qqgroup2 = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090344, "field 'qqgroup2'", TextView.class);
        aboutMeActivity.qqgroup3 = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090345, "field 'qqgroup3'", TextView.class);
        aboutMeActivity.qqgroup4 = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090346, "field 'qqgroup4'", TextView.class);
        aboutMeActivity.qqgroup5 = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090347, "field 'qqgroup5'", TextView.class);
        aboutMeActivity.qqgroup6 = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090348, "field 'qqgroup6'", TextView.class);
        aboutMeActivity.qqgroup7 = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090349, "field 'qqgroup7'", TextView.class);
        aboutMeActivity.qqgroup8 = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09034a, "field 'qqgroup8'", TextView.class);
        aboutMeActivity.qqchannel = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090342, "field 'qqchannel'", TextView.class);
        aboutMeActivity.tv_rule = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a8, "field 'tv_rule'", TextView.class);
        aboutMeActivity.doutuApp = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090148, "field 'doutuApp'", LinearLayout.class);
        aboutMeActivity.yueduApp = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0904f7, "field 'yueduApp'", LinearLayout.class);
        aboutMeActivity.uninstallApp = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0904d5, "field 'uninstallApp'", LinearLayout.class);
        aboutMeActivity.likeApp = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090260, "field 'likeApp'", LinearLayout.class);
        aboutMeActivity.xinfangyuanApp = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0904f6, "field 'xinfangyuanApp'", LinearLayout.class);
        aboutMeActivity.mashanglai_app = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902b0, "field 'mashanglai_app'", LinearLayout.class);
        aboutMeActivity.zhixun_app = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0904f9, "field 'zhixun_app'", LinearLayout.class);
    }
}
