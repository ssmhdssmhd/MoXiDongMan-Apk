package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.completable.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cgoto extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25407do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f25408for;

    /* renamed from: if, reason: not valid java name */
    public final long f25409if;

    /* renamed from: new, reason: not valid java name */
    public final Ctry f25410new;

    /* renamed from: try, reason: not valid java name */
    public final boolean f25411try;

    /* renamed from: io.reactivex.internal.operators.completable.goto$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements CompletableObserver, Runnable, Disposable {
        private static final long serialVersionUID = 465972761105851022L;
        public final long delay;
        public final boolean delayError;
        public final CompletableObserver downstream;
        public Throwable error;
        public final Ctry scheduler;
        public final TimeUnit unit;

        public Cdo(CompletableObserver completableObserver, long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
            this.downstream = completableObserver;
            this.delay = j;
            this.unit = timeUnit;
            this.scheduler = ctry;
            this.delayError = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            io.reactivex.internal.disposables.Cdo.replace(this, this.scheduler.mo29361try(this, this.delay, this.unit));
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.error = th;
            io.reactivex.internal.disposables.Cdo.replace(this, this.scheduler.mo29361try(this, this.delayError ? this.delay : 0L, this.unit));
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.error;
            this.error = null;
            if (th != null) {
                this.downstream.onError(th);
            } else {
                this.downstream.onComplete();
            }
        }
    }

    public Cgoto(CompletableSource completableSource, long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        this.f25407do = completableSource;
        this.f25409if = j;
        this.f25408for = timeUnit;
        this.f25410new = ctry;
        this.f25411try = z;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25407do.subscribe(new Cdo(completableObserver, this.f25409if, this.f25408for, this.f25410new, this.f25411try));
    }
}
