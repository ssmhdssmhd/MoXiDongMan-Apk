package com.wsw.cospa.widget;

import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatImageView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class ClickEventDialog_ViewBinding implements Unbinder {
    private ClickEventDialog target;

    @UiThread
    public ClickEventDialog_ViewBinding(ClickEventDialog clickEventDialog, View view) {
        this.target = clickEventDialog;
        clickEventDialog.ll_click_event = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090276, "field 'll_click_event'", RelativeLayout.class);
        clickEventDialog.ll_up_down_tips = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090290, "field 'll_up_down_tips'", LinearLayout.class);
        clickEventDialog.iv_close_up_down_tips = (AppCompatImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090239, "field 'iv_close_up_down_tips'", AppCompatImageView.class);
        clickEventDialog.ll_left_right_tips = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090284, "field 'll_left_right_tips'", LinearLayout.class);
        clickEventDialog.iv_close_left_right_tips = (AppCompatImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090238, "field 'iv_close_left_right_tips'", AppCompatImageView.class);
        clickEventDialog.event_left = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a1, "field 'event_left'", Button.class);
        clickEventDialog.event_middle = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a2, "field 'event_middle'", Button.class);
        clickEventDialog.event_right = (Button) Cnew.m10373case(view, R.id.arg_res_0x7f0901a3, "field 'event_right'", Button.class);
        clickEventDialog.scroll_mode_event_up_down = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090386, "field 'scroll_mode_event_up_down'", LinearLayout.class);
        clickEventDialog.scroll_mode_event_left_right = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090385, "field 'scroll_mode_event_left_right'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ClickEventDialog clickEventDialog = this.target;
        if (clickEventDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        clickEventDialog.ll_click_event = null;
        clickEventDialog.ll_up_down_tips = null;
        clickEventDialog.iv_close_up_down_tips = null;
        clickEventDialog.ll_left_right_tips = null;
        clickEventDialog.iv_close_left_right_tips = null;
        clickEventDialog.event_left = null;
        clickEventDialog.event_middle = null;
        clickEventDialog.event_right = null;
        clickEventDialog.scroll_mode_event_up_down = null;
        clickEventDialog.scroll_mode_event_left_right = null;
    }
}
