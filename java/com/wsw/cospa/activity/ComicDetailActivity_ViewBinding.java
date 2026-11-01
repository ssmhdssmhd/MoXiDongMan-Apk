package com.wsw.cospa.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.google.android.material.appbar.AppBarLayout;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class ComicDetailActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private ComicDetailActivity f21022do;

    @UiThread
    public ComicDetailActivity_ViewBinding(ComicDetailActivity comicDetailActivity) {
        this(comicDetailActivity, comicDetailActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicDetailActivity comicDetailActivity = this.f21022do;
        if (comicDetailActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21022do = null;
        comicDetailActivity.ivCover = null;
        comicDetailActivity.mToolbar = null;
        comicDetailActivity.ablDetails = null;
        comicDetailActivity.tvDescription = null;
        comicDetailActivity.tvAuthor = null;
        comicDetailActivity.tvLabel = null;
        comicDetailActivity.tvState = null;
        comicDetailActivity.contentView = null;
        comicDetailActivity.mIndicatorView = null;
        comicDetailActivity.error_view = null;
        comicDetailActivity.tvRetry = null;
        comicDetailActivity.tvErrorView = null;
        comicDetailActivity.tvComicName = null;
        comicDetailActivity.tvAddBookshelf = null;
        comicDetailActivity.tvRead = null;
        comicDetailActivity.tvCount = null;
        comicDetailActivity.tvAsc = null;
        comicDetailActivity.tvRange = null;
        comicDetailActivity.mRecyclerView = null;
    }

    @UiThread
    public ComicDetailActivity_ViewBinding(ComicDetailActivity comicDetailActivity, View view) {
        this.f21022do = comicDetailActivity;
        comicDetailActivity.ivCover = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f09023a, "field 'ivCover'", ImageView.class);
        comicDetailActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        comicDetailActivity.ablDetails = (AppBarLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09003b, "field 'ablDetails'", AppBarLayout.class);
        comicDetailActivity.tvDescription = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09047a, "field 'tvDescription'", TextView.class);
        comicDetailActivity.tvAuthor = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090460, "field 'tvAuthor'", TextView.class);
        comicDetailActivity.tvLabel = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090493, "field 'tvLabel'", TextView.class);
        comicDetailActivity.tvState = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b6, "field 'tvState'", TextView.class);
        comicDetailActivity.contentView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090115, "field 'contentView'", RelativeLayout.class);
        comicDetailActivity.mIndicatorView = (AVLoadingIndicatorView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a2, "field 'mIndicatorView'", AVLoadingIndicatorView.class);
        comicDetailActivity.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        comicDetailActivity.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
        comicDetailActivity.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        comicDetailActivity.tvComicName = (AppCompatTextView) Cnew.m10373case(view, R.id.arg_res_0x7f09046f, "field 'tvComicName'", AppCompatTextView.class);
        comicDetailActivity.tvAddBookshelf = (AppCompatTextView) Cnew.m10373case(view, R.id.arg_res_0x7f09045d, "field 'tvAddBookshelf'", AppCompatTextView.class);
        comicDetailActivity.tvRead = (AppCompatTextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a4, "field 'tvRead'", AppCompatTextView.class);
        comicDetailActivity.tvCount = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090472, "field 'tvCount'", TextView.class);
        comicDetailActivity.tvAsc = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09045f, "field 'tvAsc'", TextView.class);
        comicDetailActivity.tvRange = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a3, "field 'tvRange'", ImageView.class);
        comicDetailActivity.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", RecyclerView.class);
    }
}
