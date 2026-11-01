package com.scwang.smartrefresh.layout.api;

import android.animation.ValueAnimator;
import android.support.v4.qm1;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public interface RefreshKernel {
    ValueAnimator animSpinner(int i);

    RefreshKernel finishTwoLevel();

    @NonNull
    RefreshContent getRefreshContent();

    @NonNull
    RefreshLayout getRefreshLayout();

    RefreshKernel moveSpinner(int i, boolean z);

    RefreshKernel requestDefaultTranslationContentFor(@NonNull RefreshInternal refreshInternal, boolean z);

    RefreshKernel requestDrawBackgroundFor(@NonNull RefreshInternal refreshInternal, int i);

    RefreshKernel requestFloorDuration(int i);

    RefreshKernel requestNeedTouchEventFor(@NonNull RefreshInternal refreshInternal, boolean z);

    RefreshKernel requestRemeasureHeightFor(@NonNull RefreshInternal refreshInternal);

    RefreshKernel setState(@NonNull qm1 qm1Var);

    RefreshKernel startTwoLevel(boolean z);
}
