package com.wsw.cospa.fragment;

import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.flyco.tablayout.SlidingTabLayout;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class BookListFragment_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private BookListFragment f22166do;

    @UiThread
    public BookListFragment_ViewBinding(BookListFragment bookListFragment, View view) {
        this.f22166do = bookListFragment;
        bookListFragment.tabLayout = (SlidingTabLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09040f, "field 'tabLayout'", SlidingTabLayout.class);
        bookListFragment.mViewPager = (ViewPager) Cnew.m10373case(view, R.id.arg_res_0x7f0902ac, "field 'mViewPager'", ViewPager.class);
        bookListFragment.ivMoreChannel = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090244, "field 'ivMoreChannel'", RelativeLayout.class);
        bookListFragment.mLoadingRootView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902a1, "field 'mLoadingRootView'", RelativeLayout.class);
        bookListFragment.mIndicatorView = (AVLoadingIndicatorView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a2, "field 'mIndicatorView'", AVLoadingIndicatorView.class);
        bookListFragment.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        bookListFragment.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        bookListFragment.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookListFragment bookListFragment = this.f22166do;
        if (bookListFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f22166do = null;
        bookListFragment.tabLayout = null;
        bookListFragment.mViewPager = null;
        bookListFragment.ivMoreChannel = null;
        bookListFragment.mLoadingRootView = null;
        bookListFragment.mIndicatorView = null;
        bookListFragment.error_view = null;
        bookListFragment.tvErrorView = null;
        bookListFragment.tvRetry = null;
    }
}
