package io.reactivex.internal.operators.mixed;

import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.QueueDisposable;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.util.Ccase;
import io.reactivex.internal.util.Ctry;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.mixed.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccatch<T> extends np {

    /* renamed from: do, reason: not valid java name */
    public final Cnew<T> f26280do;

    /* renamed from: for, reason: not valid java name */
    public final Ctry f26281for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends CompletableSource> f26282if;

    /* renamed from: new, reason: not valid java name */
    public final int f26283new;

    /* renamed from: io.reactivex.internal.operators.mixed.catch$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 3610901111000061034L;
        public volatile boolean active;
        public volatile boolean disposed;
        public volatile boolean done;
        public final CompletableObserver downstream;
        public final Ctry errorMode;
        public final h4 errors = new h4();
        public final C0302do inner = new C0302do(this);
        public final Function<? super T, ? extends CompletableSource> mapper;
        public final int prefetch;
        public SimpleQueue<T> queue;
        public Disposable upstream;

        /* renamed from: io.reactivex.internal.operators.mixed.catch$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0302do extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = 5638352172918776687L;
            public final Cdo<?> parent;

            public C0302do(Cdo<?> cdo) {
                this.parent = cdo;
            }

            public void dispose() {
                io.reactivex.internal.disposables.Cdo.dispose(this);
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.parent.innerComplete();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.parent.innerError(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.replace(this, disposable);
            }
        }

        public Cdo(CompletableObserver completableObserver, Function<? super T, ? extends CompletableSource> function, Ctry ctry, int i) {
            this.downstream = completableObserver;
            this.mapper = function;
            this.errorMode = ctry;
            this.prefetch = i;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.disposed = true;
            this.upstream.dispose();
            this.inner.dispose();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        public void drain() {
            boolean z;
            if (getAndIncrement() != 0) {
                return;
            }
            h4 h4Var = this.errors;
            Ctry ctry = this.errorMode;
            while (!this.disposed) {
                if (!this.active) {
                    if (ctry == Ctry.BOUNDARY && h4Var.get() != null) {
                        this.disposed = true;
                        this.queue.clear();
                        this.downstream.onError(h4Var.terminate());
                        return;
                    }
                    boolean z2 = this.done;
                    CompletableSource completableSource = null;
                    try {
                        T tPoll = this.queue.poll();
                        if (tPoll != null) {
                            completableSource = (CompletableSource) Cif.m29468else(this.mapper.apply(tPoll), "The mapper returned a null CompletableSource");
                            z = false;
                        } else {
                            z = true;
                        }
                        if (z2 && z) {
                            this.disposed = true;
                            Throwable thTerminate = h4Var.terminate();
                            if (thTerminate != null) {
                                this.downstream.onError(thTerminate);
                                return;
                            } else {
                                this.downstream.onComplete();
                                return;
                            }
                        }
                        if (!z) {
                            this.active = true;
                            completableSource.subscribe(this.inner);
                        }
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        this.disposed = true;
                        this.queue.clear();
                        this.upstream.dispose();
                        h4Var.addThrowable(th);
                        this.downstream.onError(h4Var.terminate());
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.queue.clear();
        }

        public void innerComplete() {
            this.active = false;
            drain();
        }

        public void innerError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (this.errorMode != Ctry.IMMEDIATE) {
                this.active = false;
                drain();
                return;
            }
            this.disposed = true;
            this.upstream.dispose();
            Throwable thTerminate = this.errors.terminate();
            if (thTerminate != Ccase.f27435do) {
                this.downstream.onError(thTerminate);
            }
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (this.errorMode != Ctry.IMMEDIATE) {
                this.done = true;
                drain();
                return;
            }
            this.disposed = true;
            this.inner.dispose();
            Throwable thTerminate = this.errors.terminate();
            if (thTerminate != Ccase.f27435do) {
                this.downstream.onError(thTerminate);
            }
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (t != null) {
                this.queue.offer(t);
            }
            drain();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                if (disposable instanceof QueueDisposable) {
                    QueueDisposable queueDisposable = (QueueDisposable) disposable;
                    int iRequestFusion = queueDisposable.requestFusion(3);
                    if (iRequestFusion == 1) {
                        this.queue = queueDisposable;
                        this.done = true;
                        this.downstream.onSubscribe(this);
                        drain();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.queue = queueDisposable;
                        this.downstream.onSubscribe(this);
                        return;
                    }
                }
                this.queue = new e12(this.prefetch);
                this.downstream.onSubscribe(this);
            }
        }
    }

    public Ccatch(Cnew<T> cnew, Function<? super T, ? extends CompletableSource> function, Ctry ctry, int i) {
        this.f26280do = cnew;
        this.f26282if = function;
        this.f26281for = ctry;
        this.f26283new = i;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        if (Cwhile.m29557do(this.f26280do, this.f26282if, completableObserver)) {
            return;
        }
        this.f26280do.subscribe(new Cdo(completableObserver, this.f26282if, this.f26281for, this.f26283new));
    }
}
