package com.wsw.cospa.activity;

import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class SourceDebugActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private SourceDebugActivity f21361do;

    @UiThread
    public SourceDebugActivity_ViewBinding(SourceDebugActivity sourceDebugActivity) {
        this(sourceDebugActivity, sourceDebugActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SourceDebugActivity sourceDebugActivity = this.f21361do;
        if (sourceDebugActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21361do = null;
        sourceDebugActivity.mToolbar = null;
        sourceDebugActivity.tvContent = null;
        sourceDebugActivity.refreshLayout = null;
        sourceDebugActivity.searchView = null;
        sourceDebugActivity.mScrollView = null;
    }

    @UiThread
    public SourceDebugActivity_ViewBinding(SourceDebugActivity sourceDebugActivity, View view) {
        this.f21361do = sourceDebugActivity;
        sourceDebugActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        sourceDebugActivity.tvContent = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090470, "field 'tvContent'", TextView.class);
        sourceDebugActivity.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
        sourceDebugActivity.searchView = (SearchView) Cnew.m10373case(view, R.id.arg_res_0x7f090389, "field 'searchView'", SearchView.class);
        sourceDebugActivity.mScrollView = (ScrollView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a7, "field 'mScrollView'", ScrollView.class);
    }
}
