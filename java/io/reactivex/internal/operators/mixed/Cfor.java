package io.reactivex.internal.operators.mixed;

import android.support.v4.a01;
import android.support.v4.b12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.util.Ccase;
import io.reactivex.internal.util.Ctry;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.mixed.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor<T> extends np {

    /* renamed from: do, reason: not valid java name */
    public final io.reactivex.Cfor<T> f26308do;

    /* renamed from: for, reason: not valid java name */
    public final Ctry f26309for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends CompletableSource> f26310if;

    /* renamed from: new, reason: not valid java name */
    public final int f26311new;

    /* renamed from: io.reactivex.internal.operators.mixed.for$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements FlowableSubscriber<T>, Disposable {
        private static final long serialVersionUID = 3610901111000061034L;
        public volatile boolean active;
        public int consumed;
        public volatile boolean disposed;
        public volatile boolean done;
        public final CompletableObserver downstream;
        public final Ctry errorMode;
        public final h4 errors = new h4();
        public final C0308do inner = new C0308do(this);
        public final Function<? super T, ? extends CompletableSource> mapper;
        public final int prefetch;
        public final SimplePlainQueue<T> queue;
        public Subscription upstream;

        /* renamed from: io.reactivex.internal.operators.mixed.for$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0308do extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = 5638352172918776687L;
            public final Cdo<?> parent;

            public C0308do(Cdo<?> cdo) {
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
            this.queue = new b12(i);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.disposed = true;
            this.upstream.cancel();
            this.inner.dispose();
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
                    if (this.errorMode == Ctry.BOUNDARY && this.errors.get() != null) {
                        this.queue.clear();
                        this.downstream.onError(this.errors.terminate());
                        return;
                    }
                    boolean z = this.done;
                    T tPoll = this.queue.poll();
                    boolean z2 = tPoll == null;
                    if (z && z2) {
                        Throwable thTerminate = this.errors.terminate();
                        if (thTerminate != null) {
                            this.downstream.onError(thTerminate);
                            return;
                        } else {
                            this.downstream.onComplete();
                            return;
                        }
                    }
                    if (!z2) {
                        int i = this.prefetch;
                        int i2 = i - (i >> 1);
                        int i3 = this.consumed + 1;
                        if (i3 == i2) {
                            this.consumed = 0;
                            this.upstream.request(i2);
                        } else {
                            this.consumed = i3;
                        }
                        try {
                            CompletableSource completableSource = (CompletableSource) Cif.m29468else(this.mapper.apply(tPoll), "The mapper returned a null CompletableSource");
                            this.active = true;
                            completableSource.subscribe(this.inner);
                        } catch (Throwable th) {
                            t80.m7781if(th);
                            this.queue.clear();
                            this.upstream.cancel();
                            this.errors.addThrowable(th);
                            this.downstream.onError(this.errors.terminate());
                            return;
                        }
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
            this.upstream.cancel();
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

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
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
            this.inner.dispose();
            Throwable thTerminate = this.errors.terminate();
            if (thTerminate != Ccase.f27435do) {
                this.downstream.onError(thTerminate);
            }
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.queue.offer(t)) {
                drain();
            } else {
                this.upstream.cancel();
                onError(new a01("Queue full?!"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                subscription.request(this.prefetch);
            }
        }
    }

    public Cfor(io.reactivex.Cfor<T> cfor, Function<? super T, ? extends CompletableSource> function, Ctry ctry, int i) {
        this.f26308do = cfor;
        this.f26310if = function;
        this.f26309for = ctry;
        this.f26311new = i;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f26308do.m5(new Cdo(completableObserver, this.f26310if, this.f26309for, this.f26311new));
    }
}
