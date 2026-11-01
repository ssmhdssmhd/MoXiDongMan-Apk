package com.wsw.cospa.activity;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.scroller.FastScrollRecyclerView;

/* loaded from: classes2.dex */
public class DownloadTaskActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private DownloadTaskActivity f21093do;

    @UiThread
    public DownloadTaskActivity_ViewBinding(DownloadTaskActivity downloadTaskActivity) {
        this(downloadTaskActivity, downloadTaskActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DownloadTaskActivity downloadTaskActivity = this.f21093do;
        if (downloadTaskActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21093do = null;
        downloadTaskActivity.mToolbar = null;
        downloadTaskActivity.mRecyclerView = null;
        downloadTaskActivity.mActionButton = null;
        downloadTaskActivity.tvDownloadTxt = null;
        downloadTaskActivity.tv_pause_all = null;
        downloadTaskActivity.startOrPauseView = null;
        downloadTaskActivity.tvSelectTask = null;
        downloadTaskActivity.tvDeleteTask = null;
        downloadTaskActivity.deleteTaskView = null;
    }

    @UiThread
    public DownloadTaskActivity_ViewBinding(DownloadTaskActivity downloadTaskActivity, View view) {
        this.f21093do = downloadTaskActivity;
        downloadTaskActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        downloadTaskActivity.mRecyclerView = (FastScrollRecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", FastScrollRecyclerView.class);
        downloadTaskActivity.mActionButton = (FloatingActionButton) Cnew.m10373case(view, R.id.arg_res_0x7f090298, "field 'mActionButton'", FloatingActionButton.class);
        downloadTaskActivity.tvDownloadTxt = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090481, "field 'tvDownloadTxt'", TextView.class);
        downloadTaskActivity.tv_pause_all = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a2, "field 'tv_pause_all'", TextView.class);
        downloadTaskActivity.startOrPauseView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0903cf, "field 'startOrPauseView'", LinearLayout.class);
        downloadTaskActivity.tvSelectTask = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904af, "field 'tvSelectTask'", TextView.class);
        downloadTaskActivity.tvDeleteTask = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090478, "field 'tvDeleteTask'", TextView.class);
        downloadTaskActivity.deleteTaskView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09012e, "field 'deleteTaskView'", LinearLayout.class);
    }
}
