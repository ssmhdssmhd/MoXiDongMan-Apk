package com.wsw.cospa.activity;

import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.view.SwitchButton;

/* loaded from: classes2.dex */
public class ThemeConfigActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private ThemeConfigActivity f21387do;

    @UiThread
    public ThemeConfigActivity_ViewBinding(ThemeConfigActivity themeConfigActivity) {
        this(themeConfigActivity, themeConfigActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ThemeConfigActivity themeConfigActivity = this.f21387do;
        if (themeConfigActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21387do = null;
        themeConfigActivity.mToolbar = null;
        themeConfigActivity.refreshLayout = null;
        themeConfigActivity.ll_dark_mode = null;
        themeConfigActivity.switch_drak_mode = null;
        themeConfigActivity.swAutoNightTheme = null;
    }

    @UiThread
    public ThemeConfigActivity_ViewBinding(ThemeConfigActivity themeConfigActivity, View view) {
        this.f21387do = themeConfigActivity;
        themeConfigActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        themeConfigActivity.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
        themeConfigActivity.ll_dark_mode = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09027e, "field 'll_dark_mode'", LinearLayout.class);
        themeConfigActivity.switch_drak_mode = (SwitchButton) Cnew.m10373case(view, R.id.arg_res_0x7f0903ee, "field 'switch_drak_mode'", SwitchButton.class);
        themeConfigActivity.swAutoNightTheme = (SwitchButton) Cnew.m10373case(view, R.id.arg_res_0x7f0903e3, "field 'swAutoNightTheme'", SwitchButton.class);
    }
}
