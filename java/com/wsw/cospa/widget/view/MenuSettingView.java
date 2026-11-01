package com.wsw.cospa.widget.view;

import android.content.Context;
import android.support.v4.j10;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class MenuSettingView extends RelativeLayout {
    private static final int ANIMATION_TIME = 300;
    private boolean isShow;
    public LinearLayout longClickMenuView;
    public SmartRefreshLayout refreshLayout;

    public MenuSettingView(Context context) {
        this(context, null);
        initView();
    }

    public void hideLongClickMenu(boolean z) {
        if (z) {
            this.longClickMenuView.setVisibility(8);
        } else {
            this.longClickMenuView.setVisibility(0);
        }
    }

    public void initView() {
    }

    public boolean isShow() {
        return this.isShow;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        SmartRefreshLayout smartRefreshLayout = (SmartRefreshLayout) getChildAt(0);
        this.refreshLayout = smartRefreshLayout;
        smartRefreshLayout.setEnableLoadMore(false);
        this.refreshLayout.setEnableAutoLoadMore(false);
        this.refreshLayout.setEnableRefresh(false);
        this.refreshLayout.setEnableOverScrollDrag(true);
        this.longClickMenuView = (LinearLayout) this.refreshLayout.findViewById(R.id.arg_res_0x7f0903fb);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = j10.m3656goto() / 2;
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i == 0) {
            super.setVisibility(0);
            AnimationSet animationSet = new AnimationSet(true);
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, j10.m3660new(getContext(), 300.0f), 0.0f);
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            animationSet.addAnimation(translateAnimation);
            animationSet.addAnimation(alphaAnimation);
            animationSet.setDuration(300L);
            startAnimation(animationSet);
            this.isShow = true;
            return;
        }
        if (i == 4) {
            super.setVisibility(4);
            return;
        }
        if (i != 8) {
            return;
        }
        super.setVisibility(8);
        AnimationSet animationSet2 = new AnimationSet(true);
        TranslateAnimation translateAnimation2 = new TranslateAnimation(0.0f, 0.0f, 0.0f, j10.m3660new(getContext(), 300.0f));
        AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
        animationSet2.addAnimation(translateAnimation2);
        animationSet2.addAnimation(alphaAnimation2);
        animationSet2.setDuration(300L);
        startAnimation(animationSet2);
        this.isShow = false;
    }

    public MenuSettingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        initView();
    }

    public MenuSettingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initView();
    }
}
