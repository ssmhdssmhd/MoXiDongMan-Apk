package com.scwang.smartrefresh.layout.listener;

import android.support.v4.qm1;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.scwang.smartrefresh.layout.api.RefreshLayout;

/* loaded from: classes2.dex */
public interface OnStateChangedListener {
    @RestrictTo({RestrictTo.Scope.LIBRARY, RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.SUBCLASSES})
    void onStateChanged(@NonNull RefreshLayout refreshLayout, @NonNull qm1 qm1Var, @NonNull qm1 qm1Var2);
}
