package com.wsw.cospa.activity;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatImageView;
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
public class LocalPreviewActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private LocalPreviewActivity f21274do;

    @UiThread
    public LocalPreviewActivity_ViewBinding(LocalPreviewActivity localPreviewActivity) {
        this(localPreviewActivity, localPreviewActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LocalPreviewActivity localPreviewActivity = this.f21274do;
        if (localPreviewActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21274do = null;
        localPreviewActivity.rootView = null;
        localPreviewActivity.comic_status_bar = null;
        localPreviewActivity.statusChapterText = null;
        localPreviewActivity.statusTimeText = null;
        localPreviewActivity.statusBatteryText = null;
        localPreviewActivity.batteryView = null;
        localPreviewActivity.mHeadTitleRight = null;
        localPreviewActivity.mZoomRecyclerView = null;
        localPreviewActivity.mRecyclerViewPager = null;
        localPreviewActivity.contentView = null;
        localPreviewActivity.mIndicatorRoot = null;
        localPreviewActivity.mIndicatorView = null;
        localPreviewActivity.error_view = null;
        localPreviewActivity.tvErrorView = null;
        localPreviewActivity.tvRetry = null;
        localPreviewActivity.tvCatalog = null;
        localPreviewActivity.tvAutoPlay = null;
        localPreviewActivity.tvBrightness = null;
        localPreviewActivity.tvSetting = null;
        localPreviewActivity.mButtomMenu = null;
        localPreviewActivity.buttomLayout = null;
        localPreviewActivity.ivAutoPlay = null;
        localPreviewActivity.autoPlayLayout = null;
        localPreviewActivity.bsb_auto = null;
        localPreviewActivity.ll_auto = null;
        localPreviewActivity.ll_seek_progress = null;
        localPreviewActivity.preChapter = null;
        localPreviewActivity.nextChapter = null;
        localPreviewActivity.mSeekBarScroll = null;
        localPreviewActivity.v_brightness = null;
        localPreviewActivity.ll_click_event = null;
        localPreviewActivity.ll_up_down_tips = null;
        localPreviewActivity.iv_close_up_down_tips = null;
        localPreviewActivity.ll_left_right_tips = null;
        localPreviewActivity.iv_close_left_right_tips = null;
        localPreviewActivity.event_top = null;
        localPreviewActivity.event_bottom = null;
        localPreviewActivity.event_up_down_middle = null;
        localPreviewActivity.event_left = null;
        localPreviewActivity.event_middle = null;
        localPreviewActivity.event_right = null;
        localPreviewActivity.scroll_mode_event_up_down = null;
        localPreviewActivity.scroll_mode_event_left_right = null;
        localPreviewActivity.ll_left_right_content = null;
        localPreviewActivity.ll_up_down_content = null;
    }

    @UiThread
    public LocalPreviewActivity_ViewBinding(LocalPreviewActivity localPreviewActivity, View view) {
        this.f21274do = localPreviewActivity;
        localPreviewActivity.rootView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09036e, "field 'rootView'", RelativeLayout.class);
        localPreviewActivity.comic_status_bar = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09010e, "field 'comic_status_bar'", LinearLayout.class);
        localPreviewActivity.statusChapterText = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0903db, "field 'statusChapterText'", TextView.class);
        localPreviewActivity.statusTimeText = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0903dc, "field 'statusTimeText'", TextView.class);
        localPreviewActivity.statusBatteryText = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0903d9, "field 'statusBatteryText'", TextView.class);
        localPreviewActivity.batteryView = (BatteryView) Cnew.m10373case(view, R.id.arg_res_0x7f0903da, "field 'batteryView'", BatteryView.class);
        localPreviewActivity.mHeadTitleRight = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0901de, "field 'mHeadTitleRight'", TextView.class);
        localPreviewActivity.mZoomRecyclerView = (ZoomableRecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902ae, "field 'mZoomRecyclerView'", ZoomableRecyclerView.class);
        localPreviewActivity.mRecyclerViewPager = (RecyclerViewPager) Cnew.m10373case(view, R.id.arg_res_0x7f0902a5, "field 'mRecyclerViewPager'", RecyclerViewPager.class);
        localPreviewActivity.contentView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090115, "field 'contentView'", RelativeLayout.class);
        localPreviewActivity.mIndicatorRoot = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902a1, "field 'mIndicatorRoot'", RelativeLayout.class);
        localPreviewActivity.mIndicatorView = (AVLoadingIndicatorView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a2, "field 'mIndicatorView'", AVLoadingIndicatorView.class);
        localPreviewActivity.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        localPreviewActivity.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        localPreviewActivity.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
        localPreviewActivity.tvCatalog = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090466, "field 'tvCatalog'", TextView.class);
        localPreviewActivity.tvAutoPlay = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090461, "field 'tvAutoPlay'", TextView.class);
        localPreviewActivity.tvBrightness = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090463, "field 'tvBrightness'", TextView.class);
        localPreviewActivity.tvSetting = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b0, "field 'tvSetting'", TextView.class);
        localPreviewActivity.mButtomMenu = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09029a, "field 'mButtomMenu'", LinearLayout.class);
        localPreviewActivity.buttomLayout = (ButtomMenuLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0900d8, "field 'buttomLayout'", ButtomMenuLayout.class);
        localPreviewActivity.ivAutoPlay = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090233, "field 'ivAutoPlay'", ImageView.class);
        localPreviewActivity.autoPlayLayout = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09009e, "field 'autoPlayLayout'", LinearLayout.class);
        localPreviewActivity.bsb_auto = (BubbleSeekBar) Cnew.m10373case(view, R.id.arg_res_0x7f0900c4, "field 'bsb_auto'", BubbleSeekBar.class);
        localPreviewActivity.ll_auto = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090272, "field 'll_auto'", LinearLayout.class);
        localPreviewActivity.ll_seek_progress = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09028b, "field 'll_seek_progress'", LinearLayout.class);
        localPreviewActivity.preChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090332, "field 'preChapter'", TextView.class);
        localPreviewActivity.nextChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0902fb, "field 'nextChapter'", TextView.class);
        localPreviewActivity.mSeekBarScroll = (ReverseSeekBar) Cnew.m10373case(view, R.id.arg_res_0x7f0902a8, "field 'mSeekBarScroll'", ReverseSeekBar.class);
        localPreviewActivity.v_brightness = Cnew.m10381try(view, R.id.arg_res_0x7f0904d9, "field 'v_brightness'");
        localPreviewActivity.ll_click_event = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090276, "field 'll_click_event'", LinearLayout.class);
        localPreviewActivity.ll_up_down_tips = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090290, "field 'll_up_down_tips'", LinearLayout.class);
        localPreviewActivity.iv_close_up_down_tips = (AppCompatImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090239, "field 'iv_close_up_down_tips'", AppCompatImageView.class);
        localPreviewActivity.ll_left_right_tips = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090284, "field 'll_left_right_tips'", LinearLayout.class);
        localPreviewActivity.iv_close_left_right_tips = (AppCompatImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090238, "field 'iv_close_left_right_tips'", AppCompatImageView.class);
        localPreviewActivity.event_top = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a4, "field 'event_top'", Button.class);
        localPreviewActivity.event_bottom = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a0, "field 'event_bottom'", Button.class);
        localPreviewActivity.event_up_down_middle = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a5, "field 'event_up_down_middle'", Button.class);
        localPreviewActivity.event_left = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a1, "field 'event_left'", Button.class);
        localPreviewActivity.event_middle = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a2, "field 'event_middle'", Button.class);
        localPreviewActivity.event_right = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a3, "field 'event_right'", Button.class);
        localPreviewActivity.scroll_mode_event_up_down = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090386, "field 'scroll_mode_event_up_down'", LinearLayout.class);
        localPreviewActivity.scroll_mode_event_left_right = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090385, "field 'scroll_mode_event_left_right'", LinearLayout.class);
        localPreviewActivity.ll_left_right_content = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090283, "field 'll_left_right_content'", LinearLayout.class);
        localPreviewActivity.ll_up_down_content = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09028f, "field 'll_up_down_content'", LinearLayout.class);
    }
}
