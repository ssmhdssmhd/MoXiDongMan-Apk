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
public class ChapterBrowseActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private ChapterBrowseActivity f20976do;

    @UiThread
    public ChapterBrowseActivity_ViewBinding(ChapterBrowseActivity chapterBrowseActivity) {
        this(chapterBrowseActivity, chapterBrowseActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChapterBrowseActivity chapterBrowseActivity = this.f20976do;
        if (chapterBrowseActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f20976do = null;
        chapterBrowseActivity.rootView = null;
        chapterBrowseActivity.comic_status_bar = null;
        chapterBrowseActivity.statusChapterText = null;
        chapterBrowseActivity.statusTimeText = null;
        chapterBrowseActivity.statusBatteryText = null;
        chapterBrowseActivity.batteryView = null;
        chapterBrowseActivity.mHeadTitleRight = null;
        chapterBrowseActivity.mZoomRecyclerView = null;
        chapterBrowseActivity.mRecyclerViewPager = null;
        chapterBrowseActivity.contentView = null;
        chapterBrowseActivity.tvSaveBook = null;
        chapterBrowseActivity.mIndicatorRoot = null;
        chapterBrowseActivity.mIndicatorView = null;
        chapterBrowseActivity.error_view = null;
        chapterBrowseActivity.tvErrorView = null;
        chapterBrowseActivity.tvRetry = null;
        chapterBrowseActivity.tvCatalog = null;
        chapterBrowseActivity.tvAutoPlay = null;
        chapterBrowseActivity.tvBrightness = null;
        chapterBrowseActivity.tvSetting = null;
        chapterBrowseActivity.mButtomMenu = null;
        chapterBrowseActivity.buttomLayout = null;
        chapterBrowseActivity.ivAutoPlay = null;
        chapterBrowseActivity.autoPlayLayout = null;
        chapterBrowseActivity.bsb_auto = null;
        chapterBrowseActivity.ll_auto = null;
        chapterBrowseActivity.ll_seek_progress = null;
        chapterBrowseActivity.preChapter = null;
        chapterBrowseActivity.nextChapter = null;
        chapterBrowseActivity.mSeekBarScroll = null;
        chapterBrowseActivity.v_brightness = null;
        chapterBrowseActivity.ll_click_event = null;
        chapterBrowseActivity.ll_up_down_tips = null;
        chapterBrowseActivity.iv_close_up_down_tips = null;
        chapterBrowseActivity.ll_left_right_tips = null;
        chapterBrowseActivity.iv_close_left_right_tips = null;
        chapterBrowseActivity.event_top = null;
        chapterBrowseActivity.event_bottom = null;
        chapterBrowseActivity.event_up_down_middle = null;
        chapterBrowseActivity.event_left = null;
        chapterBrowseActivity.event_middle = null;
        chapterBrowseActivity.event_right = null;
        chapterBrowseActivity.scroll_mode_event_up_down = null;
        chapterBrowseActivity.scroll_mode_event_left_right = null;
        chapterBrowseActivity.ll_left_right_content = null;
        chapterBrowseActivity.ll_up_down_content = null;
    }

    @UiThread
    public ChapterBrowseActivity_ViewBinding(ChapterBrowseActivity chapterBrowseActivity, View view) {
        this.f20976do = chapterBrowseActivity;
        chapterBrowseActivity.rootView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09036e, "field 'rootView'", RelativeLayout.class);
        chapterBrowseActivity.comic_status_bar = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09010e, "field 'comic_status_bar'", LinearLayout.class);
        chapterBrowseActivity.statusChapterText = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0903db, "field 'statusChapterText'", TextView.class);
        chapterBrowseActivity.statusTimeText = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0903dc, "field 'statusTimeText'", TextView.class);
        chapterBrowseActivity.statusBatteryText = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0903d9, "field 'statusBatteryText'", TextView.class);
        chapterBrowseActivity.batteryView = (BatteryView) Cnew.m10373case(view, R.id.arg_res_0x7f0903da, "field 'batteryView'", BatteryView.class);
        chapterBrowseActivity.mHeadTitleRight = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0901de, "field 'mHeadTitleRight'", TextView.class);
        chapterBrowseActivity.mZoomRecyclerView = (ZoomableRecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902ae, "field 'mZoomRecyclerView'", ZoomableRecyclerView.class);
        chapterBrowseActivity.mRecyclerViewPager = (RecyclerViewPager) Cnew.m10373case(view, R.id.arg_res_0x7f0902a5, "field 'mRecyclerViewPager'", RecyclerViewPager.class);
        chapterBrowseActivity.contentView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090115, "field 'contentView'", RelativeLayout.class);
        chapterBrowseActivity.tvSaveBook = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a9, "field 'tvSaveBook'", TextView.class);
        chapterBrowseActivity.mIndicatorRoot = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902a1, "field 'mIndicatorRoot'", RelativeLayout.class);
        chapterBrowseActivity.mIndicatorView = (AVLoadingIndicatorView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a2, "field 'mIndicatorView'", AVLoadingIndicatorView.class);
        chapterBrowseActivity.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        chapterBrowseActivity.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        chapterBrowseActivity.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
        chapterBrowseActivity.tvCatalog = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090466, "field 'tvCatalog'", TextView.class);
        chapterBrowseActivity.tvAutoPlay = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090461, "field 'tvAutoPlay'", TextView.class);
        chapterBrowseActivity.tvBrightness = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090463, "field 'tvBrightness'", TextView.class);
        chapterBrowseActivity.tvSetting = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b0, "field 'tvSetting'", TextView.class);
        chapterBrowseActivity.mButtomMenu = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09029a, "field 'mButtomMenu'", LinearLayout.class);
        chapterBrowseActivity.buttomLayout = (ButtomMenuLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0900d8, "field 'buttomLayout'", ButtomMenuLayout.class);
        chapterBrowseActivity.ivAutoPlay = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090233, "field 'ivAutoPlay'", ImageView.class);
        chapterBrowseActivity.autoPlayLayout = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09009e, "field 'autoPlayLayout'", LinearLayout.class);
        chapterBrowseActivity.bsb_auto = (BubbleSeekBar) Cnew.m10373case(view, R.id.arg_res_0x7f0900c4, "field 'bsb_auto'", BubbleSeekBar.class);
        chapterBrowseActivity.ll_auto = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090272, "field 'll_auto'", LinearLayout.class);
        chapterBrowseActivity.ll_seek_progress = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09028b, "field 'll_seek_progress'", LinearLayout.class);
        chapterBrowseActivity.preChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090332, "field 'preChapter'", TextView.class);
        chapterBrowseActivity.nextChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0902fb, "field 'nextChapter'", TextView.class);
        chapterBrowseActivity.mSeekBarScroll = (ReverseSeekBar) Cnew.m10373case(view, R.id.arg_res_0x7f0902a8, "field 'mSeekBarScroll'", ReverseSeekBar.class);
        chapterBrowseActivity.v_brightness = Cnew.m10381try(view, R.id.arg_res_0x7f0904d9, "field 'v_brightness'");
        chapterBrowseActivity.ll_click_event = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090276, "field 'll_click_event'", LinearLayout.class);
        chapterBrowseActivity.ll_up_down_tips = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090290, "field 'll_up_down_tips'", LinearLayout.class);
        chapterBrowseActivity.iv_close_up_down_tips = (AppCompatImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090239, "field 'iv_close_up_down_tips'", AppCompatImageView.class);
        chapterBrowseActivity.ll_left_right_tips = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090284, "field 'll_left_right_tips'", LinearLayout.class);
        chapterBrowseActivity.iv_close_left_right_tips = (AppCompatImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090238, "field 'iv_close_left_right_tips'", AppCompatImageView.class);
        chapterBrowseActivity.event_top = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a4, "field 'event_top'", Button.class);
        chapterBrowseActivity.event_bottom = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a0, "field 'event_bottom'", Button.class);
        chapterBrowseActivity.event_up_down_middle = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a5, "field 'event_up_down_middle'", Button.class);
        chapterBrowseActivity.event_left = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a1, "field 'event_left'", Button.class);
        chapterBrowseActivity.event_middle = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a2, "field 'event_middle'", Button.class);
        chapterBrowseActivity.event_right = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a3, "field 'event_right'", Button.class);
        chapterBrowseActivity.scroll_mode_event_up_down = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090386, "field 'scroll_mode_event_up_down'", LinearLayout.class);
        chapterBrowseActivity.scroll_mode_event_left_right = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090385, "field 'scroll_mode_event_left_right'", LinearLayout.class);
        chapterBrowseActivity.ll_left_right_content = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090283, "field 'll_left_right_content'", LinearLayout.class);
        chapterBrowseActivity.ll_up_down_content = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09028f, "field 'll_up_down_content'", LinearLayout.class);
    }
}
