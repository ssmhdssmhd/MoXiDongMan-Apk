package com.wsw.cospa.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import cn.bingoogolapple.qrcode.zxing.ZXingView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class QRCodeScanActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private QRCodeScanActivity f21300do;

    @UiThread
    public QRCodeScanActivity_ViewBinding(QRCodeScanActivity qRCodeScanActivity) {
        this(qRCodeScanActivity, qRCodeScanActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        QRCodeScanActivity qRCodeScanActivity = this.f21300do;
        if (qRCodeScanActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21300do = null;
        qRCodeScanActivity.mToolbar = null;
        qRCodeScanActivity.zxingview = null;
        qRCodeScanActivity.fabFlashlight = null;
    }

    @UiThread
    public QRCodeScanActivity_ViewBinding(QRCodeScanActivity qRCodeScanActivity, View view) {
        this.f21300do = qRCodeScanActivity;
        qRCodeScanActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        qRCodeScanActivity.zxingview = (ZXingView) Cnew.m10373case(view, R.id.arg_res_0x7f0904fa, "field 'zxingview'", ZXingView.class);
        qRCodeScanActivity.fabFlashlight = (FloatingActionButton) Cnew.m10373case(view, R.id.arg_res_0x7f0901ad, "field 'fabFlashlight'", FloatingActionButton.class);
    }
}
