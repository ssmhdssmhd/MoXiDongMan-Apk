package io.reactivex.internal.operators.observable;

import android.R;
import android.support.v4.cq;
import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class h<T, R> extends io.reactivex.internal.operators.observable.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final boolean f26566for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends MaybeSource<? extends R>> f26567if;

    /* renamed from: io.reactivex.internal.operators.observable.h$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 8600231336733376951L;
        public volatile boolean cancelled;
        public final boolean delayErrors;
        public final Observer<? super R> downstream;
        public final Function<? super T, ? extends MaybeSource<? extends R>> mapper;
        public Disposable upstream;
        public final cq set = new cq();
        public final h4 errors = new h4();
        public final AtomicInteger active = new AtomicInteger(1);
        public final AtomicReference<e12<R>> queue = new AtomicReference<>();

        /* renamed from: io.reactivex.internal.operators.observable.h$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0323do extends AtomicReference<Disposable> implements MaybeObserver<R>, Disposable {
            private static final long serialVersionUID = -502562646270949838L;

            public C0323do() {
            }

            @Override // io.reactivex.disposables.Disposable
            public void dispose() {
                io.reactivex.internal.disposables.Cdo.dispose(this);
            }

            @Override // io.reactivex.disposables.Disposable
            public boolean isDisposed() {
                return io.reactivex.internal.disposables.Cdo.isDisposed(get());
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                Cdo.this.innerComplete(this);
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                Cdo.this.innerError(this, th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(R r) {
                Cdo.this.innerSuccess(this, r);
            }
        }

        public Cdo(Observer<? super R> observer, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
            this.downstream = observer;
            this.mapper = function;
            this.delayErrors = z;
        }

        public void clear() {
            e12<R> e12Var = this.queue.get();
            if (e12Var != null) {
                e12Var.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.cancelled = true;
            this.upstream.dispose();
            this.set.dispose();
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        public void drainLoop() {
            Observer<? super R> observer = this.downstream;
            AtomicInteger atomicInteger = this.active;
            AtomicReference<e12<R>> atomicReference = this.queue;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                if (!this.delayErrors && this.errors.get() != null) {
                    Throwable thTerminate = this.errors.terminate();
                    clear();
                    observer.onError(thTerminate);
                    return;
                }
                boolean z = atomicInteger.get() == 0;
                e12<R> e12Var = atomicReference.get();
                R.bool boolVarPoll = e12Var != null ? e12Var.poll() : null;
                boolean z2 = boolVarPoll == null;
                if (z && z2) {
                    Throwable thTerminate2 = this.errors.terminate();
                    if (thTerminate2 != null) {
                        observer.onError(thTerminate2);
                        return;
                    } else {
                        observer.onComplete();
                        return;
                    }
                }
                if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    observer.onNext(boolVarPoll);
                }
            }
            clear();
        }

        public e12<R> getOrCreateQueue() {
            e12<R> e12Var;
            do {
                e12<R> e12Var2 = this.queue.get();
                if (e12Var2 != null) {
                    return e12Var2;
                }
                e12Var = new e12<>(Cnew.bufferSize());
            } while (!this.queue.compareAndSet(null, e12Var));
            return e12Var;
        }

        public void innerComplete(Cdo<T, R>.C0323do c0323do) {
            this.set.delete(c0323do);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z = this.active.decrementAndGet() == 0;
                    e12<R> e12Var = this.queue.get();
                    if (!z || (e12Var != null && !e12Var.isEmpty())) {
                        if (decrementAndGet() == 0) {
                            return;
                        }
                        drainLoop();
                        return;
                    } else {
                        Throwable thTerminate = this.errors.terminate();
                        if (thTerminate != null) {
                            this.downstream.onError(thTerminate);
                            return;
                        } else {
                            this.downstream.onComplete();
                            return;
                        }
                    }
                }
            }
            this.active.decrementAndGet();
            drain();
        }

        public void innerError(Cdo<T, R>.C0323do c0323do, Throwable th) {
            this.set.delete(c0323do);
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (!this.delayErrors) {
                this.upstream.dispose();
                this.set.dispose();
            }
            this.active.decrementAndGet();
            drain();
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x004e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void innerSuccess(Cdo<T, R>.C0323do c0323do, R r) {
            this.set.delete(c0323do);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    this.downstream.onNext(r);
                    boolean z = this.active.decrementAndGet() == 0;
                    e12<R> e12Var = this.queue.get();
                    if (z && (e12Var == null || e12Var.isEmpty())) {
                        Throwable thTerminate = this.errors.terminate();
                        if (thTerminate != null) {
                            this.downstream.onError(thTerminate);
                            return;
                        } else {
                            this.downstream.onComplete();
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                } else {
                    e12<R> orCreateQueue = getOrCreateQueue();
                    synchronized (orCreateQueue) {
                        orCreateQueue.offer(r);
                    }
                    this.active.decrementAndGet();
                    if (getAndIncrement() != 0) {
                        return;
                    }
                }
            }
            drainLoop();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.active.decrementAndGet();
            drain();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.active.decrementAndGet();
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (!this.delayErrors) {
                this.set.dispose();
            }
            drain();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            try {
                MaybeSource maybeSource = (MaybeSource) Cif.m29468else(this.mapper.apply(t), "The mapper returned a null MaybeSource");
                this.active.getAndIncrement();
                C0323do c0323do = new C0323do();
                if (this.cancelled || !this.set.add(c0323do)) {
                    return;
                }
                maybeSource.subscribe(c0323do);
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

    public h(ObservableSource<T> observableSource, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
        super(observableSource);
        this.f26567if = function;
        this.f26566for = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26567if, this.f26566for));
    }
}
