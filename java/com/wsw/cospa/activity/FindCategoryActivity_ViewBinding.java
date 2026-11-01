package com.wsw.cospa.activity;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.flyco.tablayout.SlidingTabLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class FindCategoryActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private FindCategoryActivity f21138do;

    @UiThread
    public FindCategoryActivity_ViewBinding(FindCategoryActivity findCategoryActivity) {
        this(findCategoryActivity, findCategoryActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FindCategoryActivity findCategoryActivity = this.f21138do;
        if (findCategoryActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f21138do = null;
        findCategoryActivity.tvTitle = null;
        findCategoryActivity.mToolbar = null;
        findCategoryActivity.mAppBarLayout = null;
        findCategoryActivity.tabLayout = null;
        findCategoryActivity.mViewPager = null;
    }

    @UiThread
    public FindCategoryActivity_ViewBinding(FindCategoryActivity findCategoryActivity, View view) {
        this.f21138do = findCategoryActivity;
        findCategoryActivity.tvTitle = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904be, "field 'tvTitle'", TextView.class);
        findCategoryActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        findCategoryActivity.mAppBarLayout = (AppBarLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090299, "field 'mAppBarLayout'", AppBarLayout.class);
        findCategoryActivity.tabLayout = (SlidingTabLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09040f, "field 'tabLayout'", SlidingTabLayout.class);
        findCategoryActivity.mViewPager = (ViewPager) Cnew.m10373case(view, R.id.arg_res_0x7f0902ac, "field 'mViewPager'", ViewPager.class);
    }
}
