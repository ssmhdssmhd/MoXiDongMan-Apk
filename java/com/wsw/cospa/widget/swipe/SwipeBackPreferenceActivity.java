package com.wsw.cospa.widget.swipe;

import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.view.View;

/* loaded from: classes2.dex */
public class SwipeBackPreferenceActivity extends PreferenceActivity implements SwipeBackActivityBase {
    private SwipeBackActivityHelper mHelper;

    @Override // android.app.Activity
    public View findViewById(int i) {
        SwipeBackActivityHelper swipeBackActivityHelper;
        View viewFindViewById = super.findViewById(i);
        return (viewFindViewById != null || (swipeBackActivityHelper = this.mHelper) == null) ? viewFindViewById : swipeBackActivityHelper.findViewById(i);
    }

    @Override // com.wsw.cospa.widget.swipe.SwipeBackActivityBase
    public SwipeBackLayout getSwipeBackLayout() {
        return this.mHelper.getSwipeBackLayout();
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SwipeBackActivityHelper swipeBackActivityHelper = new SwipeBackActivityHelper(this);
        this.mHelper = swipeBackActivityHelper;
        swipeBackActivityHelper.onActivityCreate();
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        this.mHelper.onPostCreate();
    }

    @Override // com.wsw.cospa.widget.swipe.SwipeBackActivityBase
    public void scrollToFinishActivity() {
        getSwipeBackLayout().scrollToFinishActivity();
    }

    @Override // com.wsw.cospa.widget.swipe.SwipeBackActivityBase
    public void setSwipeBackEnable(boolean z) {
        getSwipeBackLayout().setEnableGesture(z);
    }
}
