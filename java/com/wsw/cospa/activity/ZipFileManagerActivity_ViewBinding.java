package com.wsw.cospa.activity;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.ButtonBarLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.view.BatteryView;
import com.wsw.cospa.widget.view.ButtomMenuLayout;
import com.wsw.cospa.widget.view.RecyclerViewPager;
import com.wsw.cospa.widget.view.ReverseSeekBar;
import com.wsw.cospa.widget.view.ZoomableRecyclerView;
import com.xw.repo.BubbleSeekBar;

/* loaded from: classes2.dex */
public class ZipFileManagerActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private ZipFileManagerActivity f21469do;

    @UiThread
    public ZipFileManagerActivity_ViewBinding(ZipFileManagerActivity zipFileManagerActivity) {
        this(zipFileManagerActivity, zipFileManagerActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ZipFileManagerActivity zipFileManagerActivity = this.f21469do;
        if (zipFileManagerActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21469do = null;
        zipFileManagerActivity.mToolbar = null;
        zipFileManagerActivity.tvTitle = null;
        zipFileManagerActivity.mRecyclerView = null;
        zipFileManagerActivity.mButtonBar = null;
        zipFileManagerActivity.backButton = null;
        zipFileManagerActivity.cancelButton = null;
        zipFileManagerActivity.confirmButton = null;
        zipFileManagerActivity.tvCurrentPath = null;
        zipFileManagerActivity.mFileManagerView = null;
        zipFileManagerActivity.comic_status_bar = null;
        zipFileManagerActivity.statusChapterText = null;
        zipFileManagerActivity.statusTimeText = null;
        zipFileManagerActivity.statusBatteryText = null;
        zipFileManagerActivity.batteryView = null;
        zipFileManagerActivity.mHeadTitleRight = null;
        zipFileManagerActivity.mZoomRecyclerView = null;
        zipFileManagerActivity.mRecyclerViewPager = null;
        zipFileManagerActivity.contentView = null;
        zipFileManagerActivity.mIndicatorRoot = null;
        zipFileManagerActivity.mIndicatorView = null;
        zipFileManagerActivity.error_view = null;
        zipFileManagerActivity.tvErrorView = null;
        zipFileManagerActivity.tvRetry = null;
        zipFileManagerActivity.tvCatalog = null;
        zipFileManagerActivity.tvAutoPlay = null;
        zipFileManagerActivity.tvBrightness = null;
        zipFileManagerActivity.tvSetting = null;
        zipFileManagerActivity.mButtomMenu = null;
        zipFileManagerActivity.buttomLayout = null;
        zipFileManagerActivity.ivAutoPlay = null;
        zipFileManagerActivity.autoPlayLayout = null;
        zipFileManagerActivity.bsb_auto = null;
        zipFileManagerActivity.ll_auto = null;
        zipFileManagerActivity.ll_seek_progress = null;
        zipFileManagerActivity.preChapter = null;
        zipFileManagerActivity.nextChapter = null;
        zipFileManagerActivity.mSeekBarScroll = null;
        zipFileManagerActivity.v_brightness = null;
        zipFileManagerActivity.mComicPreview = null;
        zipFileManagerActivity.ll_click_event = null;
        zipFileManagerActivity.ll_up_down_tips = null;
        zipFileManagerActivity.iv_close_up_down_tips = null;
        zipFileManagerActivity.ll_left_right_tips = null;
        zipFileManagerActivity.iv_close_left_right_tips = null;
        zipFileManagerActivity.event_top = null;
        zipFileManagerActivity.event_bottom = null;
        zipFileManagerActivity.event_up_down_middle = null;
        zipFileManagerActivity.event_left = null;
        zipFileManagerActivity.event_middle = null;
        zipFileManagerActivity.event_right = null;
        zipFileManagerActivity.scroll_mode_event_up_down = null;
        zipFileManagerActivity.scroll_mode_event_left_right = null;
        zipFileManagerActivity.ll_left_right_content = null;
        zipFileManagerActivity.ll_up_down_content = null;
    }

    @UiThread
    public ZipFileManagerActivity_ViewBinding(ZipFileManagerActivity zipFileManagerActivity, View view) {
        this.f21469do = zipFileManagerActivity;
        zipFileManagerActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        zipFileManagerActivity.tvTitle = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904be, "field 'tvTitle'", TextView.class);
        zipFileManagerActivity.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", RecyclerView.class);
        zipFileManagerActivity.mButtonBar = (ButtonBarLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09029b, "field 'mButtonBar'", ButtonBarLayout.class);
        zipFileManagerActivity.backButton = (AppCompatButton) Cnew.m10373case(view, R.id.arg_res_0x7f0900a0, "field 'backButton'", AppCompatButton.class);
        zipFileManagerActivity.cancelButton = (AppCompatButton) Cnew.m10373case(view, R.id.arg_res_0x7f0900dd, "field 'cancelButton'", AppCompatButton.class);
        zipFileManagerActivity.confirmButton = (AppCompatButton) Cnew.m10373case(view, R.id.arg_res_0x7f09010f, "field 'confirmButton'", AppCompatButton.class);
        zipFileManagerActivity.tvCurrentPath = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090474, "field 'tvCurrentPath'", TextView.class);
        zipFileManagerActivity.mFileManagerView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0901bb, "field 'mFileManagerView'", LinearLayout.class);
        zipFileManagerActivity.comic_status_bar = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09010e, "field 'comic_status_bar'", LinearLayout.class);
        zipFileManagerActivity.statusChapterText = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0903db, "field 'statusChapterText'", TextView.class);
        zipFileManagerActivity.statusTimeText = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0903dc, "field 'statusTimeText'", TextView.class);
        zipFileManagerActivity.statusBatteryText = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0903d9, "field 'statusBatteryText'", TextView.class);
        zipFileManagerActivity.batteryView = (BatteryView) Cnew.m10373case(view, R.id.arg_res_0x7f0903da, "field 'batteryView'", BatteryView.class);
        zipFileManagerActivity.mHeadTitleRight = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0901de, "field 'mHeadTitleRight'", TextView.class);
        zipFileManagerActivity.mZoomRecyclerView = (ZoomableRecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902ae, "field 'mZoomRecyclerView'", ZoomableRecyclerView.class);
        zipFileManagerActivity.mRecyclerViewPager = (RecyclerViewPager) Cnew.m10373case(view, R.id.arg_res_0x7f0902a5, "field 'mRecyclerViewPager'", RecyclerViewPager.class);
        zipFileManagerActivity.contentView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090115, "field 'contentView'", RelativeLayout.class);
        zipFileManagerActivity.mIndicatorRoot = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902a1, "field 'mIndicatorRoot'", RelativeLayout.class);
        zipFileManagerActivity.mIndicatorView = (AVLoadingIndicatorView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a2, "field 'mIndicatorView'", AVLoadingIndicatorView.class);
        zipFileManagerActivity.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        zipFileManagerActivity.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        zipFileManagerActivity.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
        zipFileManagerActivity.tvCatalog = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090466, "field 'tvCatalog'", TextView.class);
        zipFileManagerActivity.tvAutoPlay = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090461, "field 'tvAutoPlay'", TextView.class);
        zipFileManagerActivity.tvBrightness = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090463, "field 'tvBrightness'", TextView.class);
        zipFileManagerActivity.tvSetting = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b0, "field 'tvSetting'", TextView.class);
        zipFileManagerActivity.mButtomMenu = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09029a, "field 'mButtomMenu'", LinearLayout.class);
        zipFileManagerActivity.buttomLayout = (ButtomMenuLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0900d8, "field 'buttomLayout'", ButtomMenuLayout.class);
        zipFileManagerActivity.ivAutoPlay = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090233, "field 'ivAutoPlay'", ImageView.class);
        zipFileManagerActivity.autoPlayLayout = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09009e, "field 'autoPlayLayout'", LinearLayout.class);
        zipFileManagerActivity.bsb_auto = (BubbleSeekBar) Cnew.m10373case(view, R.id.arg_res_0x7f0900c4, "field 'bsb_auto'", BubbleSeekBar.class);
        zipFileManagerActivity.ll_auto = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090272, "field 'll_auto'", LinearLayout.class);
        zipFileManagerActivity.ll_seek_progress = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09028b, "field 'll_seek_progress'", LinearLayout.class);
        zipFileManagerActivity.preChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090332, "field 'preChapter'", TextView.class);
        zipFileManagerActivity.nextChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0902fb, "field 'nextChapter'", TextView.class);
        zipFileManagerActivity.mSeekBarScroll = (ReverseSeekBar) Cnew.m10373case(view, R.id.arg_res_0x7f0902a8, "field 'mSeekBarScroll'", ReverseSeekBar.class);
        zipFileManagerActivity.v_brightness = Cnew.m10381try(view, R.id.arg_res_0x7f0904d9, "field 'v_brightness'");
        zipFileManagerActivity.mComicPreview = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09010a, "field 'mComicPreview'", RelativeLayout.class);
        zipFileManagerActivity.ll_click_event = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090276, "field 'll_click_event'", LinearLayout.class);
        zipFileManagerActivity.ll_up_down_tips = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090290, "field 'll_up_down_tips'", LinearLayout.class);
        zipFileManagerActivity.iv_close_up_down_tips = (AppCompatImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090239, "field 'iv_close_up_down_tips'", AppCompatImageView.class);
        zipFileManagerActivity.ll_left_right_tips = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090284, "field 'll_left_right_tips'", LinearLayout.class);
        zipFileManagerActivity.iv_close_left_right_tips = (AppCompatImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090238, "field 'iv_close_left_right_tips'", AppCompatImageView.class);
        zipFileManagerActivity.event_top = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a4, "field 'event_top'", Button.class);
        zipFileManagerActivity.event_bottom = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a0, "field 'event_bottom'", Button.class);
        zipFileManagerActivity.event_up_down_middle = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a5, "field 'event_up_down_middle'", Button.class);
        zipFileManagerActivity.event_left = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a1, "field 'event_left'", Button.class);
        zipFileManagerActivity.event_middle = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a2, "field 'event_middle'", Button.class);
        zipFileManagerActivity.event_right = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a3, "field 'event_right'", Button.class);
        zipFileManagerActivity.scroll_mode_event_up_down = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090386, "field 'scroll_mode_event_up_down'", LinearLayout.class);
        zipFileManagerActivity.scroll_mode_event_left_right = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090385, "field 'scroll_mode_event_left_right'", LinearLayout.class);
        zipFileManagerActivity.ll_left_right_content = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090283, "field 'll_left_right_content'", LinearLayout.class);
        zipFileManagerActivity.ll_up_down_content = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09028f, "field 'll_up_down_content'", LinearLayout.class);
    }
}
