package org.greenrobot.greendao.rx;

import java.util.concurrent.Callable;
import org.greenrobot.greendao.annotation.apihint.Experimental;
import org.greenrobot.greendao.annotation.apihint.Internal;
import rx.Cif;
import rx.Observable;

@Internal
/* loaded from: classes3.dex */
class RxBase {
    public final Cif scheduler;

    public RxBase() {
        this.scheduler = null;
    }

    @Experimental
    public Cif getScheduler() {
        return this.scheduler;
    }

    public <R> Observable<R> wrap(Callable<R> callable) {
        return wrap(RxUtils.fromCallable(callable));
    }

    public <R> Observable<R> wrap(Observable<R> observable) {
        Cif cif = this.scheduler;
        return cif != null ? observable.e4(cif) : observable;
    }

    @Experimental
    public RxBase(Cif cif) {
        this.scheduler = cif;
    }
}
