package com.wsw.cospa.widget.swipe;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;

/* loaded from: classes2.dex */
public class SwipeBackActivity extends AppCompatActivity implements SwipeBackActivityBase {
    private SwipeBackActivityHelper mHelper;

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public View findViewById(int i) {
        SwipeBackActivityHelper swipeBackActivityHelper;
        View viewFindViewById = super.findViewById(i);
        return (viewFindViewById != null || (swipeBackActivityHelper = this.mHelper) == null) ? viewFindViewById : swipeBackActivityHelper.findViewById(i);
    }

    @Override // com.wsw.cospa.widget.swipe.SwipeBackActivityBase
    public SwipeBackLayout getSwipeBackLayout() {
        return this.mHelper.getSwipeBackLayout();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SwipeBackActivityHelper swipeBackActivityHelper = new SwipeBackActivityHelper(this);
        this.mHelper = swipeBackActivityHelper;
        swipeBackActivityHelper.onActivityCreate();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        this.mHelper.onPostCreate();
    }

    @Override // com.wsw.cospa.widget.swipe.SwipeBackActivityBase
    public void scrollToFinishActivity() {
        Utils.convertActivityToTranslucent(this);
        getSwipeBackLayout().scrollToFinishActivity();
    }

    @Override // com.wsw.cospa.widget.swipe.SwipeBackActivityBase
    public void setSwipeBackEnable(boolean z) {
        getSwipeBackLayout().setEnableGesture(z);
    }
}
