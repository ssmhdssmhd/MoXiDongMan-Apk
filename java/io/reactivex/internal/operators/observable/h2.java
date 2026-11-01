package io.reactivex.internal.operators.observable;

import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.n10;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.subjects.Cthis;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class h2<T, B> extends io.reactivex.internal.operators.observable.Cdo<T, Cnew<T>> {

    /* renamed from: for, reason: not valid java name */
    public final int f26576for;

    /* renamed from: if, reason: not valid java name */
    public final ObservableSource<B> f26577if;

    /* renamed from: io.reactivex.internal.operators.observable.h2$do, reason: invalid class name */
    public static final class Cdo<T, B> extends n10<B> {

        /* renamed from: for, reason: not valid java name */
        public boolean f26578for;

        /* renamed from: if, reason: not valid java name */
        public final Cif<T, B> f26579if;

        public Cdo(Cif<T, B> cif) {
            this.f26579if = cif;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26578for) {
                return;
            }
            this.f26578for = true;
            this.f26579if.innerComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26578for) {
                jp1.l(th);
            } else {
                this.f26578for = true;
                this.f26579if.innerError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(B b) {
            if (this.f26578for) {
                return;
            }
            this.f26579if.innerNext();
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.h2$if, reason: invalid class name */
    public static final class Cif<T, B> extends AtomicInteger implements Observer<T>, Disposable, Runnable {
        public static final Object NEXT_WINDOW = new Object();
        private static final long serialVersionUID = 2233020065421370272L;
        public final int capacityHint;
        public volatile boolean done;
        public final Observer<? super Cnew<T>> downstream;
        public Cthis<T> window;
        public final Cdo<T, B> boundaryObserver = new Cdo<>(this);
        public final AtomicReference<Disposable> upstream = new AtomicReference<>();
        public final AtomicInteger windows = new AtomicInteger(1);
        public final io.reactivex.internal.queue.Cdo<Object> queue = new io.reactivex.internal.queue.Cdo<>();
        public final h4 errors = new h4();
        public final AtomicBoolean stopWindows = new AtomicBoolean();

        public Cif(Observer<? super Cnew<T>> observer, int i) {
            this.downstream = observer;
            this.capacityHint = i;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.stopWindows.compareAndSet(false, true)) {
                this.boundaryObserver.dispose();
                if (this.windows.decrementAndGet() == 0) {
                    io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
                }
            }
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
                        observer.onNext(cthisM29832goto);
                    }
                }
            }
            cdo.clear();
            this.window = null;
        }

        public void innerComplete() {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            this.done = true;
            drain();
        }

        public void innerError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
            } else {
                this.done = true;
                drain();
            }
        }

        public void innerNext() {
            this.queue.offer(NEXT_WINDOW);
            drain();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.stopWindows.get();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.boundaryObserver.dispose();
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.boundaryObserver.dispose();
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
            if (io.reactivex.internal.disposables.Cdo.setOnce(this.upstream, disposable)) {
                innerNext();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.windows.decrementAndGet() == 0) {
                io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            }
        }
    }

    public h2(ObservableSource<T> observableSource, ObservableSource<B> observableSource2, int i) {
        super(observableSource);
        this.f26577if = observableSource2;
        this.f26576for = i;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Cnew<T>> observer) {
        Cif cif = new Cif(observer, this.f26576for);
        observer.onSubscribe(cif);
        this.f26577if.subscribe(cif.boundaryObserver);
        this.f26500do.subscribe(cif);
    }
}
