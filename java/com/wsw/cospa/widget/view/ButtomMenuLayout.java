package com.wsw.cospa.widget.view;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.support.v4.j10;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class ButtomMenuLayout extends RelativeLayout implements View.OnClickListener {
    private static final int ANIMATION_TIME = 300;
    private boolean isShow;
    private LinearLayout llSeekProgress;
    private LinearLayout mButtomLayout;
    private String mChapterUrl;
    private Toolbar mTopLayout;
    private View mTopView;
    private TextView tvChapterUrl;
    private TextView tvSaveBook;

    public ButtomMenuLayout(Context context) {
        this(context, null);
    }

    public void initChapterUrl(boolean z) {
        if (z) {
            this.tvChapterUrl.setVisibility(0);
        } else {
            this.tvChapterUrl.setVisibility(8);
        }
    }

    public void initData(String str) {
        try {
            ActionBar supportActionBar = ((AppCompatActivity) getContext()).getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setDisplayHomeAsUpEnabled(true);
                supportActionBar.setDisplayShowTitleEnabled(true);
                supportActionBar.setTitle(str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void initSaveBookText(boolean z) {
        if (z) {
            this.tvSaveBook.setVisibility(0);
        } else {
            this.tvSaveBook.setVisibility(8);
        }
    }

    public void initSkipChapter(boolean z) {
        if (z) {
            this.llSeekProgress.setVisibility(0);
        } else {
            this.llSeekProgress.setVisibility(8);
        }
    }

    public boolean isShow() {
        return this.isShow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.arg_res_0x7f09046a && !TextUtils.isEmpty(this.mChapterUrl)) {
            getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.mChapterUrl)));
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        View childAt = getChildAt(0);
        this.mTopView = childAt;
        this.mTopLayout = (Toolbar) childAt.findViewById(R.id.arg_res_0x7f0902ab);
        this.tvChapterUrl = (TextView) this.mTopView.findViewById(R.id.arg_res_0x7f09046a);
        this.tvSaveBook = (TextView) this.mTopView.findViewById(R.id.arg_res_0x7f0904a9);
        this.mButtomLayout = (LinearLayout) getChildAt(1);
        this.llSeekProgress = (LinearLayout) findViewById(R.id.arg_res_0x7f09028b);
        this.mTopLayout.setBackgroundColor(getContext().getResources().getColor(R.color.arg_res_0x7f060141));
        this.tvChapterUrl.setOnClickListener(this);
        ((AppCompatActivity) getContext()).setSupportActionBar(this.mTopLayout);
        ActionBar supportActionBar = ((AppCompatActivity) getContext()).getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowTitleEnabled(true);
        }
        int iM3650class = Build.VERSION.SDK_INT >= 19 ? j10.m3650class() : 0;
        Toolbar toolbar = this.mTopLayout;
        toolbar.setPadding(toolbar.getPaddingLeft(), this.mTopLayout.getPaddingTop() + iM3650class, this.mTopLayout.getPaddingRight(), this.mTopLayout.getPaddingBottom());
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i == 0) {
            super.setVisibility(0);
            AnimationSet animationSet = new AnimationSet(true);
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, -j10.m3660new(getContext(), 80.0f), 0.0f);
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            animationSet.addAnimation(translateAnimation);
            animationSet.addAnimation(alphaAnimation);
            animationSet.setDuration(300L);
            this.mTopView.startAnimation(animationSet);
            AnimationSet animationSet2 = new AnimationSet(true);
            TranslateAnimation translateAnimation2 = new TranslateAnimation(0.0f, 0.0f, j10.m3660new(getContext(), 90.0f), 0.0f);
            AlphaAnimation alphaAnimation2 = new AlphaAnimation(0.0f, 1.0f);
            animationSet2.addAnimation(translateAnimation2);
            animationSet2.addAnimation(alphaAnimation2);
            animationSet2.setDuration(300L);
            this.mButtomLayout.startAnimation(animationSet2);
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
        AnimationSet animationSet3 = new AnimationSet(true);
        TranslateAnimation translateAnimation3 = new TranslateAnimation(0.0f, 0.0f, 0.0f, -j10.m3660new(getContext(), 80.0f));
        AlphaAnimation alphaAnimation3 = new AlphaAnimation(1.0f, 0.0f);
        animationSet3.addAnimation(translateAnimation3);
        animationSet3.addAnimation(alphaAnimation3);
        animationSet3.setDuration(300L);
        animationSet3.setAnimationListener(new Animation.AnimationListener() { // from class: com.wsw.cospa.widget.view.ButtomMenuLayout.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        this.mTopView.startAnimation(animationSet3);
        AnimationSet animationSet4 = new AnimationSet(true);
        TranslateAnimation translateAnimation4 = new TranslateAnimation(0.0f, 0.0f, 0.0f, j10.m3660new(getContext(), 90.0f));
        AlphaAnimation alphaAnimation4 = new AlphaAnimation(1.0f, 0.0f);
        animationSet4.addAnimation(translateAnimation4);
        animationSet4.addAnimation(alphaAnimation4);
        animationSet4.setDuration(300L);
        this.mButtomLayout.startAnimation(animationSet4);
        animationSet4.setAnimationListener(new Animation.AnimationListener() { // from class: com.wsw.cospa.widget.view.ButtomMenuLayout.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                ButtomMenuLayout.super.setVisibility(8);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        this.isShow = false;
    }

    public void updateChapterUrl(String str) {
        this.tvChapterUrl.setText(str);
        this.mChapterUrl = str;
    }

    public ButtomMenuLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ButtomMenuLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isShow = false;
    }
}
