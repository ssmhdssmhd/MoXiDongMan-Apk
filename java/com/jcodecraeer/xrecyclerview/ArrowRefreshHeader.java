package com.jcodecraeer.xrecyclerview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.jcodecraeer.xrecyclerview.progressindicator.AVLoadingIndicatorView;
import java.util.Date;

/* loaded from: classes2.dex */
public class ArrowRefreshHeader extends LinearLayout implements BaseRefreshHeader {

    /* renamed from: const, reason: not valid java name */
    private static final String f18191const = "XR_REFRESH_KEY";

    /* renamed from: final, reason: not valid java name */
    private static final String f18192final = "XR_REFRESH_TIME_KEY";

    /* renamed from: super, reason: not valid java name */
    private static final int f18193super = 180;

    /* renamed from: break, reason: not valid java name */
    public int f18194break;

    /* renamed from: case, reason: not valid java name */
    private TextView f18195case;

    /* renamed from: catch, reason: not valid java name */
    private AVLoadingIndicatorView f18196catch;

    /* renamed from: class, reason: not valid java name */
    private String f18197class;

    /* renamed from: do, reason: not valid java name */
    private LinearLayout f18198do;

    /* renamed from: else, reason: not valid java name */
    private LinearLayout f18199else;

    /* renamed from: for, reason: not valid java name */
    private SimpleViewSwitcher f18200for;

    /* renamed from: goto, reason: not valid java name */
    private Animation f18201goto;

    /* renamed from: if, reason: not valid java name */
    private ImageView f18202if;

    /* renamed from: new, reason: not valid java name */
    private TextView f18203new;

    /* renamed from: this, reason: not valid java name */
    private Animation f18204this;

    /* renamed from: try, reason: not valid java name */
    private int f18205try;

    /* renamed from: com.jcodecraeer.xrecyclerview.ArrowRefreshHeader$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrowRefreshHeader.this.m22778try();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.ArrowRefreshHeader$for, reason: invalid class name */
    public class Cfor implements ValueAnimator.AnimatorUpdateListener {
        public Cfor() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ArrowRefreshHeader.this.setVisibleHeight(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.ArrowRefreshHeader$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrowRefreshHeader.this.setState(0);
        }
    }

    public ArrowRefreshHeader(Context context) {
        super(context);
        this.f18205try = 0;
        this.f18197class = null;
        m22776new();
    }

    /* renamed from: case, reason: not valid java name */
    private void m22772case(long j) {
        String str = this.f18197class;
        if (str == null) {
            str = f18191const;
        }
        getContext().getSharedPreferences(str, 32768).edit().putLong(f18192final, j).commit();
    }

