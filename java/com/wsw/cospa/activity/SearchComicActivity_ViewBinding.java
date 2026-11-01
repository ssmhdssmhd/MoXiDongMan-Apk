package com.wsw.cospa.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.gaoneng.library.AutoScrollBackLayout;
import com.getbase.floatingactionbutton.FloatingActionButton;
import com.getbase.floatingactionbutton.FloatingActionsMenu;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.view.FlowLayout;
import com.wsw.cospa.widget.view.SearchEditText;
import com.wsw.cospa.widget.view.refresh.JFengRefreshLayout;

/* loaded from: classes2.dex */
public class SearchComicActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private SearchComicActivity f21336do;

    @UiThread
    public SearchComicActivity_ViewBinding(SearchComicActivity searchComicActivity) {
        this(searchComicActivity, searchComicActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SearchComicActivity searchComicActivity = this.f21336do;
        if (searchComicActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21336do = null;
        searchComicActivity.tbToolbar = null;
        searchComicActivity.mRefreshLayout = null;
        searchComicActivity.mRecyclerView = null;
        searchComicActivity.mFlowLayout = null;
        searchComicActivity.mFlowView = null;
        searchComicActivity.ivCleanHistory = null;
        searchComicActivity.mFloatingButton = null;
        searchComicActivity.mFloatingActionsMenu = null;
        searchComicActivity.scrollLayout = null;
        searchComicActivity.ll_comic_source = null;
        searchComicActivity.tv_source_name = null;
        searchComicActivity.et_search_comic = null;
        searchComicActivity.root_search_view = null;
        searchComicActivity.ll_comic_shelf = null;
        searchComicActivity.shelfRecyclerView = null;
        searchComicActivity.fabSearchStop = null;
    }

    @UiThread
    public SearchComicActivity_ViewBinding(SearchComicActivity searchComicActivity, View view) {
        this.f21336do = searchComicActivity;
        searchComicActivity.tbToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f090428, "field 'tbToolbar'", Toolbar.class);
        searchComicActivity.mRefreshLayout = (JFengRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902a6, "field 'mRefreshLayout'", JFengRefreshLayout.class);
        searchComicActivity.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", RecyclerView.class);
        searchComicActivity.mFlowLayout = (FlowLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0901d7, "field 'mFlowLayout'", FlowLayout.class);
        searchComicActivity.mFlowView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0901d6, "field 'mFlowView'", LinearLayout.class);
        searchComicActivity.ivCleanHistory = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090236, "field 'ivCleanHistory'", ImageView.class);
        searchComicActivity.mFloatingButton = (FloatingActionButton) Cnew.m10373case(view, R.id.arg_res_0x7f0902a0, "field 'mFloatingButton'", FloatingActionButton.class);
        searchComicActivity.mFloatingActionsMenu = (FloatingActionsMenu) Cnew.m10373case(view, R.id.arg_res_0x7f09029f, "field 'mFloatingActionsMenu'", FloatingActionsMenu.class);
        searchComicActivity.scrollLayout = (AutoScrollBackLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090384, "field 'scrollLayout'", AutoScrollBackLayout.class);
        searchComicActivity.ll_comic_source = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09027b, "field 'll_comic_source'", LinearLayout.class);
        searchComicActivity.tv_source_name = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b4, "field 'tv_source_name'", TextView.class);
        searchComicActivity.et_search_comic = (SearchEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090194, "field 'et_search_comic'", SearchEditText.class);
        searchComicActivity.root_search_view = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09036f, "field 'root_search_view'", LinearLayout.class);
        searchComicActivity.ll_comic_shelf = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09027a, "field 'll_comic_shelf'", LinearLayout.class);
        searchComicActivity.shelfRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0903a2, "field 'shelfRecyclerView'", RecyclerView.class);
        searchComicActivity.fabSearchStop = (com.google.android.material.floatingactionbutton.FloatingActionButton) Cnew.m10373case(view, R.id.arg_res_0x7f0901ab, "field 'fabSearchStop'", com.google.android.material.floatingactionbutton.FloatingActionButton.class);
    }
}
