package io.reactivex.internal.operators.observable;

import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.internal.fuseable.ScalarCallable;
import io.reactivex.internal.operators.observable.b1;

/* loaded from: classes3.dex */
public final class x<T> extends Cnew<T> implements ScalarCallable<T> {

    /* renamed from: do, reason: not valid java name */
    private final T f26994do;

    public x(T t) {
        this.f26994do = t;
    }

    @Override // io.reactivex.internal.fuseable.ScalarCallable, java.util.concurrent.Callable
    public T call() {
        return this.f26994do;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        b1.Cdo cdo = new b1.Cdo(observer, this.f26994do);
        observer.onSubscribe(cdo);
        cdo.run();
    }
}
