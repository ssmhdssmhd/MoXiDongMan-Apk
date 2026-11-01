package com.wsw.cospa.fragment;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class LocalComicFragment_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private LocalComicFragment f22257do;

    @UiThread
    public LocalComicFragment_ViewBinding(LocalComicFragment localComicFragment, View view) {
        this.f22257do = localComicFragment;
        localComicFragment.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", RecyclerView.class);
        localComicFragment.addComicView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090086, "field 'addComicView'", LinearLayout.class);
        localComicFragment.mLoadingRootView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902a1, "field 'mLoadingRootView'", RelativeLayout.class);
        localComicFragment.mIndicatorView = (AVLoadingIndicatorView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a2, "field 'mIndicatorView'", AVLoadingIndicatorView.class);
        localComicFragment.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        localComicFragment.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        localComicFragment.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
        localComicFragment.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
        localComicFragment.tvStorageSpace = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b7, "field 'tvStorageSpace'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LocalComicFragment localComicFragment = this.f22257do;
        if (localComicFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f22257do = null;
        localComicFragment.mRecyclerView = null;
        localComicFragment.addComicView = null;
        localComicFragment.mLoadingRootView = null;
        localComicFragment.mIndicatorView = null;
        localComicFragment.error_view = null;
        localComicFragment.tvErrorView = null;
        localComicFragment.tvRetry = null;
        localComicFragment.refreshLayout = null;
        localComicFragment.tvStorageSpace = null;
    }
}
