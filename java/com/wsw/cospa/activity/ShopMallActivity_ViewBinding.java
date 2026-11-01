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
public class ShopMallActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private ShopMallActivity f21353do;

    @UiThread
    public ShopMallActivity_ViewBinding(ShopMallActivity shopMallActivity) {
        this(shopMallActivity, shopMallActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ShopMallActivity shopMallActivity = this.f21353do;
        if (shopMallActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21353do = null;
        shopMallActivity.mToolbar = null;
        shopMallActivity.iv_qrcode = null;
        shopMallActivity.refreshLayout = null;
    }

    @UiThread
    public ShopMallActivity_ViewBinding(ShopMallActivity shopMallActivity, View view) {
        this.f21353do = shopMallActivity;
        shopMallActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        shopMallActivity.iv_qrcode = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090249, "field 'iv_qrcode'", ImageView.class);
        shopMallActivity.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
    }
}
