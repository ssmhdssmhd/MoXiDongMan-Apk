package com.wsw.cospa.widget.swipe;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.swipe.SwipeBackLayout;

/* loaded from: classes2.dex */
public class SwipeBackActivityHelper {
    private Activity mActivity;
    private SwipeBackLayout mSwipeBackLayout;

    public SwipeBackActivityHelper(Activity activity) {
        this.mActivity = activity;
    }

    public View findViewById(int i) {
        SwipeBackLayout swipeBackLayout = this.mSwipeBackLayout;
        if (swipeBackLayout != null) {
            return swipeBackLayout.findViewById(i);
        }
        return null;
    }

    public SwipeBackLayout getSwipeBackLayout() {
        return this.mSwipeBackLayout;
    }

    public void onActivityCreate() {
        this.mActivity.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.mActivity.getWindow().getDecorView().setBackgroundDrawable(null);
        SwipeBackLayout swipeBackLayout = (SwipeBackLayout) LayoutInflater.from(this.mActivity).inflate(R.layout.arg_res_0x7f0c0118, (ViewGroup) null);
        this.mSwipeBackLayout = swipeBackLayout;
        swipeBackLayout.addSwipeListener(new SwipeBackLayout.SwipeListener() { // from class: com.wsw.cospa.widget.swipe.SwipeBackActivityHelper.1
            @Override // com.wsw.cospa.widget.swipe.SwipeBackLayout.SwipeListener
            public void onEdgeTouch(int i) {
                Utils.convertActivityToTranslucent(SwipeBackActivityHelper.this.mActivity);
            }

            @Override // com.wsw.cospa.widget.swipe.SwipeBackLayout.SwipeListener
            public void onScrollOverThreshold() {
            }

            @Override // com.wsw.cospa.widget.swipe.SwipeBackLayout.SwipeListener
            public void onScrollStateChange(int i, float f) {
            }
        });
    }

    public void onPostCreate() {
        this.mSwipeBackLayout.attachToActivity(this.mActivity);
    }
}
