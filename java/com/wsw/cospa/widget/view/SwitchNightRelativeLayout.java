package com.wsw.cospa.widget.view;

import android.content.Context;
import android.support.v4.j10;
import android.support.v4.v72;
import android.support.v4.w21;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class SwitchNightRelativeLayout extends RelativeLayout {
    private Context mContext;
    private ImageView mImageView;
    private View view;

    public SwitchNightRelativeLayout(Context context) {
        this(context, null);
    }

    public void setVisibility(int i, boolean z) {
        int i2 = !z ? R.mipmap.arg_res_0x7f0e0008 : R.mipmap.arg_res_0x7f0e0007;
        if (i == 0) {
            super.setVisibility(0);
            return;
        }
        if (i == 4) {
            super.setVisibility(4);
            return;
        }
        if (i != 8) {
            return;
        }
        super.setVisibility(0);
        AnimationSet animationSet = new AnimationSet(true);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, j10.m3663this(this.mContext) / 2, 0.0f);
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, z ? w21.I1 : 0, 1, 0.5f, 1, 0.5f);
        animationSet.addAnimation(alphaAnimation);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(rotateAnimation);
        alphaAnimation.setDuration(300L);
        translateAnimation.setDuration(300L);
        rotateAnimation.setStartOffset(300L);
        rotateAnimation.setDuration(1000L);
        this.mImageView.setImageResource(i2);
        animationSet.setAnimationListener(new Animation.AnimationListener() { // from class: com.wsw.cospa.widget.view.SwitchNightRelativeLayout.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                SwitchNightRelativeLayout.super.setVisibility(8);
                v72.m8769if("切换成功");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        this.mImageView.startAnimation(animationSet);
    }

    public SwitchNightRelativeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SwitchNightRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mContext = context;
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.arg_res_0x7f0c00a1, (ViewGroup) null);
        this.view = viewInflate;
        this.mImageView = (ImageView) viewInflate.findViewById(R.id.arg_res_0x7f09048b);
        addView(this.view);
    }
}
