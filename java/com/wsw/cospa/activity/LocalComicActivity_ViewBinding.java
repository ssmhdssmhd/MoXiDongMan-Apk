package com.wsw.cospa.activity;

import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class LocalComicActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private LocalComicActivity f21186do;

    @UiThread
    public LocalComicActivity_ViewBinding(LocalComicActivity localComicActivity) {
        this(localComicActivity, localComicActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LocalComicActivity localComicActivity = this.f21186do;
        if (localComicActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21186do = null;
        localComicActivity.mToolbar = null;
        localComicActivity.mRecyclerView = null;
        localComicActivity.addComicView = null;
    }

    @UiThread
    public LocalComicActivity_ViewBinding(LocalComicActivity localComicActivity, View view) {
        this.f21186do = localComicActivity;
        localComicActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        localComicActivity.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", RecyclerView.class);
        localComicActivity.addComicView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090086, "field 'addComicView'", LinearLayout.class);
    }
}
