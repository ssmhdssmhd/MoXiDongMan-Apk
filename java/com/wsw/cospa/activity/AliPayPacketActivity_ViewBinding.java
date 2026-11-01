package com.wsw.cospa.activity;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class AliPayPacketActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private AliPayPacketActivity f20881do;

    @UiThread
    public AliPayPacketActivity_ViewBinding(AliPayPacketActivity aliPayPacketActivity) {
        this(aliPayPacketActivity, aliPayPacketActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AliPayPacketActivity aliPayPacketActivity = this.f20881do;
        if (aliPayPacketActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f20881do = null;
        aliPayPacketActivity.mToolbar = null;
        aliPayPacketActivity.ivPacket = null;
        aliPayPacketActivity.refreshLayout = null;
    }

    @UiThread
    public AliPayPacketActivity_ViewBinding(AliPayPacketActivity aliPayPacketActivity, View view) {
        this.f20881do = aliPayPacketActivity;
        aliPayPacketActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        aliPayPacketActivity.ivPacket = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090245, "field 'ivPacket'", ImageView.class);
        aliPayPacketActivity.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
    }
}
