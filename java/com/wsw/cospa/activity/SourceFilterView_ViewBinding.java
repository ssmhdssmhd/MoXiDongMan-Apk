package com.wsw.cospa.activity;

import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.SearchView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.view.FlowLayout;

/* loaded from: classes2.dex */
public class SourceFilterView_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private SourceFilterView f21381do;

    @UiThread
    public SourceFilterView_ViewBinding(SourceFilterView sourceFilterView, View view) {
        this.f21381do = sourceFilterView;
        sourceFilterView.mFlowLayout = (FlowLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0901d7, "field 'mFlowLayout'", FlowLayout.class);
        sourceFilterView.searchView = (SearchView) Cnew.m10373case(view, R.id.arg_res_0x7f090389, "field 'searchView'", SearchView.class);
        sourceFilterView.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", RecyclerView.class);
        sourceFilterView.closePopw = Cnew.m10381try(view, R.id.arg_res_0x7f090103, "field 'closePopw'");
        sourceFilterView.mLoadingRootView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902a1, "field 'mLoadingRootView'", RelativeLayout.class);
        sourceFilterView.mIndicatorView = (AVLoadingIndicatorView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a2, "field 'mIndicatorView'", AVLoadingIndicatorView.class);
        sourceFilterView.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        sourceFilterView.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        sourceFilterView.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SourceFilterView sourceFilterView = this.f21381do;
        if (sourceFilterView == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21381do = null;
        sourceFilterView.mFlowLayout = null;
        sourceFilterView.searchView = null;
        sourceFilterView.mRecyclerView = null;
        sourceFilterView.closePopw = null;
        sourceFilterView.mLoadingRootView = null;
        sourceFilterView.mIndicatorView = null;
        sourceFilterView.error_view = null;
        sourceFilterView.tvErrorView = null;
        sourceFilterView.tvRetry = null;
    }
}
