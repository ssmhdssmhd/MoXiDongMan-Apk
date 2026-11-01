package io.reactivex.internal.operators.single;

import android.support.v4.jp1;
import android.support.v4.jz1;
import io.reactivex.Ctry;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.single.implements, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cimplements<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27191do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f27192for;

    /* renamed from: if, reason: not valid java name */
    public final long f27193if;

    /* renamed from: new, reason: not valid java name */
    public final Ctry f27194new;

    /* renamed from: try, reason: not valid java name */
    public final SingleSource<? extends T> f27195try;

    /* renamed from: io.reactivex.internal.operators.single.implements$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements SingleObserver<T>, Runnable, Disposable {
        private static final long serialVersionUID = 37497744973048446L;
        public final SingleObserver<? super T> downstream;
        public final C0338do<T> fallback;
        public SingleSource<? extends T> other;
        public final AtomicReference<Disposable> task = new AtomicReference<>();
        public final long timeout;
        public final TimeUnit unit;

        /* renamed from: io.reactivex.internal.operators.single.implements$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0338do<T> extends AtomicReference<Disposable> implements SingleObserver<T> {
            private static final long serialVersionUID = 2071387740092105509L;
            public final SingleObserver<? super T> downstream;

            public C0338do(SingleObserver<? super T> singleObserver) {
                this.downstream = singleObserver;
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.downstream.onError(th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(T t) {
                this.downstream.onSuccess(t);
            }
        }

        public Cdo(SingleObserver<? super T> singleObserver, SingleSource<? extends T> singleSource, long j, TimeUnit timeUnit) {
            this.downstream = singleObserver;
            this.other = singleSource;
            this.timeout = j;
            this.unit = timeUnit;
            if (singleSource != null) {
                this.fallback = new C0338do<>(singleObserver);
            } else {
                this.fallback = null;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
            io.reactivex.internal.disposables.Cdo.dispose(this.task);
            C0338do<T> c0338do = this.fallback;
            if (c0338do != null) {
                io.reactivex.internal.disposables.Cdo.dispose(c0338do);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            Disposable disposable = get();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable == cdo || !compareAndSet(disposable, cdo)) {
                jp1.l(th);
            } else {
                io.reactivex.internal.disposables.Cdo.dispose(this.task);
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            Disposable disposable = get();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable == cdo || !compareAndSet(disposable, cdo)) {
                return;
            }
            io.reactivex.internal.disposables.Cdo.dispose(this.task);
            this.downstream.onSuccess(t);
        }

        @Override // java.lang.Runnable
        public void run() {
            Disposable disposable = get();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable == cdo || !compareAndSet(disposable, cdo)) {
                return;
            }
            if (disposable != null) {
                disposable.dispose();
            }
            SingleSource<? extends T> singleSource = this.other;
            if (singleSource == null) {
                this.downstream.onError(new TimeoutException(Ccase.m29717try(this.timeout, this.unit)));
            } else {
                this.other = null;
                singleSource.subscribe(this.fallback);
            }
        }
    }

    public Cimplements(SingleSource<T> singleSource, long j, TimeUnit timeUnit, Ctry ctry, SingleSource<? extends T> singleSource2) {
        this.f27191do = singleSource;
        this.f27193if = j;
        this.f27192for = timeUnit;
        this.f27194new = ctry;
        this.f27195try = singleSource2;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        Cdo cdo = new Cdo(singleObserver, this.f27195try, this.f27193if, this.f27192for);
        singleObserver.onSubscribe(cdo);
        io.reactivex.internal.disposables.Cdo.replace(cdo.task, this.f27194new.mo29361try(cdo, this.f27193if, this.f27192for));
        this.f27191do.subscribe(cdo);
    }
}
