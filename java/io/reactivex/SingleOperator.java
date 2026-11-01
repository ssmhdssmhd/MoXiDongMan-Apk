package io.reactivex;

import android.support.v4.b41;

/* loaded from: classes3.dex */
public interface SingleOperator<Downstream, Upstream> {
    @b41
    SingleObserver<? super Upstream> apply(@b41 SingleObserver<? super Downstream> singleObserver) throws Exception;
}
