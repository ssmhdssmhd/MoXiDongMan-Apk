package io.reactivex;

import android.support.v4.b41;

/* loaded from: classes3.dex */
public interface ObservableOperator<Downstream, Upstream> {
    @b41
    Observer<? super Upstream> apply(@b41 Observer<? super Downstream> observer) throws Exception;
}
