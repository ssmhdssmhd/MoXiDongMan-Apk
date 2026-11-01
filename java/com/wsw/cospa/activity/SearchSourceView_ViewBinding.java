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

/* loaded from: classes2.dex */
public class SearchSourceView_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private SearchSourceView f21352do;

    @UiThread
    public SearchSourceView_ViewBinding(SearchSourceView searchSourceView, View view) {
        this.f21352do = searchSourceView;
        searchSourceView.searchView = (SearchView) Cnew.m10373case(view, R.id.arg_res_0x7f090389, "field 'searchView'", SearchView.class);
        searchSourceView.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", RecyclerView.class);
        searchSourceView.closePopw = Cnew.m10381try(view, R.id.arg_res_0x7f090103, "field 'closePopw'");
        searchSourceView.mLoadingRootView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902a1, "field 'mLoadingRootView'", RelativeLayout.class);
        searchSourceView.mIndicatorView = (AVLoadingIndicatorView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a2, "field 'mIndicatorView'", AVLoadingIndicatorView.class);
        searchSourceView.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        searchSourceView.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        searchSourceView.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SearchSourceView searchSourceView = this.f21352do;
        if (searchSourceView == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21352do = null;
        searchSourceView.searchView = null;
        searchSourceView.mRecyclerView = null;
        searchSourceView.closePopw = null;
        searchSourceView.mLoadingRootView = null;
        searchSourceView.mIndicatorView = null;
        searchSourceView.error_view = null;
        searchSourceView.tvErrorView = null;
        searchSourceView.tvRetry = null;
    }
}
