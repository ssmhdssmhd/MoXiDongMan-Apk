package com.wsw.cospa.activity;

import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class DownloadComicActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private DownloadComicActivity f21070do;

    @UiThread
    public DownloadComicActivity_ViewBinding(DownloadComicActivity downloadComicActivity) {
        this(downloadComicActivity, downloadComicActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DownloadComicActivity downloadComicActivity = this.f21070do;
        if (downloadComicActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21070do = null;
        downloadComicActivity.tvTitle = null;
        downloadComicActivity.mToolbar = null;
        downloadComicActivity.mRecyclerView = null;
        downloadComicActivity.refreshLayout = null;
        downloadComicActivity.error_view = null;
        downloadComicActivity.tvErrorView = null;
        downloadComicActivity.tvRetry = null;
        downloadComicActivity.tvStorageSpace = null;
    }

    @UiThread
    public DownloadComicActivity_ViewBinding(DownloadComicActivity downloadComicActivity, View view) {
        this.f21070do = downloadComicActivity;
        downloadComicActivity.tvTitle = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904be, "field 'tvTitle'", TextView.class);
        downloadComicActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        downloadComicActivity.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", RecyclerView.class);
        downloadComicActivity.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
        downloadComicActivity.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        downloadComicActivity.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        downloadComicActivity.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
        downloadComicActivity.tvStorageSpace = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b7, "field 'tvStorageSpace'", TextView.class);
    }
}
