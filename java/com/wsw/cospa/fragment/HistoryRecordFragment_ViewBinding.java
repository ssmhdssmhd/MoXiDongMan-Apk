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
import com.wsw.cospa.widget.view.ShadowLayout;

/* loaded from: classes2.dex */
public class HistoryRecordFragment_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private HistoryRecordFragment f22249do;

    @UiThread
    public HistoryRecordFragment_ViewBinding(HistoryRecordFragment historyRecordFragment, View view) {
        this.f22249do = historyRecordFragment;
        historyRecordFragment.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", RecyclerView.class);
        historyRecordFragment.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
        historyRecordFragment.mLoadingRootView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902a1, "field 'mLoadingRootView'", RelativeLayout.class);
        historyRecordFragment.mIndicatorView = (AVLoadingIndicatorView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a2, "field 'mIndicatorView'", AVLoadingIndicatorView.class);
        historyRecordFragment.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        historyRecordFragment.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        historyRecordFragment.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
        historyRecordFragment.mShadowLayout = (ShadowLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902a9, "field 'mShadowLayout'", ShadowLayout.class);
        historyRecordFragment.tv_cancel = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090465, "field 'tv_cancel'", TextView.class);
        historyRecordFragment.tv_select_all = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904ad, "field 'tv_select_all'", TextView.class);
        historyRecordFragment.tv_delete = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090476, "field 'tv_delete'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        HistoryRecordFragment historyRecordFragment = this.f22249do;
        if (historyRecordFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f22249do = null;
        historyRecordFragment.mRecyclerView = null;
        historyRecordFragment.refreshLayout = null;
        historyRecordFragment.mLoadingRootView = null;
        historyRecordFragment.mIndicatorView = null;
        historyRecordFragment.error_view = null;
        historyRecordFragment.tvErrorView = null;
        historyRecordFragment.tvRetry = null;
        historyRecordFragment.mShadowLayout = null;
        historyRecordFragment.tv_cancel = null;
        historyRecordFragment.tv_select_all = null;
        historyRecordFragment.tv_delete = null;
    }
}
