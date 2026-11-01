package io.reactivex.internal.operators.observable;

import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.n10;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.subjects.Cthis;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class j2<T, B> extends io.reactivex.internal.operators.observable.Cdo<T, Cnew<T>> {

    /* renamed from: for, reason: not valid java name */
    public final int f26647for;

    /* renamed from: if, reason: not valid java name */
    public final Callable<? extends ObservableSource<B>> f26648if;

    /* renamed from: io.reactivex.internal.operators.observable.j2$do, reason: invalid class name */
    public static final class Cdo<T, B> extends n10<B> {

        /* renamed from: for, reason: not valid java name */
        public boolean f26649for;

        /* renamed from: if, reason: not valid java name */
        public final Cif<T, B> f26650if;

        public Cdo(Cif<T, B> cif) {
            this.f26650if = cif;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26649for) {
                return;
            }
            this.f26649for = true;
            this.f26650if.innerComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26649for) {
                jp1.l(th);
            } else {
                this.f26649for = true;
                this.f26650if.innerError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(B b) {
            if (this.f26649for) {
                return;
            }
            this.f26649for = true;
            dispose();
            this.f26650if.innerNext(this);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.j2$if, reason: invalid class name */
    public static final class Cif<T, B> extends AtomicInteger implements Observer<T>, Disposable, Runnable {
        public static final Cdo<Object, Object> BOUNDARY_DISPOSED = new Cdo<>(null);
        public static final Object NEXT_WINDOW = new Object();
        private static final long serialVersionUID = 2233020065421370272L;
        public final int capacityHint;
        public volatile boolean done;
        public final Observer<? super Cnew<T>> downstream;
        public final Callable<? extends ObservableSource<B>> other;
        public Disposable upstream;
        public Cthis<T> window;
        public final AtomicReference<Cdo<T, B>> boundaryObserver = new AtomicReference<>();
        public final AtomicInteger windows = new AtomicInteger(1);
        public final io.reactivex.internal.queue.Cdo<Object> queue = new io.reactivex.internal.queue.Cdo<>();
        public final h4 errors = new h4();
        public final AtomicBoolean stopWindows = new AtomicBoolean();

        public Cif(Observer<? super Cnew<T>> observer, int i, Callable<? extends ObservableSource<B>> callable) {
            this.downstream = observer;
            this.capacityHint = i;
            this.other = callable;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.stopWindows.compareAndSet(false, true)) {
                disposeBoundary();
                if (this.windows.decrementAndGet() == 0) {
                    this.upstream.dispose();
                }
            }
        }

        public void disposeBoundary() {
            AtomicReference<Cdo<T, B>> atomicReference = this.boundaryObserver;
            Cdo<Object, Object> cdo = BOUNDARY_DISPOSED;
            Disposable disposable = (Disposable) atomicReference.getAndSet(cdo);
            if (disposable == null || disposable == cdo) {
                return;
            }
            disposable.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer<? super Cnew<T>> observer = this.downstream;
            io.reactivex.internal.queue.Cdo<Object> cdo = this.queue;
            h4 h4Var = this.errors;
            int iAddAndGet = 1;
            while (this.windows.get() != 0) {
                Cthis<T> cthis = this.window;
                boolean z = this.done;
                if (z && h4Var.get() != null) {
                    cdo.clear();
                    Throwable thTerminate = h4Var.terminate();
                    if (cthis != 0) {
                        this.window = null;
                        cthis.onError(thTerminate);
                    }
                    observer.onError(thTerminate);
                    return;
                }
                Object objPoll = cdo.poll();
                boolean z2 = objPoll == null;
                if (z && z2) {
                    Throwable thTerminate2 = h4Var.terminate();
                    if (thTerminate2 == null) {
                        if (cthis != 0) {
                            this.window = null;
                            cthis.onComplete();
                        }
                        observer.onComplete();
                        return;
                    }
                    if (cthis != 0) {
                        this.window = null;
                        cthis.onError(thTerminate2);
                    }
                    observer.onError(thTerminate2);
                    return;
                }
                if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else if (objPoll != NEXT_WINDOW) {
                    cthis.onNext(objPoll);
                } else {
                    if (cthis != 0) {
                        this.window = null;
                        cthis.onComplete();
                    }
                    if (!this.stopWindows.get()) {
                        Cthis<T> cthisM29832goto = Cthis.m29832goto(this.capacityHint, this);
                        this.window = cthisM29832goto;
                        this.windows.getAndIncrement();
                        try {
                            ObservableSource observableSource = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.other.call(), "The other Callable returned a null ObservableSource");
                            Cdo<T, B> cdo2 = new Cdo<>(this);
                            if (this.boundaryObserver.compareAndSet(null, cdo2)) {
                                observableSource.subscribe(cdo2);
                                observer.onNext(cthisM29832goto);
                            }
                        } catch (Throwable th) {
                            t80.m7781if(th);
                            h4Var.addThrowable(th);
                            this.done = true;
                        }
                    }
                }
            }
            cdo.clear();
            this.window = null;
        }

        public void innerComplete() {
            this.upstream.dispose();
            this.done = true;
            drain();
        }

        public void innerError(Throwable th) {
            this.upstream.dispose();
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
            } else {
                this.done = true;
                drain();
            }
        }

        public void innerNext(Cdo<T, B> cdo) {
            this.boundaryObserver.compareAndSet(cdo, null);
            this.queue.offer(NEXT_WINDOW);
            drain();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.stopWindows.get();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            disposeBoundary();
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            disposeBoundary();
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
            } else {
                this.done = true;
                drain();
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.queue.offer(t);
            drain();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
                this.queue.offer(NEXT_WINDOW);
                drain();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.windows.decrementAndGet() == 0) {
                this.upstream.dispose();
            }
        }
    }

    public j2(ObservableSource<T> observableSource, Callable<? extends ObservableSource<B>> callable, int i) {
        super(observableSource);
        this.f26648if = callable;
        this.f26647for = i;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Cnew<T>> observer) {
        this.f26500do.subscribe(new Cif(observer, this.f26647for, this.f26648if));
    }
}
