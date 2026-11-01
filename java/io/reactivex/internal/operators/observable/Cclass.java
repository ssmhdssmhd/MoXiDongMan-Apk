package io.reactivex.internal.operators.observable;

import android.support.v4.cq;
import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.observable.class, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cclass<T, U extends Collection<? super T>, Open, Close> extends io.reactivex.internal.operators.observable.Cdo<T, U> {

    /* renamed from: for, reason: not valid java name */
    public final ObservableSource<? extends Open> f26464for;

    /* renamed from: if, reason: not valid java name */
    public final Callable<U> f26465if;

    /* renamed from: new, reason: not valid java name */
    public final Function<? super Open, ? extends ObservableSource<? extends Close>> f26466new;

    /* renamed from: io.reactivex.internal.operators.observable.class$do, reason: invalid class name */
    public static final class Cdo<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -8466418554264089604L;
        public final Function<? super Open, ? extends ObservableSource<? extends Close>> bufferClose;
        public final ObservableSource<? extends Open> bufferOpen;
        public final Callable<C> bufferSupplier;
        public volatile boolean cancelled;
        public volatile boolean done;
        public final Observer<? super C> downstream;
        public long index;
        public final e12<C> queue = new e12<>(Cnew.bufferSize());
        public final cq observers = new cq();
        public final AtomicReference<Disposable> upstream = new AtomicReference<>();
        public Map<Long, C> buffers = new LinkedHashMap();
        public final h4 errors = new h4();

        /* renamed from: io.reactivex.internal.operators.observable.class$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0315do<Open> extends AtomicReference<Disposable> implements Observer<Open>, Disposable {
            private static final long serialVersionUID = -8498650778633225126L;
            public final Cdo<?, ?, Open, ?> parent;

            public C0315do(Cdo<?, ?, Open, ?> cdo) {
                this.parent = cdo;
            }

            @Override // io.reactivex.disposables.Disposable
            public void dispose() {
                io.reactivex.internal.disposables.Cdo.dispose(this);
            }

            @Override // io.reactivex.disposables.Disposable
            public boolean isDisposed() {
                return get() == io.reactivex.internal.disposables.Cdo.DISPOSED;
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                lazySet(io.reactivex.internal.disposables.Cdo.DISPOSED);
                this.parent.openComplete(this);
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                lazySet(io.reactivex.internal.disposables.Cdo.DISPOSED);
                this.parent.boundaryError(this, th);
            }

            @Override // io.reactivex.Observer
            public void onNext(Open open) {
                this.parent.open(open);
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }
        }

        public Cdo(Observer<? super C> observer, ObservableSource<? extends Open> observableSource, Function<? super Open, ? extends ObservableSource<? extends Close>> function, Callable<C> callable) {
            this.downstream = observer;
            this.bufferSupplier = callable;
            this.bufferOpen = observableSource;
            this.bufferClose = function;
        }

        public void boundaryError(Disposable disposable, Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            this.observers.delete(disposable);
            onError(th);
        }

        public void close(Cif<T, C> cif, long j) {
            boolean z;
            this.observers.delete(cif);
            if (this.observers.m996new() == 0) {
                io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
                z = true;
            } else {
                z = false;
            }
            synchronized (this) {
                Map<Long, C> map = this.buffers;
                if (map == null) {
                    return;
                }
                this.queue.offer(map.remove(Long.valueOf(j)));
                if (z) {
                    this.done = true;
                }
                drain();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (io.reactivex.internal.disposables.Cdo.dispose(this.upstream)) {
                this.cancelled = true;
                this.observers.dispose();
                synchronized (this) {
                    this.buffers = null;
                }
                if (getAndIncrement() != 0) {
                    this.queue.clear();
                }
            }
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer<? super C> observer = this.downstream;
            e12<C> e12Var = this.queue;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                boolean z = this.done;
                if (z && this.errors.get() != null) {
                    e12Var.clear();
                    observer.onError(this.errors.terminate());
                    return;
                }
                C cPoll = e12Var.poll();
                boolean z2 = cPoll == null;
                if (z && z2) {
                    observer.onComplete();
                    return;
                } else if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    observer.onNext(cPoll);
                }
            }
            e12Var.clear();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(this.upstream.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.observers.dispose();
            synchronized (this) {
                Map<Long, C> map = this.buffers;
                if (map == null) {
                    return;
                }
                Iterator<C> it = map.values().iterator();
                while (it.hasNext()) {
                    this.queue.offer(it.next());
                }
                this.buffers = null;
                this.done = true;
                drain();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            this.observers.dispose();
            synchronized (this) {
                this.buffers = null;
            }
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            synchronized (this) {
                Map<Long, C> map = this.buffers;
                if (map == null) {
                    return;
                }
                Iterator<C> it = map.values().iterator();
                while (it.hasNext()) {
                    it.next().add(t);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this.upstream, disposable)) {
                C0315do c0315do = new C0315do(this);
                this.observers.add(c0315do);
                this.bufferOpen.subscribe(c0315do);
            }
        }

        public void open(Open open) {
            try {
                Collection collection = (Collection) io.reactivex.internal.functions.Cif.m29468else(this.bufferSupplier.call(), "The bufferSupplier returned a null Collection");
                ObservableSource observableSource = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.bufferClose.apply(open), "The bufferClose returned a null ObservableSource");
                long j = this.index;
                this.index = 1 + j;
                synchronized (this) {
                    Map<Long, C> map = this.buffers;
                    if (map == null) {
                        return;
                    }
                    map.put(Long.valueOf(j), collection);
                    Cif cif = new Cif(this, j);
                    this.observers.add(cif);
                    observableSource.subscribe(cif);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
                onError(th);
            }
        }

        public void openComplete(C0315do<Open> c0315do) {
            this.observers.delete(c0315do);
            if (this.observers.m996new() == 0) {
                io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
                this.done = true;
                drain();
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.class$if, reason: invalid class name */
    public static final class Cif<T, C extends Collection<? super T>> extends AtomicReference<Disposable> implements Observer<Object>, Disposable {
        private static final long serialVersionUID = -8498650778633225126L;
        public final long index;
        public final Cdo<T, C, ?, ?> parent;

        public Cif(Cdo<T, C, ?, ?> cdo, long j) {
            this.parent = cdo;
            this.index = j;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            Disposable disposable = get();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable != cdo) {
                lazySet(cdo);
                this.parent.close(this, this.index);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            Disposable disposable = get();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable == cdo) {
                jp1.l(th);
            } else {
                lazySet(cdo);
                this.parent.boundaryError(this, th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            Disposable disposable = get();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable != cdo) {
                lazySet(cdo);
                disposable.dispose();
                this.parent.close(this, this.index);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }
    }

    public Cclass(ObservableSource<T> observableSource, ObservableSource<? extends Open> observableSource2, Function<? super Open, ? extends ObservableSource<? extends Close>> function, Callable<U> callable) {
        super(observableSource);
        this.f26464for = observableSource2;
        this.f26466new = function;
        this.f26465if = callable;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super U> observer) {
        Cdo cdo = new Cdo(observer, this.f26464for, this.f26466new, this.f26465if);
        observer.onSubscribe(cdo);
        this.f26500do.subscribe(cdo);
    }
}
