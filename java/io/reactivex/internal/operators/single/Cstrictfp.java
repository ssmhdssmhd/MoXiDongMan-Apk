package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import io.reactivex.Ctry;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.single.strictfp, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cstrictfp<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27237do;

    /* renamed from: if, reason: not valid java name */
    public final Ctry f27238if;

    /* renamed from: io.reactivex.internal.operators.single.strictfp$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable, Runnable {
        private static final long serialVersionUID = 3528003840217436037L;
        public final SingleObserver<? super T> downstream;
        public Throwable error;
        public final Ctry scheduler;
        public T value;

        public Cdo(SingleObserver<? super T> singleObserver, Ctry ctry) {
            this.downstream = singleObserver;
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

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.error = th;
            io.reactivex.internal.disposables.Cdo.replace(this, this.scheduler.mo29697new(this));
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.value = t;
            io.reactivex.internal.disposables.Cdo.replace(this, this.scheduler.mo29697new(this));
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.error;
            if (th != null) {
                this.downstream.onError(th);
            } else {
                this.downstream.onSuccess(this.value);
            }
        }
    }

    public Cstrictfp(SingleSource<T> singleSource, Ctry ctry) {
        this.f27237do = singleSource;
        this.f27238if = ctry;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27237do.subscribe(new Cdo(singleObserver, this.f27238if));
    }
}
