package com.wsw.cospa.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.cheng.channel.ChannelView;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class ChannelEditDialog_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private ChannelEditDialog f20913do;

    @UiThread
    public ChannelEditDialog_ViewBinding(ChannelEditDialog channelEditDialog) {
        this(channelEditDialog, channelEditDialog.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChannelEditDialog channelEditDialog = this.f20913do;
        if (channelEditDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f20913do = null;
        channelEditDialog.mToolbar = null;
        channelEditDialog.channelView = null;
    }

    @UiThread
    public ChannelEditDialog_ViewBinding(ChannelEditDialog channelEditDialog, View view) {
        this.f20913do = channelEditDialog;
        channelEditDialog.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        channelEditDialog.channelView = (ChannelView) Cnew.m10373case(view, R.id.arg_res_0x7f0900ea, "field 'channelView'", ChannelView.class);
    }
}
