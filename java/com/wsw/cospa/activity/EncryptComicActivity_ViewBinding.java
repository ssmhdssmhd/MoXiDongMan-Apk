package com.wsw.cospa.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.google.android.material.textfield.TextInputLayout;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.EditTextWithScrollView;
import com.wsw.cospa.widget.view.FixedTextInputEditText;

/* loaded from: classes2.dex */
public class EncryptComicActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private EncryptComicActivity f21101do;

    @UiThread
    public EncryptComicActivity_ViewBinding(EncryptComicActivity encryptComicActivity) {
        this(encryptComicActivity, encryptComicActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        EncryptComicActivity encryptComicActivity = this.f21101do;
        if (encryptComicActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21101do = null;
        encryptComicActivity.mToolbar = null;
        encryptComicActivity.tv_title = null;
        encryptComicActivity.etPlaintLayout = null;
        encryptComicActivity.etPlaintText = null;
        encryptComicActivity.btnEncrypt = null;
        encryptComicActivity.btnDecrypt = null;
        encryptComicActivity.etCipherLayout = null;
        encryptComicActivity.etCipherText = null;
        encryptComicActivity.etRegularLayout = null;
        encryptComicActivity.etRegularText = null;
        encryptComicActivity.etReplaceLayout = null;
        encryptComicActivity.etReplaceText = null;
        encryptComicActivity.tvVersion = null;
        encryptComicActivity.btnExpander = null;
        encryptComicActivity.tvAesPassword = null;
        encryptComicActivity.btnReplace = null;
        encryptComicActivity.sv_replace_layout = null;
        encryptComicActivity.etReplaceSourceLayout = null;
        encryptComicActivity.etReplaceSourceText = null;
    }

    @UiThread
    public EncryptComicActivity_ViewBinding(EncryptComicActivity encryptComicActivity, View view) {
        this.f21101do = encryptComicActivity;
        encryptComicActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        encryptComicActivity.tv_title = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904be, "field 'tv_title'", TextView.class);
        encryptComicActivity.etPlaintLayout = (TextInputLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090178, "field 'etPlaintLayout'", TextInputLayout.class);
        encryptComicActivity.etPlaintText = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090179, "field 'etPlaintText'", FixedTextInputEditText.class);
        encryptComicActivity.btnEncrypt = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0900cb, "field 'btnEncrypt'", TextView.class);
        encryptComicActivity.btnDecrypt = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0900c9, "field 'btnDecrypt'", TextView.class);
        encryptComicActivity.etCipherLayout = (TextInputLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090173, "field 'etCipherLayout'", TextInputLayout.class);
        encryptComicActivity.etCipherText = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090174, "field 'etCipherText'", FixedTextInputEditText.class);
        encryptComicActivity.etRegularLayout = (TextInputLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09017b, "field 'etRegularLayout'", TextInputLayout.class);
        encryptComicActivity.etRegularText = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f09017c, "field 'etRegularText'", FixedTextInputEditText.class);
        encryptComicActivity.etReplaceLayout = (TextInputLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09017d, "field 'etReplaceLayout'", TextInputLayout.class);
        encryptComicActivity.etReplaceText = (FixedTextInputEditText) Cnew.m10373case(view, R.id.arg_res_0x7f090180, "field 'etReplaceText'", FixedTextInputEditText.class);
        encryptComicActivity.tvVersion = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904c4, "field 'tvVersion'", TextView.class);
        encryptComicActivity.btnExpander = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f0900cc, "field 'btnExpander'", ImageView.class);
        encryptComicActivity.tvAesPassword = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09045e, "field 'tvAesPassword'", TextView.class);
        encryptComicActivity.btnReplace = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0900d3, "field 'btnReplace'", TextView.class);
        encryptComicActivity.sv_replace_layout = (ScrollView) Cnew.m10373case(view, R.id.arg_res_0x7f0903e2, "field 'sv_replace_layout'", ScrollView.class);
        encryptComicActivity.etReplaceSourceLayout = (TextInputLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09017e, "field 'etReplaceSourceLayout'", TextInputLayout.class);
        encryptComicActivity.etReplaceSourceText = (EditTextWithScrollView) Cnew.m10373case(view, R.id.arg_res_0x7f09017f, "field 'etReplaceSourceText'", EditTextWithScrollView.class);
    }
}
