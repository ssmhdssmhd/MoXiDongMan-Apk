package com.wsw.cospa.activity;

import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.google.android.material.appbar.AppBarLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class ComicManagerActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private ComicManagerActivity f21060do;

    @UiThread
    public ComicManagerActivity_ViewBinding(ComicManagerActivity comicManagerActivity) {
        this(comicManagerActivity, comicManagerActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicManagerActivity comicManagerActivity = this.f21060do;
        if (comicManagerActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21060do = null;
        comicManagerActivity.mToolbar = null;
        comicManagerActivity.mAppBarLayout = null;
        comicManagerActivity.mRecyclerView = null;
        comicManagerActivity.searchView = null;
        comicManagerActivity.error_view = null;
        comicManagerActivity.tvErrorView = null;
        comicManagerActivity.tvRetry = null;
    }

    @UiThread
    public ComicManagerActivity_ViewBinding(ComicManagerActivity comicManagerActivity, View view) {
        this.f21060do = comicManagerActivity;
        comicManagerActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        comicManagerActivity.mAppBarLayout = (AppBarLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090299, "field 'mAppBarLayout'", AppBarLayout.class);
        comicManagerActivity.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", RecyclerView.class);
        comicManagerActivity.searchView = (SearchView) Cnew.m10373case(view, R.id.arg_res_0x7f090389, "field 'searchView'", SearchView.class);
        comicManagerActivity.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        comicManagerActivity.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        comicManagerActivity.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
    }
}
