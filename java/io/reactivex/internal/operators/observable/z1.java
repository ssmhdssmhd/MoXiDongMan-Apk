package io.reactivex.internal.operators.observable;

import io.reactivex.Cnew;
import io.reactivex.Ctry;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class z1<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f27020for;

    /* renamed from: if, reason: not valid java name */
    public final long f27021if;

    /* renamed from: new, reason: not valid java name */
    public final Ctry f27022new;

    /* renamed from: try, reason: not valid java name */
    public final boolean f27023try;

    /* renamed from: io.reactivex.internal.operators.observable.z1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Observer<T>, Disposable, Runnable {
        private static final long serialVersionUID = -8296689127439125014L;
        public volatile boolean cancelled;
        public volatile boolean done;
        public final Observer<? super T> downstream;
        public final boolean emitLast;
        public Throwable error;
        public final AtomicReference<T> latest = new AtomicReference<>();
        public final long timeout;
        public volatile boolean timerFired;
        public boolean timerRunning;
        public final TimeUnit unit;
        public Disposable upstream;
        public final Ctry.Cfor worker;

        public Cdo(Observer<? super T> observer, long j, TimeUnit timeUnit, Ctry.Cfor cfor, boolean z) {
            this.downstream = observer;
            this.timeout = j;
            this.unit = timeUnit;
            this.worker = cfor;
            this.emitLast = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.cancelled = true;
            this.upstream.dispose();
            this.worker.dispose();
            if (getAndIncrement() == 0) {
                this.latest.lazySet(null);
            }
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<T> atomicReference = this.latest;
            Observer<? super T> observer = this.downstream;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                boolean z = this.done;
                if (z && this.error != null) {
                    atomicReference.lazySet(null);
                    observer.onError(this.error);
                    this.worker.dispose();
                    return;
                }
                boolean z2 = atomicReference.get() == null;
                if (z) {
                    T andSet = atomicReference.getAndSet(null);
                    if (!z2 && this.emitLast) {
                        observer.onNext(andSet);
                    }
                    observer.onComplete();
                    this.worker.dispose();
                    return;
                }
                if (z2) {
                    if (this.timerFired) {
                        this.timerRunning = false;
                        this.timerFired = false;
                    }
                } else if (!this.timerRunning || this.timerFired) {
                    observer.onNext(atomicReference.getAndSet(null));
                    this.timerFired = false;
                    this.timerRunning = true;
                    this.worker.mo29362for(this, this.timeout, this.unit);
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
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
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.latest.set(t);
            drain();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.timerFired = true;
            drain();
        }
    }

    public z1(Cnew<T> cnew, long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        super(cnew);
        this.f27021if = j;
        this.f27020for = timeUnit;
        this.f27022new = ctry;
        this.f27023try = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f27021if, this.f27020for, this.f27022new.mo4229if(), this.f27023try));
    }
}
