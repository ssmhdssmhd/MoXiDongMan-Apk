package com.wsw.cospa.fragment;

import android.view.View;
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
public class FindColumnFragment_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private FindColumnFragment f22233do;

    @UiThread
    public FindColumnFragment_ViewBinding(FindColumnFragment findColumnFragment, View view) {
        this.f22233do = findColumnFragment;
        findColumnFragment.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f09035a, "field 'mRecyclerView'", RecyclerView.class);
        findColumnFragment.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
        findColumnFragment.mLoadingRootView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902a1, "field 'mLoadingRootView'", RelativeLayout.class);
        findColumnFragment.mIndicatorView = (AVLoadingIndicatorView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a2, "field 'mIndicatorView'", AVLoadingIndicatorView.class);
        findColumnFragment.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        findColumnFragment.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        findColumnFragment.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FindColumnFragment findColumnFragment = this.f22233do;
        if (findColumnFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f22233do = null;
        findColumnFragment.mRecyclerView = null;
        findColumnFragment.refreshLayout = null;
        findColumnFragment.mLoadingRootView = null;
        findColumnFragment.mIndicatorView = null;
        findColumnFragment.error_view = null;
        findColumnFragment.tvErrorView = null;
        findColumnFragment.tvRetry = null;
    }
}
