package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class l<T> extends Cnew<T> implements Callable<T> {

    /* renamed from: do, reason: not valid java name */
    public final Callable<? extends T> f26690do;

    public l(Callable<? extends T> callable) {
        this.f26690do = callable;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        return (T) Cif.m29468else(this.f26690do.call(), "The callable returned a null value");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        io.reactivex.internal.observers.Cif cif = new io.reactivex.internal.observers.Cif(observer);
        observer.onSubscribe(cif);
        if (cif.isDisposed()) {
            return;
        }
        try {
            cif.complete(Cif.m29468else(this.f26690do.call(), "Callable returned null"));
        } catch (Throwable th) {
            t80.m7781if(th);
            if (cif.isDisposed()) {
                jp1.l(th);
            } else {
                observer.onError(th);
            }
        }
    }
}
