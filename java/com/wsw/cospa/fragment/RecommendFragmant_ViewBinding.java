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
public class RecommendFragmant_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private RecommendFragmant f22269do;

    @UiThread
    public RecommendFragmant_ViewBinding(RecommendFragmant recommendFragmant, View view) {
        this.f22269do = recommendFragmant;
        recommendFragmant.tabLayout = (SlidingTabLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09040f, "field 'tabLayout'", SlidingTabLayout.class);
        recommendFragmant.mViewPager = (ViewPager) Cnew.m10373case(view, R.id.arg_res_0x7f0902ac, "field 'mViewPager'", ViewPager.class);
        recommendFragmant.ivMoreChannel = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090244, "field 'ivMoreChannel'", RelativeLayout.class);
        recommendFragmant.mLoadingRootView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902a1, "field 'mLoadingRootView'", RelativeLayout.class);
        recommendFragmant.mIndicatorView = (AVLoadingIndicatorView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a2, "field 'mIndicatorView'", AVLoadingIndicatorView.class);
        recommendFragmant.error_view = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09016a, "field 'error_view'", RelativeLayout.class);
        recommendFragmant.tvErrorView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09016b, "field 'tvErrorView'", TextView.class);
        recommendFragmant.tvRetry = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a7, "field 'tvRetry'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RecommendFragmant recommendFragmant = this.f22269do;
        if (recommendFragmant == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f22269do = null;
        recommendFragmant.tabLayout = null;
        recommendFragmant.mViewPager = null;
        recommendFragmant.ivMoreChannel = null;
        recommendFragmant.mLoadingRootView = null;
        recommendFragmant.mIndicatorView = null;
        recommendFragmant.error_view = null;
        recommendFragmant.tvErrorView = null;
        recommendFragmant.tvRetry = null;
    }
}
