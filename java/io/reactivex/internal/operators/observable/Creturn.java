package io.reactivex.internal.operators.observable;

import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.vm0;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.QueueDisposable;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.observers.InnerQueuedObserverSupport;
import io.reactivex.internal.util.Ctry;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: io.reactivex.internal.operators.observable.return, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Creturn<T, R> extends io.reactivex.internal.operators.observable.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final Ctry f26851for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends ObservableSource<? extends R>> f26852if;

    /* renamed from: new, reason: not valid java name */
    public final int f26853new;

    /* renamed from: try, reason: not valid java name */
    public final int f26854try;

    /* renamed from: io.reactivex.internal.operators.observable.return$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicInteger implements Observer<T>, Disposable, InnerQueuedObserverSupport<R> {
        private static final long serialVersionUID = 8080567949447303262L;
        public int activeCount;
        public volatile boolean cancelled;
        public vm0<R> current;
        public volatile boolean done;
        public final Observer<? super R> downstream;
        public final Ctry errorMode;
        public final Function<? super T, ? extends ObservableSource<? extends R>> mapper;
        public final int maxConcurrency;
        public final int prefetch;
        public SimpleQueue<T> queue;
        public int sourceMode;
        public Disposable upstream;
        public final h4 error = new h4();
        public final ArrayDeque<vm0<R>> observers = new ArrayDeque<>();

        public Cdo(Observer<? super R> observer, Function<? super T, ? extends ObservableSource<? extends R>> function, int i, int i2, Ctry ctry) {
            this.downstream = observer;
            this.mapper = function;
            this.maxConcurrency = i;
            this.prefetch = i2;
            this.errorMode = ctry;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.dispose();
            drainAndDispose();
        }

        public void disposeAll() {
            vm0<R> vm0Var = this.current;
            if (vm0Var != null) {
                vm0Var.dispose();
            }
            while (true) {
                vm0<R> vm0VarPoll = this.observers.poll();
                if (vm0VarPoll == null) {
                    return;
                } else {
                    vm0VarPoll.dispose();
                }
            }
        }

        @Override // io.reactivex.internal.observers.InnerQueuedObserverSupport
        public void drain() {
            R rPoll;
            boolean z;
            if (getAndIncrement() != 0) {
                return;
            }
            SimpleQueue<T> simpleQueue = this.queue;
            ArrayDeque<vm0<R>> arrayDeque = this.observers;
            Observer<? super R> observer = this.downstream;
            Ctry ctry = this.errorMode;
            int iAddAndGet = 1;
            while (true) {
                int i = this.activeCount;
                while (i != this.maxConcurrency) {
                    if (this.cancelled) {
                        simpleQueue.clear();
                        disposeAll();
                        return;
                    }
                    if (ctry == Ctry.IMMEDIATE && this.error.get() != null) {
                        simpleQueue.clear();
                        disposeAll();
                        observer.onError(this.error.terminate());
                        return;
                    }
                    try {
                        T tPoll = simpleQueue.poll();
                        if (tPoll == null) {
                            break;
                        }
                        ObservableSource observableSource = (ObservableSource) Cif.m29468else(this.mapper.apply(tPoll), "The mapper returned a null ObservableSource");
                        vm0<R> vm0Var = new vm0<>(this, this.prefetch);
                        arrayDeque.offer(vm0Var);
                        observableSource.subscribe(vm0Var);
                        i++;
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        this.upstream.dispose();
                        simpleQueue.clear();
                        disposeAll();
                        this.error.addThrowable(th);
                        observer.onError(this.error.terminate());
                        return;
                    }
                }
                this.activeCount = i;
                if (this.cancelled) {
                    simpleQueue.clear();
                    disposeAll();
                    return;
                }
                if (ctry == Ctry.IMMEDIATE && this.error.get() != null) {
                    simpleQueue.clear();
                    disposeAll();
                    observer.onError(this.error.terminate());
                    return;
                }
                vm0<R> vm0Var2 = this.current;
                if (vm0Var2 == null) {
                    if (ctry == Ctry.BOUNDARY && this.error.get() != null) {
                        simpleQueue.clear();
                        disposeAll();
                        observer.onError(this.error.terminate());
                        return;
                    }
                    boolean z2 = this.done;
                    vm0<R> vm0VarPoll = arrayDeque.poll();
                    boolean z3 = vm0VarPoll == null;
                    if (z2 && z3) {
                        if (this.error.get() == null) {
                            observer.onComplete();
                            return;
                        }
                        simpleQueue.clear();
                        disposeAll();
                        observer.onError(this.error.terminate());
                        return;
                    }
                    if (!z3) {
                        this.current = vm0VarPoll;
                    }
                    vm0Var2 = vm0VarPoll;
                }
                if (vm0Var2 != null) {
                    SimpleQueue<R> simpleQueueQueue = vm0Var2.queue();
                    while (!this.cancelled) {
                        boolean zIsDone = vm0Var2.isDone();
                        if (ctry == Ctry.IMMEDIATE && this.error.get() != null) {
                            simpleQueue.clear();
                            disposeAll();
                            observer.onError(this.error.terminate());
                            return;
                        }
                        try {
                            rPoll = simpleQueueQueue.poll();
                            z = rPoll == null;
                        } catch (Throwable th2) {
                            t80.m7781if(th2);
                            this.error.addThrowable(th2);
                            this.current = null;
                            this.activeCount--;
                        }
                        if (zIsDone && z) {
                            this.current = null;
                            this.activeCount--;
                        } else if (!z) {
                            observer.onNext(rPoll);
                        }
                    }
                    simpleQueue.clear();
                    disposeAll();
                    return;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        public void drainAndDispose() {
            if (getAndIncrement() == 0) {
                do {
                    this.queue.clear();
                    disposeAll();
                } while (decrementAndGet() != 0);
            }
        }

        @Override // io.reactivex.internal.observers.InnerQueuedObserverSupport
        public void innerComplete(vm0<R> vm0Var) {
            vm0Var.setDone();
            drain();
        }

        @Override // io.reactivex.internal.observers.InnerQueuedObserverSupport
        public void innerError(vm0<R> vm0Var, Throwable th) {
            if (!this.error.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (this.errorMode == Ctry.IMMEDIATE) {
                this.upstream.dispose();
            }
            vm0Var.setDone();
            drain();
        }

        @Override // io.reactivex.internal.observers.InnerQueuedObserverSupport
        public void innerNext(vm0<R> vm0Var, R r) {
            vm0Var.queue().offer(r);
            drain();
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
                this.queue = new e12(this.prefetch);
                this.downstream.onSubscribe(this);
            }
        }
    }

    public Creturn(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends R>> function, Ctry ctry, int i, int i2) {
        super(observableSource);
        this.f26852if = function;
        this.f26851for = ctry;
        this.f26853new = i;
        this.f26854try = i2;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26852if, this.f26853new, this.f26854try, this.f26851for));
    }
}
