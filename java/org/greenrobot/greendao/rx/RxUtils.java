package org.greenrobot.greendao.rx;

import java.util.concurrent.Callable;
import org.greenrobot.greendao.annotation.apihint.Internal;
import rx.Observable;
import rx.functions.Func0;

@Internal
/* loaded from: classes3.dex */
class RxUtils {
    @Internal
    public static <T> Observable<T> fromCallable(final Callable<T> callable) {
        return Observable.a0(new Func0<Observable<T>>() { // from class: org.greenrobot.greendao.rx.RxUtils.1
            @Override // rx.functions.Func0, java.util.concurrent.Callable
            public Observable<T> call() {
                try {
                    return Observable.u1(callable.call());
                } catch (Exception e) {
                    return Observable.C0(e);
                }
            }
        });
    }
}
