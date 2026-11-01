package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import io.reactivex.Ctry;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class b<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27123do;

    /* renamed from: if, reason: not valid java name */
    public final Ctry f27124if;

    /* renamed from: io.reactivex.internal.operators.single.b$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable, Runnable {
        private static final long serialVersionUID = 3256698449646456986L;
        public final SingleObserver<? super T> downstream;
        public Disposable ds;
        public final Ctry scheduler;

        public Cdo(SingleObserver<? super T> singleObserver, Ctry ctry) {
            this.downstream = singleObserver;
            this.scheduler = ctry;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            Disposable andSet = getAndSet(cdo);
            if (andSet != cdo) {
                this.ds = andSet;
                this.scheduler.mo29697new(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.downstream.onSuccess(t);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.ds.dispose();
        }
    }

    public b(SingleSource<T> singleSource, Ctry ctry) {
        this.f27123do = singleSource;
        this.f27124if = ctry;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27123do.subscribe(new Cdo(singleObserver, this.f27124if));
    }
}
