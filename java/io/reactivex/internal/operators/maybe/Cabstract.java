package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Cif;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import java.util.concurrent.Callable;

/* renamed from: io.reactivex.internal.operators.maybe.abstract, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cabstract<T> extends fy0<T> implements Callable<T> {

    /* renamed from: do, reason: not valid java name */
    public final Action f26085do;

    public Cabstract(Action action) {
        this.f26085do = action;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        this.f26085do.run();
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
            this.f26085do.run();
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
