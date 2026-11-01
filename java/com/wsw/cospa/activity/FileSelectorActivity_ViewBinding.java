package com.wsw.cospa.activity;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.ButtonBarLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class FileSelectorActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private FileSelectorActivity f21132do;

    @UiThread
    public FileSelectorActivity_ViewBinding(FileSelectorActivity fileSelectorActivity) {
        this(fileSelectorActivity, fileSelectorActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FileSelectorActivity fileSelectorActivity = this.f21132do;
        if (fileSelectorActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21132do = null;
        fileSelectorActivity.mToolbar = null;
        fileSelectorActivity.tvTitle = null;
        fileSelectorActivity.mRecyclerView = null;
        fileSelectorActivity.mButtonBar = null;
        fileSelectorActivity.backButton = null;
        fileSelectorActivity.cancelButton = null;
        fileSelectorActivity.confirmButton = null;
        fileSelectorActivity.tvCurrentPath = null;
        fileSelectorActivity.tvCurrentPosition = null;
        fileSelectorActivity.btnContinueReading = null;
        fileSelectorActivity.llCurrentPosition = null;
        fileSelectorActivity.mIndicatorRoot = null;
        fileSelectorActivity.mIndicatorView = null;
        fileSelectorActivity.error_view = null;
        fileSelectorActivity.tvErrorView = null;
        fileSelectorActivity.tvRetry = null;
    }

    @UiThread
    public FileSelectorActivity_ViewBinding(FileSelectorActivity fileSelectorActivity, View view) {
        this.f21132do = fileSelectorActivity;
        fileSelectorActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        fileSelectorActivity.tvTitle = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904be, "field 'tvTitle'", TextView.class);
        fileSelectorActivity.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", RecyclerView.class);
        fileSelectorActivity.mButtonBar = (ButtonBarLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09029b, "field 'mButtonBar'", ButtonBarLayout.class);
        fileSelectorActivity.backButton = (AppCompatButton) Cnew.m10373case(view, R.id.arg_res_0x7f0900a0, "field 'backButton'", AppCompatButton.class);
        fileSelectorActivity.cancelButton = (AppCompatButton) Cnew.m10373case(view, R.id.arg_res_0x7f0900dd, "field 'cancelButton'", AppCompatButton.class);
        fileSelectorActivity.confirmButton = (AppCompatButton) Cnew.m10373case(view, R.id.arg_res_0x7f09010f, "field 'confirmButton'", AppCompatButton.class);
        fileSelectorActivity.tvCurrentPath = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090474, "field 'tvCurrentPath'", TextView.class);
        fileSelectorActivity.tvCurrentPosition = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090475, "field 'tvCurrentPosition'", TextView.class);
        fileSelectorActivity.btnContinueReading = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0900c8, "field 'btnContinueReading'", TextView.class);
        fileSelectorActivity.llCurrentPosition = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09027d, "field 'llCurrentPosition'", LinearLayout.class);
        fileSelectorActivity.mIndicatorRoot = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902a1, "field 'mIndicatorRoot'", RelativeLayout.class);
        fileSelectorActivity.mIndicatorView = (AVLoadingIndicatorView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a2, "field 'mIndicatorView'", AVLoadingIndicatorView.class);
        fileSelectorActivity.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        fileSelectorActivity.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        fileSelectorActivity.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
    }
}
