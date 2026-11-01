package com.wsw.cospa.fragment;

import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.SearchView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.gaoneng.library.AutoScrollBackLayout;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class ComicFindFragment_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private ComicFindFragment f22216do;

    @UiThread
    public ComicFindFragment_ViewBinding(ComicFindFragment comicFindFragment, View view) {
        this.f22216do = comicFindFragment;
        comicFindFragment.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", RecyclerView.class);
        comicFindFragment.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035e, "field 'refreshLayout'", SmartRefreshLayout.class);
        comicFindFragment.scrollLayout = (AutoScrollBackLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090384, "field 'scrollLayout'", AutoScrollBackLayout.class);
        comicFindFragment.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        comicFindFragment.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        comicFindFragment.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
        comicFindFragment.searchView = (SearchView) Cnew.m10373case(view, R.id.arg_res_0x7f090389, "field 'searchView'", SearchView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicFindFragment comicFindFragment = this.f22216do;
        if (comicFindFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f22216do = null;
        comicFindFragment.mRecyclerView = null;
        comicFindFragment.refreshLayout = null;
        comicFindFragment.scrollLayout = null;
        comicFindFragment.error_view = null;
        comicFindFragment.tvErrorView = null;
        comicFindFragment.tvRetry = null;
        comicFindFragment.searchView = null;
    }
}
