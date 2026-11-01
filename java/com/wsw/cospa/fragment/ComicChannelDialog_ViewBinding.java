package com.wsw.cospa.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.cheng.channel.ChannelView;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class ComicChannelDialog_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private ComicChannelDialog f22210do;

    @UiThread
    public ComicChannelDialog_ViewBinding(ComicChannelDialog comicChannelDialog) {
        this(comicChannelDialog, comicChannelDialog.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicChannelDialog comicChannelDialog = this.f22210do;
        if (comicChannelDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f22210do = null;
        comicChannelDialog.channelView = null;
    }

    @UiThread
    public ComicChannelDialog_ViewBinding(ComicChannelDialog comicChannelDialog, View view) {
        this.f22210do = comicChannelDialog;
        comicChannelDialog.channelView = (ChannelView) Cnew.m10373case(view, R.id.arg_res_0x7f0900ea, "field 'channelView'", ChannelView.class);
    }
}
