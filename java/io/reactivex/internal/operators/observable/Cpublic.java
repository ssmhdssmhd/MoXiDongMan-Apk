package io.reactivex.internal.operators.observable;

import android.R;
import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.zw1;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.QueueDisposable;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.util.Ctry;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.observable.public, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cpublic<T, U> extends io.reactivex.internal.operators.observable.Cdo<T, U> {

    /* renamed from: for, reason: not valid java name */
    public final int f26826for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends ObservableSource<? extends U>> f26827if;

    /* renamed from: new, reason: not valid java name */
    public final Ctry f26828new;

    /* renamed from: io.reactivex.internal.operators.observable.public$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -6951100001833242599L;
        public volatile boolean active;
        public final int bufferSize;
        public volatile boolean cancelled;
        public volatile boolean done;
        public final Observer<? super R> downstream;
        public final h4 error = new h4();
        public final Function<? super T, ? extends ObservableSource<? extends R>> mapper;
        public final C0328do<R> observer;
        public SimpleQueue<T> queue;
        public int sourceMode;
        public final boolean tillTheEnd;
        public Disposable upstream;

        /* renamed from: io.reactivex.internal.operators.observable.public$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0328do<R> extends AtomicReference<Disposable> implements Observer<R> {
            private static final long serialVersionUID = 2620149119579502636L;
            public final Observer<? super R> downstream;
            public final Cdo<?, R> parent;

            public C0328do(Observer<? super R> observer, Cdo<?, R> cdo) {
                this.downstream = observer;
                this.parent = cdo;
            }

            public void dispose() {
                io.reactivex.internal.disposables.Cdo.dispose(this);
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                Cdo<?, R> cdo = this.parent;
                cdo.active = false;
                cdo.drain();
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                Cdo<?, R> cdo = this.parent;
                if (!cdo.error.addThrowable(th)) {
                    jp1.l(th);
                    return;
                }
                if (!cdo.tillTheEnd) {
                    cdo.upstream.dispose();
                }
                cdo.active = false;
                cdo.drain();
            }

            @Override // io.reactivex.Observer
            public void onNext(R r) {
                this.downstream.onNext(r);
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.replace(this, disposable);
            }
        }

        public Cdo(Observer<? super R> observer, Function<? super T, ? extends ObservableSource<? extends R>> function, int i, boolean z) {
            this.downstream = observer;
            this.mapper = function;
            this.bufferSize = i;
            this.tillTheEnd = z;
            this.observer = new C0328do<>(observer, this);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.cancelled = true;
            this.upstream.dispose();
            this.observer.dispose();
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer<? super R> observer = this.downstream;
            SimpleQueue<T> simpleQueue = this.queue;
            h4 h4Var = this.error;
            while (true) {
                if (!this.active) {
                    if (this.cancelled) {
                        simpleQueue.clear();
                        return;
                    }
                    if (!this.tillTheEnd && h4Var.get() != null) {
                        simpleQueue.clear();
                        this.cancelled = true;
                        observer.onError(h4Var.terminate());
                        return;
                    }
                    boolean z = this.done;
                    try {
                        T tPoll = simpleQueue.poll();
                        boolean z2 = tPoll == null;
                        if (z && z2) {
                            this.cancelled = true;
                            Throwable thTerminate = h4Var.terminate();
                            if (thTerminate != null) {
                                observer.onError(thTerminate);
                                return;
                            } else {
                                observer.onComplete();
                                return;
                            }
                        }
                        if (!z2) {
                            try {
                                ObservableSource observableSource = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.mapper.apply(tPoll), "The mapper returned a null ObservableSource");
                                if (observableSource instanceof Callable) {
                                    try {
                                        R.attr attrVar = (Object) ((Callable) observableSource).call();
                                        if (attrVar != null && !this.cancelled) {
                                            observer.onNext(attrVar);
                                        }
                                    } catch (Throwable th) {
                                        t80.m7781if(th);
                                        h4Var.addThrowable(th);
                                    }
                                } else {
                                    this.active = true;
                                    observableSource.subscribe(this.observer);
                                }
                            } catch (Throwable th2) {
                                t80.m7781if(th2);
                                this.cancelled = true;
                                this.upstream.dispose();
                                simpleQueue.clear();
                                h4Var.addThrowable(th2);
                                observer.onError(h4Var.terminate());
                                return;
                            }
                        }
                    } catch (Throwable th3) {
                        t80.m7781if(th3);
                        this.cancelled = true;
                        this.upstream.dispose();
                        h4Var.addThrowable(th3);
                        observer.onError(h4Var.terminate());
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.error.addThrowable(th)) {
                jp1.l(th);
            } else {
                this.done = true;
                drain();
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.sourceMode == 0) {
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
                        this.sourceMode = iRequestFusion;
                        this.queue = queueDisposable;
                        this.done = true;
                        this.downstream.onSubscribe(this);
                        drain();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.sourceMode = iRequestFusion;
                        this.queue = queueDisposable;
                        this.downstream.onSubscribe(this);
                        return;
                    }
                }
                this.queue = new e12(this.bufferSize);
                this.downstream.onSubscribe(this);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.public$if, reason: invalid class name */
    public static final class Cif<T, U> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 8828587559905699186L;
        public volatile boolean active;
        public final int bufferSize;
        public volatile boolean disposed;
        public volatile boolean done;
        public final Observer<? super U> downstream;
        public int fusionMode;
        public final Cdo<U> inner;
        public final Function<? super T, ? extends ObservableSource<? extends U>> mapper;
        public SimpleQueue<T> queue;
        public Disposable upstream;

        /* renamed from: io.reactivex.internal.operators.observable.public$if$do, reason: invalid class name */
        public static final class Cdo<U> extends AtomicReference<Disposable> implements Observer<U> {
            private static final long serialVersionUID = -7449079488798789337L;
            public final Observer<? super U> downstream;
            public final Cif<?, ?> parent;

            public Cdo(Observer<? super U> observer, Cif<?, ?> cif) {
                this.downstream = observer;
                this.parent = cif;
            }

            public void dispose() {
                io.reactivex.internal.disposables.Cdo.dispose(this);
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                this.parent.innerComplete();
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                this.parent.dispose();
                this.downstream.onError(th);
            }

            @Override // io.reactivex.Observer
            public void onNext(U u) {
                this.downstream.onNext(u);
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.replace(this, disposable);
            }
        }

        public Cif(Observer<? super U> observer, Function<? super T, ? extends ObservableSource<? extends U>> function, int i) {
            this.downstream = observer;
            this.mapper = function;
            this.bufferSize = i;
            this.inner = new Cdo<>(observer, this);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.disposed = true;
            this.inner.dispose();
            this.upstream.dispose();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!this.disposed) {
                if (!this.active) {
                    boolean z = this.done;
                    try {
                        T tPoll = this.queue.poll();
                        boolean z2 = tPoll == null;
                        if (z && z2) {
                            this.disposed = true;
                            this.downstream.onComplete();
                            return;
                        } else if (!z2) {
                            try {
                                ObservableSource observableSource = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.mapper.apply(tPoll), "The mapper returned a null ObservableSource");
                                this.active = true;
                                observableSource.subscribe(this.inner);
                            } catch (Throwable th) {
                                t80.m7781if(th);
                                dispose();
                                this.queue.clear();
                                this.downstream.onError(th);
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        t80.m7781if(th2);
                        dispose();
                        this.queue.clear();
                        this.downstream.onError(th2);
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

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.done = true;
            dispose();
            this.downstream.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            if (this.fusionMode == 0) {
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
                        this.fusionMode = iRequestFusion;
                        this.queue = queueDisposable;
                        this.done = true;
                        this.downstream.onSubscribe(this);
                        drain();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.fusionMode = iRequestFusion;
                        this.queue = queueDisposable;
                        this.downstream.onSubscribe(this);
                        return;
                    }
                }
                this.queue = new e12(this.bufferSize);
                this.downstream.onSubscribe(this);
            }
        }
    }

    public Cpublic(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends U>> function, int i, Ctry ctry) {
        super(observableSource);
        this.f26827if = function;
        this.f26828new = ctry;
        this.f26826for = Math.max(8, i);
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super U> observer) {
        if (b1.m29569if(this.f26500do, observer, this.f26827if)) {
            return;
        }
        if (this.f26828new == Ctry.IMMEDIATE) {
            this.f26500do.subscribe(new Cif(new zw1(observer), this.f26827if, this.f26826for));
        } else {
            this.f26500do.subscribe(new Cdo(observer, this.f26827if, this.f26826for, this.f26828new == Ctry.END));
        }
    }
}
