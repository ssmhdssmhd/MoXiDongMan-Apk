package io.reactivex.internal.operators.observable;

import android.support.v4.cq;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.FuseToObservable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class g<T> extends np implements FuseToObservable<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26554do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f26555for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends CompletableSource> f26556if;

    /* renamed from: io.reactivex.internal.operators.observable.g$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Disposable, Observer<T> {
        private static final long serialVersionUID = 8443155186132538303L;
        public final boolean delayErrors;
        public volatile boolean disposed;
        public final CompletableObserver downstream;
        public final Function<? super T, ? extends CompletableSource> mapper;
        public Disposable upstream;
        public final h4 errors = new h4();
        public final cq set = new cq();

        /* renamed from: io.reactivex.internal.operators.observable.g$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0321do extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
            private static final long serialVersionUID = 8606673141535671828L;

            public C0321do() {
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
                Cdo.this.innerComplete(this);
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                Cdo.this.innerError(this, th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }
        }

        public Cdo(CompletableObserver completableObserver, Function<? super T, ? extends CompletableSource> function, boolean z) {
            this.downstream = completableObserver;
            this.mapper = function;
            this.delayErrors = z;
            lazySet(1);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.disposed = true;
            this.upstream.dispose();
            this.set.dispose();
        }

        public void innerComplete(Cdo<T>.C0321do c0321do) {
            this.set.delete(c0321do);
            onComplete();
        }

        public void innerError(Cdo<T>.C0321do c0321do, Throwable th) {
            this.set.delete(c0321do);
            onError(th);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable thTerminate = this.errors.terminate();
                if (thTerminate != null) {
                    this.downstream.onError(thTerminate);
                } else {
                    this.downstream.onComplete();
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (this.delayErrors) {
                if (decrementAndGet() == 0) {
                    this.downstream.onError(this.errors.terminate());
                    return;
                }
                return;
            }
            dispose();
            if (getAndSet(0) > 0) {
                this.downstream.onError(this.errors.terminate());
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            try {
                CompletableSource completableSource = (CompletableSource) Cif.m29468else(this.mapper.apply(t), "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0321do c0321do = new C0321do();
                if (this.disposed || !this.set.add(c0321do)) {
                    return;
                }
                completableSource.subscribe(c0321do);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.upstream.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }
    }

    public g(ObservableSource<T> observableSource, Function<? super T, ? extends CompletableSource> function, boolean z) {
        this.f26554do = observableSource;
        this.f26556if = function;
        this.f26555for = z;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f26554do.subscribe(new Cdo(completableObserver, this.f26556if, this.f26555for));
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    public Cnew<T> fuseToObservable() {
        return jp1.i(new f(this.f26554do, this.f26556if, this.f26555for));
    }
}
