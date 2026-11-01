package com.wsw.cospa.activity;

import android.view.View;
import android.widget.LinearLayout;
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
public class ComicGroupManagerActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private ComicGroupManagerActivity f21033do;

    @UiThread
    public ComicGroupManagerActivity_ViewBinding(ComicGroupManagerActivity comicGroupManagerActivity) {
        this(comicGroupManagerActivity, comicGroupManagerActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicGroupManagerActivity comicGroupManagerActivity = this.f21033do;
        if (comicGroupManagerActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21033do = null;
        comicGroupManagerActivity.mToolbar = null;
        comicGroupManagerActivity.tvTitle = null;
        comicGroupManagerActivity.mRecyclerView = null;
        comicGroupManagerActivity.refreshLayout = null;
        comicGroupManagerActivity.ll_action_button = null;
        comicGroupManagerActivity.tv_select_comic = null;
        comicGroupManagerActivity.tv_delete_comic = null;
        comicGroupManagerActivity.tv_move_shelf = null;
    }

    @UiThread
    public ComicGroupManagerActivity_ViewBinding(ComicGroupManagerActivity comicGroupManagerActivity, View view) {
        this.f21033do = comicGroupManagerActivity;
        comicGroupManagerActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        comicGroupManagerActivity.tvTitle = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904be, "field 'tvTitle'", TextView.class);
        comicGroupManagerActivity.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", RecyclerView.class);
        comicGroupManagerActivity.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
        comicGroupManagerActivity.ll_action_button = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090271, "field 'll_action_button'", LinearLayout.class);
        comicGroupManagerActivity.tv_select_comic = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904ae, "field 'tv_select_comic'", TextView.class);
        comicGroupManagerActivity.tv_delete_comic = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090477, "field 'tv_delete_comic'", TextView.class);
        comicGroupManagerActivity.tv_move_shelf = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09049a, "field 'tv_move_shelf'", TextView.class);
    }
}
