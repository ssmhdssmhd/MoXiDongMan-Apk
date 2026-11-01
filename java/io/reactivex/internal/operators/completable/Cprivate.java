package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.completable.private, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cprivate extends np {

    /* renamed from: do, reason: not valid java name */
    public final long f25437do;

    /* renamed from: for, reason: not valid java name */
    public final Ctry f25438for;

    /* renamed from: if, reason: not valid java name */
    public final TimeUnit f25439if;

    /* renamed from: io.reactivex.internal.operators.completable.private$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = 3167244060586201109L;
        public final CompletableObserver downstream;

        public Cdo(CompletableObserver completableObserver) {
            this.downstream = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // java.lang.Runnable
        public void run() {
            this.downstream.onComplete();
        }

        public void setFuture(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.replace(this, disposable);
        }
    }

    public Cprivate(long j, TimeUnit timeUnit, Ctry ctry) {
        this.f25437do = j;
        this.f25439if = timeUnit;
        this.f25438for = ctry;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        Cdo cdo = new Cdo(completableObserver);
        completableObserver.onSubscribe(cdo);
        cdo.setFuture(this.f25438for.mo29361try(cdo, this.f25437do, this.f25439if));
    }
}
