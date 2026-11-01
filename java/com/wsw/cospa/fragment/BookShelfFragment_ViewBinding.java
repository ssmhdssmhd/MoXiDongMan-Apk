package com.wsw.cospa.fragment;

import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.jcodecraeer.xrecyclerview.XRecyclerView;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class BookShelfFragment_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private BookShelfFragment f22201do;

    @UiThread
    public BookShelfFragment_ViewBinding(BookShelfFragment bookShelfFragment, View view) {
        this.f22201do = bookShelfFragment;
        bookShelfFragment.mRecyclerView = (XRecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", XRecyclerView.class);
        bookShelfFragment.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
        bookShelfFragment.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        bookShelfFragment.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        bookShelfFragment.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookShelfFragment bookShelfFragment = this.f22201do;
        if (bookShelfFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f22201do = null;
        bookShelfFragment.mRecyclerView = null;
        bookShelfFragment.refreshLayout = null;
        bookShelfFragment.error_view = null;
        bookShelfFragment.tvErrorView = null;
        bookShelfFragment.tvRetry = null;
    }
}
