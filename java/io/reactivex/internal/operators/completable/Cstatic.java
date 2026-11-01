package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.completable.static, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cstatic extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25442do;

    /* renamed from: if, reason: not valid java name */
    public final Ctry f25443if;

    /* renamed from: io.reactivex.internal.operators.completable.static$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements CompletableObserver, Disposable, Runnable {
        private static final long serialVersionUID = 8571289934935992137L;
        public final CompletableObserver downstream;
        public Throwable error;
        public final Ctry scheduler;

        public Cdo(CompletableObserver completableObserver, Ctry ctry) {
            this.downstream = completableObserver;
            this.scheduler = ctry;
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
            io.reactivex.internal.disposables.Cdo.replace(this, this.scheduler.mo29697new(this));
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.error = th;
            io.reactivex.internal.disposables.Cdo.replace(this, this.scheduler.mo29697new(this));
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
            if (th == null) {
                this.downstream.onComplete();
            } else {
                this.error = null;
                this.downstream.onError(th);
            }
        }
    }

    public Cstatic(CompletableSource completableSource, Ctry ctry) {
        this.f25442do = completableSource;
        this.f25443if = ctry;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25442do.subscribe(new Cdo(completableObserver, this.f25443if));
    }
}
