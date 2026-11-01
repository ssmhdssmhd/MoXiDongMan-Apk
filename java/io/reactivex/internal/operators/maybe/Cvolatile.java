package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Cif;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.Callable;

/* renamed from: io.reactivex.internal.operators.maybe.volatile, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cvolatile<T> extends fy0<T> implements Callable<T> {

    /* renamed from: do, reason: not valid java name */
    public final Runnable f26256do;

    public Cvolatile(Runnable runnable) {
        this.f26256do = runnable;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        this.f26256do.run();
        return null;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        Disposable disposableM29367if = Cif.m29367if();
        maybeObserver.onSubscribe(disposableM29367if);
        if (disposableM29367if.isDisposed()) {
            return;
        }
        try {
            this.f26256do.run();
            if (disposableM29367if.isDisposed()) {
                return;
            }
            maybeObserver.onComplete();
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
