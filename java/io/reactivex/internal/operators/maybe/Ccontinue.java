package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Cif;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.Callable;

/* renamed from: io.reactivex.internal.operators.maybe.continue, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccontinue<T> extends fy0<T> implements Callable<T> {

    /* renamed from: do, reason: not valid java name */
    public final Callable<? extends T> f26107do;

    public Ccontinue(Callable<? extends T> callable) {
        this.f26107do = callable;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        return this.f26107do.call();
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        Disposable disposableM29367if = Cif.m29367if();
        maybeObserver.onSubscribe(disposableM29367if);
        if (disposableM29367if.isDisposed()) {
            return;
        }
        try {
            T tCall = this.f26107do.call();
            if (disposableM29367if.isDisposed()) {
                return;
            }
            if (tCall == null) {
                maybeObserver.onComplete();
            } else {
                maybeObserver.onSuccess(tCall);
            }
        } catch (Throwable th) {
            t80.m7781if(th);
            if (disposableM29367if.isDisposed()) {
                jp1.l(th);
            } else {
                maybeObserver.onError(th);
            }
        }
    }
}
