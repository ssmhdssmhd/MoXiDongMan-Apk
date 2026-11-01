package io.reactivex.internal.operators.observable;

import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.subjects.Cthis;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class g2<T> extends io.reactivex.internal.operators.observable.Cdo<T, Cnew<T>> {

    /* renamed from: for, reason: not valid java name */
    public final long f26558for;

    /* renamed from: if, reason: not valid java name */
    public final long f26559if;

    /* renamed from: new, reason: not valid java name */
    public final int f26560new;

    /* renamed from: io.reactivex.internal.operators.observable.g2$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Observer<T>, Disposable, Runnable {
        private static final long serialVersionUID = -7481782523886138128L;
        public volatile boolean cancelled;
        public final int capacityHint;
        public final long count;
        public final Observer<? super Cnew<T>> downstream;
        public long size;
        public Disposable upstream;
        public Cthis<T> window;

        public Cdo(Observer<? super Cnew<T>> observer, long j, int i) {
            this.downstream = observer;
            this.count = j;
            this.capacityHint = i;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.cancelled = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            Cthis<T> cthis = this.window;
            if (cthis != null) {
                this.window = null;
                cthis.onComplete();
            }
            this.downstream.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            Cthis<T> cthis = this.window;
            if (cthis != null) {
                this.window = null;
                cthis.onError(th);
            }
            this.downstream.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            Cthis<T> cthisM29832goto = this.window;
            if (cthisM29832goto == null && !this.cancelled) {
                cthisM29832goto = Cthis.m29832goto(this.capacityHint, this);
                this.window = cthisM29832goto;
                this.downstream.onNext(cthisM29832goto);
            }
            if (cthisM29832goto != null) {
                cthisM29832goto.onNext(t);
                long j = this.size + 1;
                this.size = j;
                if (j >= this.count) {
                    this.size = 0L;
                    this.window = null;
                    cthisM29832goto.onComplete();
                    if (this.cancelled) {
                        this.upstream.dispose();
                    }
                }
            }
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
            if (this.cancelled) {
                this.upstream.dispose();
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.g2$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicBoolean implements Observer<T>, Disposable, Runnable {
        private static final long serialVersionUID = 3366976432059579510L;
        public volatile boolean cancelled;
        public final int capacityHint;
        public final long count;
        public final Observer<? super Cnew<T>> downstream;
        public long firstEmission;
        public long index;
        public final long skip;
        public Disposable upstream;
        public final AtomicInteger wip = new AtomicInteger();
        public final ArrayDeque<Cthis<T>> windows = new ArrayDeque<>();

        public Cif(Observer<? super Cnew<T>> observer, long j, long j2, int i) {
            this.downstream = observer;
            this.count = j;
            this.skip = j2;
            this.capacityHint = i;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.cancelled = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            ArrayDeque<Cthis<T>> arrayDeque = this.windows;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().onComplete();
            }
            this.downstream.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            ArrayDeque<Cthis<T>> arrayDeque = this.windows;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().onError(th);
            }
            this.downstream.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            ArrayDeque<Cthis<T>> arrayDeque = this.windows;
            long j = this.index;
            long j2 = this.skip;
            if (j % j2 == 0 && !this.cancelled) {
                this.wip.getAndIncrement();
                Cthis<T> cthisM29832goto = Cthis.m29832goto(this.capacityHint, this);
                arrayDeque.offer(cthisM29832goto);
                this.downstream.onNext(cthisM29832goto);
            }
            long j3 = this.firstEmission + 1;
            Iterator<Cthis<T>> it = arrayDeque.iterator();
            while (it.hasNext()) {
                it.next().onNext(t);
            }
            if (j3 >= this.count) {
                arrayDeque.poll().onComplete();
                if (arrayDeque.isEmpty() && this.cancelled) {
                    this.upstream.dispose();
                    return;
                }
                this.firstEmission = j3 - j2;
            } else {
                this.firstEmission = j3;
            }
            this.index = j + 1;
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
            if (this.wip.decrementAndGet() == 0 && this.cancelled) {
                this.upstream.dispose();
            }
        }
    }

    public g2(ObservableSource<T> observableSource, long j, long j2, int i) {
        super(observableSource);
        this.f26559if = j;
        this.f26558for = j2;
        this.f26560new = i;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Cnew<T>> observer) {
        if (this.f26559if == this.f26558for) {
            this.f26500do.subscribe(new Cdo(observer, this.f26559if, this.f26560new));
        } else {
            this.f26500do.subscribe(new Cif(observer, this.f26559if, this.f26558for, this.f26560new));
        }
    }
}
