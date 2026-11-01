package com.wsw.cospa.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import androidx.core.widget.NestedScrollView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.h6ah4i.android.widget.verticalseekbar.VerticalSeekBar;
import com.h6ah4i.android.widget.verticalseekbar.VerticalSeekBarWrapper;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.view.FixedTextInputEditText;

/* loaded from: classes2.dex */
public class OnkeyEncryptActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private OnkeyEncryptActivity f21293do;

    @UiThread
    public OnkeyEncryptActivity_ViewBinding(OnkeyEncryptActivity onkeyEncryptActivity) {
        this(onkeyEncryptActivity, onkeyEncryptActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        OnkeyEncryptActivity onkeyEncryptActivity = this.f21293do;
        if (onkeyEncryptActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21293do = null;
        onkeyEncryptActivity.mToolbar = null;
        onkeyEncryptActivity.tv_title = null;
        onkeyEncryptActivity.btnEncrypt = null;
        onkeyEncryptActivity.btnDecrypt = null;
        onkeyEncryptActivity.tvVersion = null;
        onkeyEncryptActivity.btnExpander = null;
        onkeyEncryptActivity.tvAesPassword = null;
        onkeyEncryptActivity.ll_onkey_encrypt = null;
        onkeyEncryptActivity.ll_decrypt_source = null;
        onkeyEncryptActivity.etEncrypt = null;
        onkeyEncryptActivity.etPlaintext = null;
        onkeyEncryptActivity.btn_decrypt_source = null;
        onkeyEncryptActivity.btn_export_decrypt_source = null;
        onkeyEncryptActivity.btn_share_decrypt_source = null;
        onkeyEncryptActivity.mScrollView = null;
        onkeyEncryptActivity.addComicSeekBarWrapper = null;
        onkeyEncryptActivity.addComicSeekBarMainScrollThumb = null;
    }

    @UiThread
    public OnkeyEncryptActivity_ViewBinding(OnkeyEncryptActivity onkeyEncryptActivity, View view) {
        this.f21293do = onkeyEncryptActivity;
        onkeyEncryptActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        onkeyEncryptActivity.tv_title = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904be, "field 'tv_title'", TextView.class);
        onkeyEncryptActivity.btnEncrypt = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0900cb, "field 'btnEncrypt'", TextView.class);
        onkeyEncryptActivity.btnDecrypt = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0900c9, "field 'btnDecrypt'", TextView.class);
        onkeyEncryptActivity.tvVersion = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904c4, "field 'tvVersion'", TextView.class);
        onkeyEncryptActivity.btnExpander = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f0900cc, "field 'btnExpander'", ImageView.class);
        onkeyEncryptActivity.tvAesPassword = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09045e, "field 'tvAesPassword'", TextView.class);
        onkeyEncryptActivity.ll_onkey_encrypt = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090285, "field 'll_onkey_encrypt'", LinearLayout.class);
        onkeyEncryptActivity.ll_decrypt_source = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09027f, "field 'll_decrypt_source'", LinearLayout.class);
        onkeyEncryptActivity.etEncrypt = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090175, "field 'etEncrypt'", FixedTextInputEditText.class);
        onkeyEncryptActivity.etPlaintext = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09017a, "field 'etPlaintext'", FixedTextInputEditText.class);
        onkeyEncryptActivity.btn_decrypt_source = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0900ca, "field 'btn_decrypt_source'", TextView.class);
        onkeyEncryptActivity.btn_export_decrypt_source = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0900cd, "field 'btn_export_decrypt_source'", TextView.class);
        onkeyEncryptActivity.btn_share_decrypt_source = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0900d4, "field 'btn_share_decrypt_source'", TextView.class);
        onkeyEncryptActivity.mScrollView = (NestedScrollView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a7, "field 'mScrollView'", NestedScrollView.class);
        onkeyEncryptActivity.addComicSeekBarWrapper = (VerticalSeekBarWrapper) Cnew.m10373case(view, R.id.arg_res_0x7f090084, "field 'addComicSeekBarWrapper'", VerticalSeekBarWrapper.class);
        onkeyEncryptActivity.addComicSeekBarMainScrollThumb = (VerticalSeekBar) Cnew.m10373case(view, R.id.arg_res_0x7f090082, "field 'addComicSeekBarMainScrollThumb'", VerticalSeekBar.class);
    }
}
