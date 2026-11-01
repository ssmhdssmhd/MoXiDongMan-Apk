package com.wsw.cospa.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.subscaleview.SubsamplingScaleImageView;

/* loaded from: classes2.dex */
public class BigImageViewActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private BigImageViewActivity f20908do;

    @UiThread
    public BigImageViewActivity_ViewBinding(BigImageViewActivity bigImageViewActivity) {
        this(bigImageViewActivity, bigImageViewActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BigImageViewActivity bigImageViewActivity = this.f20908do;
        if (bigImageViewActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f20908do = null;
        bigImageViewActivity.mToolbar = null;
        bigImageViewActivity.imageView = null;
    }

    @UiThread
    public BigImageViewActivity_ViewBinding(BigImageViewActivity bigImageViewActivity, View view) {
        this.f20908do = bigImageViewActivity;
        bigImageViewActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        bigImageViewActivity.imageView = (SubsamplingScaleImageView) Cnew.m10373case(view, R.id.arg_res_0x7f09020f, "field 'imageView'", SubsamplingScaleImageView.class);
    }
}
