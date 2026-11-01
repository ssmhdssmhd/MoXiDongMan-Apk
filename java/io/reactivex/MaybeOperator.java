package io.reactivex;

import android.support.v4.b41;

/* loaded from: classes3.dex */
public interface MaybeOperator<Downstream, Upstream> {
    @b41
    MaybeObserver<? super Upstream> apply(@b41 MaybeObserver<? super Downstream> maybeObserver) throws Exception;
}
