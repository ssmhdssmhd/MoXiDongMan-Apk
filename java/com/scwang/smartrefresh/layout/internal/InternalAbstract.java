package com.scwang.smartrefresh.layout.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.v4.qm1;
import android.support.v4.y02;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.api.RefreshFooter;
import com.scwang.smartrefresh.layout.api.RefreshHeader;
import com.scwang.smartrefresh.layout.api.RefreshInternal;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.impl.RefreshFooterWrapper;
import com.scwang.smartrefresh.layout.impl.RefreshHeaderWrapper;

/* loaded from: classes2.dex */
public abstract class InternalAbstract extends RelativeLayout implements RefreshInternal {

    /* renamed from: do, reason: not valid java name */
    public View f20652do;

    /* renamed from: for, reason: not valid java name */
    public RefreshInternal f20653for;

    /* renamed from: if, reason: not valid java name */
    public y02 f20654if;

    /* JADX WARN: Multi-variable type inference failed */
    public InternalAbstract(@NonNull View view) {
        this(view, view instanceof RefreshInternal ? (RefreshInternal) view : null);
    }

    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return true;
        }
        return (obj instanceof RefreshInternal) && getView() == ((RefreshInternal) obj).getView();
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshInternal
    @NonNull
    public y02 getSpinnerStyle() {
        int i;
        y02 y02Var = this.f20654if;
        if (y02Var != null) {
            return y02Var;
        }
        RefreshInternal refreshInternal = this.f20653for;
        if (refreshInternal != null && refreshInternal != this) {
            return refreshInternal.getSpinnerStyle();
        }
        View view = this.f20652do;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof SmartRefreshLayout.Cconst) {
                y02 y02Var2 = ((SmartRefreshLayout.Cconst) layoutParams).f20532if;
                this.f20654if = y02Var2;
                if (y02Var2 != null) {
                    return y02Var2;
                }
            }
            if (layoutParams != null && ((i = layoutParams.height) == 0 || i == -1)) {
                for (y02 y02Var3 : y02.f8079this) {
                    if (y02Var3.f8082for) {
                        this.f20654if = y02Var3;
                        return y02Var3;
                    }
                }
            }
        }
        y02 y02Var4 = y02.f8078new;
        this.f20654if = y02Var4;
        return y02Var4;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshInternal
    @NonNull
    public View getView() {
        View view = this.f20652do;
        return view == null ? this : view;
    }

    public boolean isSupportHorizontalDrag() {
        RefreshInternal refreshInternal = this.f20653for;
        return (refreshInternal == null || refreshInternal == this || !refreshInternal.isSupportHorizontalDrag()) ? false : true;
    }

    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        RefreshInternal refreshInternal = this.f20653for;
        if (refreshInternal == null || refreshInternal == this) {
            return 0;
        }
        return refreshInternal.onFinish(refreshLayout, z);
    }

    public void onHorizontalDrag(float f, int i, int i2) {
        RefreshInternal refreshInternal = this.f20653for;
        if (refreshInternal == null || refreshInternal == this) {
            return;
        }
        refreshInternal.onHorizontalDrag(f, i, i2);
    }

    public void onInitialized(@NonNull RefreshKernel refreshKernel, int i, int i2) {
        RefreshInternal refreshInternal = this.f20653for;
        if (refreshInternal != null && refreshInternal != this) {
            refreshInternal.onInitialized(refreshKernel, i, i2);
            return;
        }
        View view = this.f20652do;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof SmartRefreshLayout.Cconst) {
                refreshKernel.requestDrawBackgroundFor(this, ((SmartRefreshLayout.Cconst) layoutParams).f20531do);
            }
        }
    }

    public void onMoving(boolean z, float f, int i, int i2, int i3) {
        RefreshInternal refreshInternal = this.f20653for;
        if (refreshInternal == null || refreshInternal == this) {
            return;
        }
        refreshInternal.onMoving(z, f, i, i2, i3);
    }

    public void onReleased(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        RefreshInternal refreshInternal = this.f20653for;
        if (refreshInternal == null || refreshInternal == this) {
            return;
        }
        refreshInternal.onReleased(refreshLayout, i, i2);
    }

    public void onStartAnimator(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        RefreshInternal refreshInternal = this.f20653for;
        if (refreshInternal == null || refreshInternal == this) {
            return;
        }
        refreshInternal.onStartAnimator(refreshLayout, i, i2);
    }

    public void onStateChanged(@NonNull RefreshLayout refreshLayout, @NonNull qm1 qm1Var, @NonNull qm1 qm1Var2) {
        RefreshInternal refreshInternal = this.f20653for;
        if (refreshInternal == null || refreshInternal == this) {
            return;
        }
        if ((this instanceof RefreshFooterWrapper) && (refreshInternal instanceof RefreshHeader)) {
            if (qm1Var.isFooter) {
                qm1Var = qm1Var.toHeader();
            }
            if (qm1Var2.isFooter) {
                qm1Var2 = qm1Var2.toHeader();
            }
        } else if ((this instanceof RefreshHeaderWrapper) && (refreshInternal instanceof RefreshFooter)) {
            if (qm1Var.isHeader) {
                qm1Var = qm1Var.toFooter();
            }
            if (qm1Var2.isHeader) {
                qm1Var2 = qm1Var2.toFooter();
            }
        }
        RefreshInternal refreshInternal2 = this.f20653for;
        if (refreshInternal2 != null) {
            refreshInternal2.onStateChanged(refreshLayout, qm1Var, qm1Var2);
        }
    }

    @SuppressLint({"RestrictedApi"})
    public boolean setNoMoreData(boolean z) {
        RefreshInternal refreshInternal = this.f20653for;
        return (refreshInternal instanceof RefreshFooter) && ((RefreshFooter) refreshInternal).setNoMoreData(z);
    }

    public void setPrimaryColors(@ColorInt int... iArr) {
        RefreshInternal refreshInternal = this.f20653for;
        if (refreshInternal == null || refreshInternal == this) {
            return;
        }
        refreshInternal.setPrimaryColors(iArr);
    }

    public InternalAbstract(@NonNull View view, @Nullable RefreshInternal refreshInternal) {
        super(view.getContext(), null, 0);
        this.f20652do = view;
        this.f20653for = refreshInternal;
        if ((this instanceof RefreshFooterWrapper) && (refreshInternal instanceof RefreshHeader) && refreshInternal.getSpinnerStyle() == y02.f8077goto) {
            refreshInternal.getView().setScaleY(-1.0f);
            return;
        }
        if (this instanceof RefreshHeaderWrapper) {
            RefreshInternal refreshInternal2 = this.f20653for;
            if ((refreshInternal2 instanceof RefreshFooter) && refreshInternal2.getSpinnerStyle() == y02.f8077goto) {
                refreshInternal.getView().setScaleY(-1.0f);
            }
        }
    }

    public InternalAbstract(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
