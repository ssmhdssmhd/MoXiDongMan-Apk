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
public class AppFileActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private AppFileActivity f20884do;

    @UiThread
    public AppFileActivity_ViewBinding(AppFileActivity appFileActivity) {
        this(appFileActivity, appFileActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AppFileActivity appFileActivity = this.f20884do;
        if (appFileActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f20884do = null;
        appFileActivity.mToolbar = null;
        appFileActivity.tvSourcePath = null;
        appFileActivity.tvCrashPath = null;
        appFileActivity.tvDownloadPath = null;
        appFileActivity.tvBackupPath = null;
        appFileActivity.tvImagePath = null;
        appFileActivity.downloadPathView = null;
        appFileActivity.refreshLayout = null;
    }

    @UiThread
    public AppFileActivity_ViewBinding(AppFileActivity appFileActivity, View view) {
        this.f20884do = appFileActivity;
        appFileActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        appFileActivity.tvSourcePath = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b5, "field 'tvSourcePath'", TextView.class);
        appFileActivity.tvCrashPath = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090473, "field 'tvCrashPath'", TextView.class);
        appFileActivity.tvDownloadPath = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09047e, "field 'tvDownloadPath'", TextView.class);
        appFileActivity.tvBackupPath = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090462, "field 'tvBackupPath'", TextView.class);
        appFileActivity.tvImagePath = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09048d, "field 'tvImagePath'", TextView.class);
        appFileActivity.downloadPathView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09014b, "field 'downloadPathView'", LinearLayout.class);
        appFileActivity.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
    }
}
