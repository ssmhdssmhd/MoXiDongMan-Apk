package io.reactivex.internal.operators.observable;

import android.R;
import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.QueueDisposable;
import io.reactivex.internal.fuseable.SimpleQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class q1<T, R> extends io.reactivex.internal.operators.observable.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final int f26838for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends ObservableSource<? extends R>> f26839if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f26840new;

    /* renamed from: io.reactivex.internal.operators.observable.q1$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicReference<Disposable> implements Observer<R> {
        private static final long serialVersionUID = 3837284832786408377L;
        public final int bufferSize;
        public volatile boolean done;
        public final long index;
        public final Cif<T, R> parent;
        public volatile SimpleQueue<R> queue;

        public Cdo(Cif<T, R> cif, long j, int i) {
            this.parent = cif;
            this.index = j;
            this.bufferSize = i;
        }

        public void cancel() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.index == this.parent.unique) {
                this.done = true;
                this.parent.drain();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.parent.innerError(this, th);
        }

        @Override // io.reactivex.Observer
        public void onNext(R r) {
            if (this.index == this.parent.unique) {
                if (r != null) {
                    this.queue.offer(r);
                }
                this.parent.drain();
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                if (disposable instanceof QueueDisposable) {
                    QueueDisposable queueDisposable = (QueueDisposable) disposable;
                    int iRequestFusion = queueDisposable.requestFusion(7);
                    if (iRequestFusion == 1) {
                        this.queue = queueDisposable;
                        this.done = true;
                        this.parent.drain();
                        return;
                    } else if (iRequestFusion == 2) {
                        this.queue = queueDisposable;
                        return;
                    }
                }
                this.queue = new e12(this.bufferSize);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.q1$if, reason: invalid class name */
    public static final class Cif<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        public static final Cdo<Object, Object> CANCELLED;
        private static final long serialVersionUID = -3491074160481096299L;
        public final int bufferSize;
        public volatile boolean cancelled;
        public final boolean delayErrors;
        public volatile boolean done;
        public final Observer<? super R> downstream;
        public final Function<? super T, ? extends ObservableSource<? extends R>> mapper;
        public volatile long unique;
        public Disposable upstream;
        public final AtomicReference<Cdo<T, R>> active = new AtomicReference<>();
        public final h4 errors = new h4();

        static {
            Cdo<Object, Object> cdo = new Cdo<>(null, -1L, 1);
            CANCELLED = cdo;
            cdo.cancel();
        }

        public Cif(Observer<? super R> observer, Function<? super T, ? extends ObservableSource<? extends R>> function, int i, boolean z) {
            this.downstream = observer;
            this.mapper = function;
            this.bufferSize = i;
            this.delayErrors = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.dispose();
            disposeInner();
        }

        public void disposeInner() {
            Cdo<Object, Object> cdo;
            Cdo<T, R> cdo2 = this.active.get();
            Cdo<Object, Object> cdo3 = CANCELLED;
            if (cdo2 == cdo3 || (cdo = (Cdo) this.active.getAndSet(cdo3)) == cdo3 || cdo == null) {
                return;
            }
            cdo.cancel();
        }

        /* JADX WARN: Removed duplicated region for block: B:101:0x000f A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:95:0x00e9 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void drain() {
            SimpleQueue<R> simpleQueue;
            R.bool boolVarPoll;
            if (getAndIncrement() != 0) {
                return;
            }
            Observer<? super R> observer = this.downstream;
            AtomicReference<Cdo<T, R>> atomicReference = this.active;
            boolean z = this.delayErrors;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                if (this.done) {
                    boolean z2 = atomicReference.get() == null;
                    if (z) {
                        if (z2) {
                            Throwable th = this.errors.get();
                            if (th != null) {
                                observer.onError(th);
                                return;
                            } else {
                                observer.onComplete();
                                return;
                            }
                        }
                    } else if (this.errors.get() != null) {
                        observer.onError(this.errors.terminate());
                        return;
                    } else if (z2) {
                        observer.onComplete();
                        return;
                    }
                }
                Cdo<T, R> cdo = atomicReference.get();
                if (cdo != null && (simpleQueue = cdo.queue) != null) {
                    if (cdo.done) {
                        boolean zIsEmpty = simpleQueue.isEmpty();
                        if (z) {
                            if (zIsEmpty) {
                                atomicReference.compareAndSet(cdo, null);
                            }
                        } else if (this.errors.get() != null) {
                            observer.onError(this.errors.terminate());
                            return;
                        } else if (zIsEmpty) {
                            atomicReference.compareAndSet(cdo, null);
                        }
                    }
                    boolean z3 = false;
                    while (!this.cancelled) {
                        if (cdo == atomicReference.get()) {
                            if (!z && this.errors.get() != null) {
                                observer.onError(this.errors.terminate());
                                return;
                            }
                            boolean z4 = cdo.done;
                            try {
                                boolVarPoll = simpleQueue.poll();
                            } catch (Throwable th2) {
                                t80.m7781if(th2);
                                this.errors.addThrowable(th2);
                                atomicReference.compareAndSet(cdo, null);
                                if (z) {
                                    cdo.cancel();
                                } else {
                                    disposeInner();
                                    this.upstream.dispose();
                                    this.done = true;
                                }
                                boolVarPoll = null;
                                z3 = true;
                            }
                            boolean z5 = boolVarPoll == null;
                            if (z4 && z5) {
                                atomicReference.compareAndSet(cdo, null);
                            } else if (!z5) {
                                observer.onNext(boolVarPoll);
                            } else if (!z3) {
                                continue;
                            }
                        }
                        z3 = true;
                        if (!z3) {
                        }
                    }
                    return;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        public void innerError(Cdo<T, R> cdo, Throwable th) {
            if (cdo.index != this.unique || !this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (!this.delayErrors) {
                this.upstream.dispose();
                this.done = true;
            }
            cdo.done = true;
            drain();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
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
            if (this.done || !this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (!this.delayErrors) {
                disposeInner();
            }
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            Cdo<T, R> cdo;
            long j = this.unique + 1;
            this.unique = j;
            Cdo<T, R> cdo2 = this.active.get();
            if (cdo2 != null) {
                cdo2.cancel();
            }
            try {
                ObservableSource observableSource = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.mapper.apply(t), "The ObservableSource returned is null");
                Cdo<T, R> cdo3 = new Cdo<>(this, j, this.bufferSize);
                do {
                    cdo = this.active.get();
                    if (cdo == CANCELLED) {
                        return;
                    }
                } while (!this.active.compareAndSet(cdo, cdo3));
                observableSource.subscribe(cdo3);
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

    public q1(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends R>> function, int i, boolean z) {
        super(observableSource);
        this.f26839if = function;
        this.f26838for = i;
        this.f26840new = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        if (b1.m29569if(this.f26500do, observer, this.f26839if)) {
            return;
        }
        this.f26500do.subscribe(new Cif(observer, this.f26839if, this.f26838for, this.f26840new));
    }
}