    /* renamed from: else, reason: not valid java name */
    private void m22773else(int i) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(getVisibleHeight(), i);
        valueAnimatorOfInt.setDuration(300L).start();
        valueAnimatorOfInt.addUpdateListener(new Cfor());
        valueAnimatorOfInt.start();
    }

    /* renamed from: for, reason: not valid java name */
    public static String m22774for(Date date) {
        return m22775if(date.getTime());
    }

    private long getLastRefreshTime() {
        String str = this.f18197class;
        if (str == null) {
            str = f18191const;
        }
        return getContext().getSharedPreferences(str, 32768).getLong(f18192final, new Date().getTime());
    }

    /* renamed from: if, reason: not valid java name */
    public static String m22775if(long j) {
        int iCurrentTimeMillis = (int) ((System.currentTimeMillis() - j) / 1000);
        if (iCurrentTimeMillis == 0) {
            return "刚刚";
        }
        if (iCurrentTimeMillis > 0 && iCurrentTimeMillis < 60) {
            return iCurrentTimeMillis + "秒前";
        }
        if (iCurrentTimeMillis >= 60 && iCurrentTimeMillis < 3600) {
            return Math.max(iCurrentTimeMillis / 60, 1) + "分钟前";
        }
        if (iCurrentTimeMillis >= 3600 && iCurrentTimeMillis < 86400) {
            return (iCurrentTimeMillis / 3600) + "小时前";
        }
        if (iCurrentTimeMillis >= 86400 && iCurrentTimeMillis < 2592000) {
            return (iCurrentTimeMillis / 86400) + "天前";
        }
        if (iCurrentTimeMillis < 2592000 || iCurrentTimeMillis >= 31104000) {
            return (iCurrentTimeMillis / 31104000) + "年前";
        }
        return (iCurrentTimeMillis / 2592000) + "月前";
    }

    /* renamed from: new, reason: not valid java name */
    private void m22776new() {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(getContext()).inflate(R.layout.listview_header, (ViewGroup) null);
        this.f18198do = linearLayout;
        this.f18199else = (LinearLayout) linearLayout.findViewById(R.id.header_refresh_time_container);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 0, 0, 0);
        setLayoutParams(layoutParams);
        setPadding(0, 0, 0, 0);
        addView(this.f18198do, new LinearLayout.LayoutParams(-1, 0));
        setGravity(80);
        this.f18202if = (ImageView) findViewById(R.id.listview_header_arrow);
        this.f18203new = (TextView) findViewById(R.id.refresh_status_textview);
        this.f18200for = (SimpleViewSwitcher) findViewById(R.id.listview_header_progressbar);
        AVLoadingIndicatorView aVLoadingIndicatorView = new AVLoadingIndicatorView(getContext());
        this.f18196catch = aVLoadingIndicatorView;
        aVLoadingIndicatorView.setIndicatorColor(-4868683);
        this.f18196catch.setIndicatorId(22);
        SimpleViewSwitcher simpleViewSwitcher = this.f18200for;
        if (simpleViewSwitcher != null) {
            simpleViewSwitcher.setView(this.f18196catch);
        }
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -180.0f, 1, 0.5f, 1, 0.5f);
        this.f18201goto = rotateAnimation;
        rotateAnimation.setDuration(180L);
        this.f18201goto.setFillAfter(true);
        RotateAnimation rotateAnimation2 = new RotateAnimation(-180.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        this.f18204this = rotateAnimation2;
        rotateAnimation2.setDuration(180L);
        this.f18204this.setFillAfter(true);
        this.f18195case = (TextView) findViewById(R.id.last_refresh_time);
        measure(-2, -2);
        this.f18194break = getMeasuredHeight();
    }

    /* renamed from: do, reason: not valid java name */
    public void m22777do() {
        this.f18200for = null;
        AVLoadingIndicatorView aVLoadingIndicatorView = this.f18196catch;
        if (aVLoadingIndicatorView != null) {
            aVLoadingIndicatorView.m22832for();
            this.f18196catch = null;
        }
        Animation animation = this.f18201goto;
        if (animation != null) {
            animation.cancel();
            this.f18201goto = null;
        }
        Animation animation2 = this.f18204this;
        if (animation2 != null) {
            animation2.cancel();
            this.f18204this = null;
        }
    }

    public int getState() {
        return this.f18205try;
    }

    public int getVisibleHeight() {
        return ((LinearLayout.LayoutParams) this.f18198do.getLayoutParams()).height;
    }

    @Override // com.jcodecraeer.xrecyclerview.BaseRefreshHeader
    public void onMove(float f) {
        if (getVisibleHeight() > 0 || f > 0.0f) {
            setVisibleHeight(((int) f) + getVisibleHeight());
            if (this.f18205try <= 1) {
                if (getVisibleHeight() > this.f18194break) {
                    setState(1);
                } else {
                    setState(0);
                }
            }
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.BaseRefreshHeader
    public void refreshComplete() {
        this.f18195case.setText(m22775if(getLastRefreshTime()));
        m22772case(System.currentTimeMillis());
        setState(3);
        new Handler().postDelayed(new Cdo(), 200L);
    }

    @Override // com.jcodecraeer.xrecyclerview.BaseRefreshHeader
    public boolean releaseAction() {
        boolean z;
        getVisibleHeight();
        if (getVisibleHeight() <= this.f18194break || this.f18205try >= 2) {
            z = false;
        } else {
            setState(2);
            z = true;
        }
        if (this.f18205try != 2) {
            m22773else(0);
        }
        if (this.f18205try == 2) {
            m22773else(this.f18194break);
        }
        return z;
    }

    public void setArrowImageView(int i) {
        this.f18202if.setImageResource(i);
    }

    public void setProgressStyle(int i) {
        if (i == -1) {
            SimpleViewSwitcher simpleViewSwitcher = this.f18200for;
            if (simpleViewSwitcher != null) {
                simpleViewSwitcher.setView(new ProgressBar(getContext(), null, android.R.attr.progressBarStyle));
                return;
            }
            return;
        }
        AVLoadingIndicatorView aVLoadingIndicatorView = new AVLoadingIndicatorView(getContext());
        this.f18196catch = aVLoadingIndicatorView;
        aVLoadingIndicatorView.setIndicatorColor(-4868683);
        this.f18196catch.setIndicatorId(i);
        this.f18200for.setView(this.f18196catch);
    }

    public void setRefreshTimeVisible(boolean z) {
        LinearLayout linearLayout = this.f18199else;
        if (linearLayout != null) {
            linearLayout.setVisibility(z ? 0 : 8);
        }
    }

    public void setState(int i) {
        if (i == this.f18205try) {
            return;
        }
        if (i == 2) {
            this.f18202if.clearAnimation();
            this.f18202if.setVisibility(4);
            SimpleViewSwitcher simpleViewSwitcher = this.f18200for;
            if (simpleViewSwitcher != null) {
                simpleViewSwitcher.setVisibility(0);
            }
            m22773else(this.f18194break);
        } else if (i == 3) {
            this.f18202if.setVisibility(4);
            SimpleViewSwitcher simpleViewSwitcher2 = this.f18200for;
            if (simpleViewSwitcher2 != null) {
                simpleViewSwitcher2.setVisibility(4);
            }
        } else {
            this.f18202if.setVisibility(0);
            SimpleViewSwitcher simpleViewSwitcher3 = this.f18200for;
            if (simpleViewSwitcher3 != null) {
                simpleViewSwitcher3.setVisibility(4);
            }
        }
        this.f18195case.setText(m22775if(getLastRefreshTime()));
        if (i == 0) {
            if (this.f18205try == 1) {
                this.f18202if.startAnimation(this.f18204this);
            }
            if (this.f18205try == 2) {
                this.f18202if.clearAnimation();
            }
            this.f18203new.setText(R.string.listview_header_hint_normal);
        } else if (i != 1) {
            if (i == 2) {
                this.f18203new.setText(R.string.refreshing);
            } else if (i == 3) {
                this.f18203new.setText(R.string.refresh_done);
            }
        } else if (this.f18205try != 1) {
            this.f18202if.clearAnimation();
            this.f18202if.startAnimation(this.f18201goto);
            this.f18203new.setText(R.string.listview_header_hint_release);
        }
        this.f18205try = i;
    }

    public void setVisibleHeight(int i) {
        if (i < 0) {
            i = 0;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f18198do.getLayoutParams();
        layoutParams.height = i;
        this.f18198do.setLayoutParams(layoutParams);
    }

    public void setXrRefreshTimeKey(String str) {
        if (str != null) {
            this.f18197class = str;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m22778try() {
        m22773else(0);
        new Handler().postDelayed(new Cif(), 500L);
    }

    public ArrowRefreshHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18205try = 0;
        this.f18197class = null;
        m22776new();
    }
}
