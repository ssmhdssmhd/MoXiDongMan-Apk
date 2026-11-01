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
public class LocalCompressActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private LocalCompressActivity f21223do;

    @UiThread
    public LocalCompressActivity_ViewBinding(LocalCompressActivity localCompressActivity) {
        this(localCompressActivity, localCompressActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LocalCompressActivity localCompressActivity = this.f21223do;
        if (localCompressActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21223do = null;
        localCompressActivity.rootView = null;
        localCompressActivity.comic_status_bar = null;
        localCompressActivity.statusChapterText = null;
        localCompressActivity.statusTimeText = null;
        localCompressActivity.statusBatteryText = null;
        localCompressActivity.batteryView = null;
        localCompressActivity.mHeadTitleRight = null;
        localCompressActivity.mZoomRecyclerView = null;
        localCompressActivity.mRecyclerViewPager = null;
        localCompressActivity.contentView = null;
        localCompressActivity.mIndicatorRoot = null;
        localCompressActivity.mIndicatorView = null;
        localCompressActivity.error_view = null;
        localCompressActivity.tvErrorView = null;
        localCompressActivity.tvRetry = null;
        localCompressActivity.tvCatalog = null;
        localCompressActivity.tvAutoPlay = null;
        localCompressActivity.tvBrightness = null;
        localCompressActivity.tvSetting = null;
        localCompressActivity.mButtomMenu = null;
        localCompressActivity.buttomLayout = null;
        localCompressActivity.ivAutoPlay = null;
        localCompressActivity.autoPlayLayout = null;
        localCompressActivity.bsb_auto = null;
        localCompressActivity.ll_auto = null;
        localCompressActivity.ll_seek_progress = null;
        localCompressActivity.preChapter = null;
        localCompressActivity.nextChapter = null;
        localCompressActivity.mSeekBarScroll = null;
        localCompressActivity.v_brightness = null;
        localCompressActivity.ll_click_event = null;
        localCompressActivity.ll_up_down_tips = null;
        localCompressActivity.iv_close_up_down_tips = null;
        localCompressActivity.ll_left_right_tips = null;
        localCompressActivity.iv_close_left_right_tips = null;
        localCompressActivity.event_top = null;
        localCompressActivity.event_bottom = null;
        localCompressActivity.event_up_down_middle = null;
        localCompressActivity.event_left = null;
        localCompressActivity.event_middle = null;
        localCompressActivity.event_right = null;
        localCompressActivity.scroll_mode_event_up_down = null;
        localCompressActivity.scroll_mode_event_left_right = null;
        localCompressActivity.ll_left_right_content = null;
        localCompressActivity.ll_up_down_content = null;
    }

    @UiThread
    public LocalCompressActivity_ViewBinding(LocalCompressActivity localCompressActivity, View view) {
        this.f21223do = localCompressActivity;
        localCompressActivity.rootView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09036e, "field 'rootView'", RelativeLayout.class);
        localCompressActivity.comic_status_bar = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09010e, "field 'comic_status_bar'", LinearLayout.class);
        localCompressActivity.statusChapterText = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0903db, "field 'statusChapterText'", TextView.class);
        localCompressActivity.statusTimeText = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0903dc, "field 'statusTimeText'", TextView.class);
        localCompressActivity.statusBatteryText = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0903d9, "field 'statusBatteryText'", TextView.class);
        localCompressActivity.batteryView = (BatteryView) Cnew.m10373case(view, R.id.arg_res_0x7f0903da, "field 'batteryView'", BatteryView.class);
        localCompressActivity.mHeadTitleRight = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0901de, "field 'mHeadTitleRight'", TextView.class);
        localCompressActivity.mZoomRecyclerView = (ZoomableRecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902ae, "field 'mZoomRecyclerView'", ZoomableRecyclerView.class);
        localCompressActivity.mRecyclerViewPager = (RecyclerViewPager) Cnew.m10373case(view, R.id.arg_res_0x7f0902a5, "field 'mRecyclerViewPager'", RecyclerViewPager.class);
        localCompressActivity.contentView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090115, "field 'contentView'", RelativeLayout.class);
        localCompressActivity.mIndicatorRoot = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902a1, "field 'mIndicatorRoot'", RelativeLayout.class);
        localCompressActivity.mIndicatorView = (AVLoadingIndicatorView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a2, "field 'mIndicatorView'", AVLoadingIndicatorView.class);
        localCompressActivity.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        localCompressActivity.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        localCompressActivity.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
        localCompressActivity.tvCatalog = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090466, "field 'tvCatalog'", TextView.class);
        localCompressActivity.tvAutoPlay = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090461, "field 'tvAutoPlay'", TextView.class);
        localCompressActivity.tvBrightness = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090463, "field 'tvBrightness'", TextView.class);
        localCompressActivity.tvSetting = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b0, "field 'tvSetting'", TextView.class);
        localCompressActivity.mButtomMenu = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09029a, "field 'mButtomMenu'", LinearLayout.class);
        localCompressActivity.buttomLayout = (ButtomMenuLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0900d8, "field 'buttomLayout'", ButtomMenuLayout.class);
        localCompressActivity.ivAutoPlay = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090233, "field 'ivAutoPlay'", ImageView.class);
        localCompressActivity.autoPlayLayout = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09009e, "field 'autoPlayLayout'", LinearLayout.class);
        localCompressActivity.bsb_auto = (BubbleSeekBar) Cnew.m10373case(view, R.id.arg_res_0x7f0900c4, "field 'bsb_auto'", BubbleSeekBar.class);
        localCompressActivity.ll_auto = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090272, "field 'll_auto'", LinearLayout.class);
        localCompressActivity.ll_seek_progress = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09028b, "field 'll_seek_progress'", LinearLayout.class);
        localCompressActivity.preChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090332, "field 'preChapter'", TextView.class);
        localCompressActivity.nextChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0902fb, "field 'nextChapter'", TextView.class);
        localCompressActivity.mSeekBarScroll = (ReverseSeekBar) Cnew.m10373case(view, R.id.arg_res_0x7f0902a8, "field 'mSeekBarScroll'", ReverseSeekBar.class);
        localCompressActivity.v_brightness = Cnew.m10381try(view, R.id.arg_res_0x7f0904d9, "field 'v_brightness'");
        localCompressActivity.ll_click_event = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090276, "field 'll_click_event'", LinearLayout.class);
        localCompressActivity.ll_up_down_tips = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090290, "field 'll_up_down_tips'", LinearLayout.class);
        localCompressActivity.iv_close_up_down_tips = (AppCompatImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090239, "field 'iv_close_up_down_tips'", AppCompatImageView.class);
        localCompressActivity.ll_left_right_tips = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090284, "field 'll_left_right_tips'", LinearLayout.class);
        localCompressActivity.iv_close_left_right_tips = (AppCompatImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090238, "field 'iv_close_left_right_tips'", AppCompatImageView.class);
        localCompressActivity.event_top = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a4, "field 'event_top'", Button.class);
        localCompressActivity.event_bottom = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a0, "field 'event_bottom'", Button.class);
        localCompressActivity.event_up_down_middle = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a5, "field 'event_up_down_middle'", Button.class);
        localCompressActivity.event_left = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a1, "field 'event_left'", Button.class);
        localCompressActivity.event_middle = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a2, "field 'event_middle'", Button.class);
        localCompressActivity.event_right = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a3, "field 'event_right'", Button.class);
        localCompressActivity.scroll_mode_event_up_down = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090386, "field 'scroll_mode_event_up_down'", LinearLayout.class);
        localCompressActivity.scroll_mode_event_left_right = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090385, "field 'scroll_mode_event_left_right'", LinearLayout.class);
        localCompressActivity.ll_left_right_content = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090283, "field 'll_left_right_content'", LinearLayout.class);
        localCompressActivity.ll_up_down_content = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09028f, "field 'll_up_down_content'", LinearLayout.class);
    }
}
