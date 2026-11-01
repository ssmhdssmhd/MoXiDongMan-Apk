package com.scwang.smartrefresh.header.fungame;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.v4.i02;
import android.support.v4.qm1;
import android.support.v4.y02;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.scwang.smartrefresh.layout.api.RefreshContent;
import com.scwang.smartrefresh.layout.api.RefreshHeader;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;

@SuppressLint({"RestrictedApi"})
/* loaded from: classes2.dex */
public abstract class FunGameBase extends InternalAbstract implements RefreshHeader {

    /* renamed from: break, reason: not valid java name */
    public boolean f20296break;

    /* renamed from: case, reason: not valid java name */
    public int f20297case;

    /* renamed from: catch, reason: not valid java name */
    public qm1 f20298catch;

    /* renamed from: class, reason: not valid java name */
    public RefreshKernel f20299class;

    /* renamed from: const, reason: not valid java name */
    public RefreshContent f20300const;

    /* renamed from: else, reason: not valid java name */
    public float f20301else;

    /* renamed from: goto, reason: not valid java name */
    public boolean f20302goto;

    /* renamed from: new, reason: not valid java name */
    public int f20303new;

    /* renamed from: this, reason: not valid java name */
    public boolean f20304this;

    /* renamed from: try, reason: not valid java name */
    public int f20305try;

    public FunGameBase(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setMinimumHeight(i02.m3194new(100.0f));
        this.f20297case = getResources().getDisplayMetrics().heightPixels;
        this.f20654if = y02.f8077goto;
    }

    /* renamed from: do, reason: not valid java name */
    public abstract void mo24343do(float f, int i, int i2, int i3);

    /* renamed from: for, reason: not valid java name */
    public void m24344for() {
        if (this.f20296break) {
            return;
        }
        this.f20296break = true;
        RefreshContent refreshContent = this.f20299class.getRefreshContent();
        this.f20300const = refreshContent;
        View view = refreshContent.getView();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.topMargin += this.f20305try;
        view.setLayoutParams(marginLayoutParams);
    }

    /* renamed from: if, reason: not valid java name */
    public void m24345if() {
        if (!this.f20302goto) {
            this.f20299class.moveSpinner(0, true);
            return;
        }
        this.f20296break = false;
        if (this.f20301else != -1.0f) {
            onFinish(this.f20299class.getRefreshLayout(), this.f20304this);
            this.f20299class.setState(qm1.RefreshFinish);
            this.f20299class.animSpinner(0);
        } else {
            this.f20299class.moveSpinner(this.f20305try, true);
        }
        View view = this.f20300const.getView();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.topMargin -= this.f20305try;
        view.setLayoutParams(marginLayoutParams);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        this.f20304this = z;
        if (!this.f20302goto) {
            this.f20302goto = true;
            if (this.f20296break) {
                if (this.f20301else != -1.0f) {
                    return Integer.MAX_VALUE;
                }
                m24345if();
                onFinish(refreshLayout, z);
                return 0;
            }
        }
        return 0;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onInitialized(@NonNull RefreshKernel refreshKernel, int i, int i2) {
        this.f20299class = refreshKernel;
        this.f20305try = i;
        if (isInEditMode()) {
            return;
        }
        setTranslationY(this.f20303new - this.f20305try);
        refreshKernel.requestNeedTouchEventFor(this, true);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f20298catch == qm1.Refreshing || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onMoving(boolean z, float f, int i, int i2, int i3) {
        if (this.f20296break) {
            mo24343do(f, i, i2, i3);
        } else {
            this.f20303new = i;
            setTranslationY(i - this.f20305try);
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onStartAnimator(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        this.f20302goto = false;
        setTranslationY(0.0f);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.listener.OnStateChangedListener
    public void onStateChanged(@NonNull RefreshLayout refreshLayout, @NonNull qm1 qm1Var, @NonNull qm1 qm1Var2) {
        this.f20298catch = qm1Var2;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        qm1 qm1Var = this.f20298catch;
        if (qm1Var != qm1.Refreshing && qm1Var != qm1.RefreshFinish) {
            return super.onTouchEvent(motionEvent);
        }
        if (!this.f20296break) {
            m24344for();
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f20301else = motionEvent.getRawY();
            this.f20299class.moveSpinner(0, true);
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                float rawY = motionEvent.getRawY() - this.f20301else;
                if (rawY < 0.0f) {
                    this.f20299class.moveSpinner(1, false);
                    return true;
                }
                double d = this.f20305try * 2;
                double d2 = (this.f20297case * 2) / 3.0f;
                double d3 = rawY;
                Double.isNaN(d3);
                double dMax = Math.max(0.0d, d3 * 0.5d);
                Double.isNaN(d2);
                double dPow = 1.0d - Math.pow(100.0d, (-dMax) / d2);
                Double.isNaN(d);
                this.f20299class.moveSpinner(Math.max(1, (int) Math.min(d * dPow, dMax)), false);
                return true;
            }
            if (action != 3) {
                return true;
            }
        }
        m24345if();
        this.f20301else = -1.0f;
        if (!this.f20302goto) {
            return true;
        }
        this.f20299class.moveSpinner(this.f20305try, true);
        return true;
    }
}
