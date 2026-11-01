package com.wsw.cospa.activity;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.flyco.tablayout.CommonTabLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.view.SwitchButton;

/* loaded from: classes2.dex */
public class HomeActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private HomeActivity f21179do;

    @UiThread
    public HomeActivity_ViewBinding(HomeActivity homeActivity) {
        this(homeActivity, homeActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        HomeActivity homeActivity = this.f21179do;
        if (homeActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21179do = null;
        homeActivity.dlLeftMain = null;
        homeActivity.abl_main = null;
        homeActivity.tbToolbar = null;
        homeActivity.tvLocalComic = null;
        homeActivity.tvDownloadTask = null;
        homeActivity.ll_version = null;
        homeActivity.tvVersion = null;
        homeActivity.tvAbout = null;
        homeActivity.tvSetting = null;
        homeActivity.tvComicManager = null;
        homeActivity.tv_feedback = null;
        homeActivity.tv_donate = null;
        homeActivity.tv_shop = null;
        homeActivity.iv_header = null;
        homeActivity.statusBarView = null;
        homeActivity.searchView = null;
        homeActivity.tvToolbarTitle = null;
        homeActivity.tvSourceName = null;
        homeActivity.ivArrow = null;
        homeActivity.sourceNameLayout = null;
        homeActivity.swNightTheme = null;
        homeActivity.swNightModelText = null;
        homeActivity.nightModelView = null;
        homeActivity.contentView = null;
        homeActivity.mCommonTabLayout = null;
    }

    @UiThread
    public HomeActivity_ViewBinding(HomeActivity homeActivity, View view) {
        this.f21179do = homeActivity;
        homeActivity.dlLeftMain = (DrawerLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090143, "field 'dlLeftMain'", DrawerLayout.class);
        homeActivity.abl_main = (AppBarLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09003d, "field 'abl_main'", AppBarLayout.class);
        homeActivity.tbToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f090427, "field 'tbToolbar'", Toolbar.class);
        homeActivity.tvLocalComic = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090496, "field 'tvLocalComic'", TextView.class);
        homeActivity.tvDownloadTask = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09047f, "field 'tvDownloadTask'", TextView.class);
        homeActivity.ll_version = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090291, "field 'll_version'", LinearLayout.class);
        homeActivity.tvVersion = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904c4, "field 'tvVersion'", TextView.class);
        homeActivity.tvAbout = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09045b, "field 'tvAbout'", TextView.class);
        homeActivity.tvSetting = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b0, "field 'tvSetting'", TextView.class);
        homeActivity.tvComicManager = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09046e, "field 'tvComicManager'", TextView.class);
        homeActivity.tv_feedback = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090485, "field 'tv_feedback'", TextView.class);
        homeActivity.tv_donate = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09047b, "field 'tv_donate'", TextView.class);
        homeActivity.tv_shop = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b1, "field 'tv_shop'", TextView.class);
        homeActivity.iv_header = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090242, "field 'iv_header'", ImageView.class);
        homeActivity.statusBarView = Cnew.m10381try(view, R.id.arg_res_0x7f0903d7, "field 'statusBarView'");
        homeActivity.searchView = (AppCompatTextView) Cnew.m10373case(view, R.id.arg_res_0x7f090389, "field 'searchView'", AppCompatTextView.class);
        homeActivity.tvToolbarTitle = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904c2, "field 'tvToolbarTitle'", TextView.class);
        homeActivity.tvSourceName = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b4, "field 'tvSourceName'", TextView.class);
        homeActivity.ivArrow = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090232, "field 'ivArrow'", ImageView.class);
        homeActivity.sourceNameLayout = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0903b6, "field 'sourceNameLayout'", LinearLayout.class);
        homeActivity.swNightTheme = (SwitchButton) Cnew.m10373case(view, R.id.arg_res_0x7f0903e5, "field 'swNightTheme'", SwitchButton.class);
        homeActivity.swNightModelText = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0903e4, "field 'swNightModelText'", TextView.class);
        homeActivity.nightModelView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902fc, "field 'nightModelView'", RelativeLayout.class);
        homeActivity.contentView = (FrameLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090117, "field 'contentView'", FrameLayout.class);
        homeActivity.mCommonTabLayout = (CommonTabLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09029e, "field 'mCommonTabLayout'", CommonTabLayout.class);
    }
}
