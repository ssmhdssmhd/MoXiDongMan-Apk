package com.wsw.cospa.activity;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class ComicSettingActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private ComicSettingActivity f21061do;

    @UiThread
    public ComicSettingActivity_ViewBinding(ComicSettingActivity comicSettingActivity) {
        this(comicSettingActivity, comicSettingActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicSettingActivity comicSettingActivity = this.f21061do;
        if (comicSettingActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21061do = null;
        comicSettingActivity.mToolbar = null;
        comicSettingActivity.switchToDetail = null;
        comicSettingActivity.llthread = null;
        comicSettingActivity.tvThreadNum = null;
        comicSettingActivity.llDownloadThreed = null;
        comicSettingActivity.tvDownloadThreed = null;
        comicSettingActivity.switchSwipeBack = null;
        comicSettingActivity.switchNotch = null;
        comicSettingActivity.switchReaderPaging = null;
        comicSettingActivity.switchWhiteEdge = null;
        comicSettingActivity.switchPagingReverse = null;
        comicSettingActivity.switchFindSort = null;
        comicSettingActivity.switchShowAllFind = null;
        comicSettingActivity.switch_hide_recommend = null;
        comicSettingActivity.switch_hide_find = null;
        comicSettingActivity.switch_hide_history = null;
        comicSettingActivity.switch_hide_local = null;
        comicSettingActivity.switch_quick_page = null;
        comicSettingActivity.switch_double_click_zoom = null;
        comicSettingActivity.switch_join_shelf_tip = null;
        comicSettingActivity.switch_original_image = null;
        comicSettingActivity.switch_find_show_mode = null;
        comicSettingActivity.switch_auto_refresh_comic = null;
        comicSettingActivity.switch_dns_parser = null;
        comicSettingActivity.switch_file_browser = null;
        comicSettingActivity.switch_exit_clean_cache = null;
        comicSettingActivity.llRefreshThreed = null;
        comicSettingActivity.tvRefreshThreed = null;
        comicSettingActivity.refreshLayout = null;
    }

    @UiThread
    public ComicSettingActivity_ViewBinding(ComicSettingActivity comicSettingActivity, View view) {
        this.f21061do = comicSettingActivity;
        comicSettingActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        comicSettingActivity.switchToDetail = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f09040a, "field 'switchToDetail'", Switch.class);
        comicSettingActivity.llthread = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09028d, "field 'llthread'", LinearLayout.class);
        comicSettingActivity.tvThreadNum = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904ba, "field 'tvThreadNum'", TextView.class);
        comicSettingActivity.llDownloadThreed = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090280, "field 'llDownloadThreed'", LinearLayout.class);
        comicSettingActivity.tvDownloadThreed = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090480, "field 'tvDownloadThreed'", TextView.class);
        comicSettingActivity.switchSwipeBack = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f090409, "field 'switchSwipeBack'", Switch.class);
        comicSettingActivity.switchNotch = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f0903fe, "field 'switchNotch'", Switch.class);
        comicSettingActivity.switchReaderPaging = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f090403, "field 'switchReaderPaging'", Switch.class);
        comicSettingActivity.switchWhiteEdge = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f09040d, "field 'switchWhiteEdge'", Switch.class);
        comicSettingActivity.switchPagingReverse = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f090400, "field 'switchPagingReverse'", Switch.class);
        comicSettingActivity.switchFindSort = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f0903f3, "field 'switchFindSort'", Switch.class);
        comicSettingActivity.switchShowAllFind = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f090406, "field 'switchShowAllFind'", Switch.class);
        comicSettingActivity.switch_hide_recommend = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f0903f7, "field 'switch_hide_recommend'", Switch.class);
        comicSettingActivity.switch_hide_find = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f0903f4, "field 'switch_hide_find'", Switch.class);
        comicSettingActivity.switch_hide_history = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f0903f5, "field 'switch_hide_history'", Switch.class);
        comicSettingActivity.switch_hide_local = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f0903f6, "field 'switch_hide_local'", Switch.class);
        comicSettingActivity.switch_quick_page = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f090401, "field 'switch_quick_page'", Switch.class);
        comicSettingActivity.switch_double_click_zoom = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f0903ed, "field 'switch_double_click_zoom'", Switch.class);
        comicSettingActivity.switch_join_shelf_tip = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f0903f8, "field 'switch_join_shelf_tip'", Switch.class);
        comicSettingActivity.switch_original_image = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f0903ff, "field 'switch_original_image'", Switch.class);
        comicSettingActivity.switch_find_show_mode = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f0903f2, "field 'switch_find_show_mode'", Switch.class);
        comicSettingActivity.switch_auto_refresh_comic = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f0903e8, "field 'switch_auto_refresh_comic'", Switch.class);
        comicSettingActivity.switch_dns_parser = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f0903ec, "field 'switch_dns_parser'", Switch.class);
        comicSettingActivity.switch_file_browser = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f0903f1, "field 'switch_file_browser'", Switch.class);
        comicSettingActivity.switch_exit_clean_cache = (Switch) Cnew.m10373case(view, R.id.arg_res_0x7f0903ef, "field 'switch_exit_clean_cache'", Switch.class);
        comicSettingActivity.llRefreshThreed = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090288, "field 'llRefreshThreed'", LinearLayout.class);
        comicSettingActivity.tvRefreshThreed = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a6, "field 'tvRefreshThreed'", TextView.class);
        comicSettingActivity.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
    }
}
