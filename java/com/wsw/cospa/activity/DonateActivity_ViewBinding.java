package com.wsw.cospa.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class DonateActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private DonateActivity f21062do;

    @UiThread
    public DonateActivity_ViewBinding(DonateActivity donateActivity) {
        this(donateActivity, donateActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DonateActivity donateActivity = this.f21062do;
        if (donateActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21062do = null;
        donateActivity.mToolbar = null;
        donateActivity.tvZhbhb = null;
        donateActivity.tvZhbsk = null;
        donateActivity.ivDonate = null;
        donateActivity.refreshLayout = null;
    }

    @UiThread
    public DonateActivity_ViewBinding(DonateActivity donateActivity, View view) {
        this.f21062do = donateActivity;
        donateActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        donateActivity.tvZhbhb = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904ca, "field 'tvZhbhb'", TextView.class);
        donateActivity.tvZhbsk = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904cb, "field 'tvZhbsk'", TextView.class);
        donateActivity.ivDonate = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f09023c, "field 'ivDonate'", ImageView.class);
        donateActivity.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
    }
}
