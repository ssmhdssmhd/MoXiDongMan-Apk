package com.wsw.cospa.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.gaoneng.library.AutoScrollBackLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class FindComicDetailActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private FindComicDetailActivity f21148do;

    @UiThread
    public FindComicDetailActivity_ViewBinding(FindComicDetailActivity findComicDetailActivity) {
        this(findComicDetailActivity, findComicDetailActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FindComicDetailActivity findComicDetailActivity = this.f21148do;
        if (findComicDetailActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21148do = null;
        findComicDetailActivity.mToolbar = null;
        findComicDetailActivity.mAppBarLayout = null;
        findComicDetailActivity.mRecyclerView = null;
        findComicDetailActivity.refreshLayout = null;
        findComicDetailActivity.scrollLayout = null;
    }

    @UiThread
    public FindComicDetailActivity_ViewBinding(FindComicDetailActivity findComicDetailActivity, View view) {
        this.f21148do = findComicDetailActivity;
        findComicDetailActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        findComicDetailActivity.mAppBarLayout = (AppBarLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090299, "field 'mAppBarLayout'", AppBarLayout.class);
        findComicDetailActivity.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", RecyclerView.class);
        findComicDetailActivity.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
        findComicDetailActivity.scrollLayout = (AutoScrollBackLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090384, "field 'scrollLayout'", AutoScrollBackLayout.class);
    }
}
