package io.reactivex.internal.operators.flowable;

import android.R;
import android.support.v4.b12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.r6;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class h0<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final MaybeSource<? extends T> f25669for;

    /* renamed from: io.reactivex.internal.operators.flowable.h0$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        public static final int OTHER_STATE_CONSUMED_OR_EMPTY = 2;
        public static final int OTHER_STATE_HAS_VALUE = 1;
        private static final long serialVersionUID = -4592979584110982903L;
        public volatile boolean cancelled;
        public int consumed;
        public final Subscriber<? super T> downstream;
        public long emitted;
        public final int limit;
        public volatile boolean mainDone;
        public volatile int otherState;
        public final int prefetch;
        public volatile SimplePlainQueue<T> queue;
        public T singleItem;
        public final AtomicReference<Subscription> mainSubscription = new AtomicReference<>();
        public final C0282do<T> otherObserver = new C0282do<>(this);
        public final h4 error = new h4();
        public final AtomicLong requested = new AtomicLong();

        /* renamed from: io.reactivex.internal.operators.flowable.h0$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0282do<T> extends AtomicReference<Disposable> implements MaybeObserver<T> {
            private static final long serialVersionUID = -2935427570954647017L;
            public final Cdo<T> parent;

            public C0282do(Cdo<T> cdo) {
                this.parent = cdo;
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.parent.otherComplete();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.parent.otherError(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(T t) {
                this.parent.otherSuccess(t);
            }
        }

        public Cdo(Subscriber<? super T> subscriber) {
            this.downstream = subscriber;
            int iG = Cfor.g();
            this.prefetch = iG;
            this.limit = iG - (iG >> 2);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            io.reactivex.internal.subscriptions.Cfor.cancel(this.mainSubscription);
            io.reactivex.internal.disposables.Cdo.dispose(this.otherObserver);
            if (getAndIncrement() == 0) {
                this.queue = null;
                this.singleItem = null;
            }
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        public void drainLoop() {
            Subscriber<? super T> subscriber = this.downstream;
            long j = this.emitted;
            int i = this.consumed;
            int i2 = this.limit;
            int i3 = 1;
            int iAddAndGet = 1;
            while (true) {
                long j2 = this.requested.get();
                while (j != j2) {
                    if (this.cancelled) {
                        this.singleItem = null;
                        this.queue = null;
                        return;
                    }
                    if (this.error.get() != null) {
                        this.singleItem = null;
                        this.queue = null;
                        subscriber.onError(this.error.terminate());
                        return;
                    }
                    int i4 = this.otherState;
                    if (i4 == i3) {
                        T t = this.singleItem;
                        this.singleItem = null;
                        this.otherState = 2;
                        subscriber.onNext(t);
                        j++;
                    } else {
                        boolean z = this.mainDone;
                        SimplePlainQueue<T> simplePlainQueue = this.queue;
                        R.bool boolVarPoll = simplePlainQueue != null ? simplePlainQueue.poll() : null;
                        boolean z2 = boolVarPoll == null;
                        if (z && z2 && i4 == 2) {
                            this.queue = null;
                            subscriber.onComplete();
                            return;
                        } else {
                            if (z2) {
                                break;
                            }
                            subscriber.onNext(boolVarPoll);
                            j++;
                            i++;
                            if (i == i2) {
                                this.mainSubscription.get().request(i2);
                                i = 0;
                            }
                            i3 = 1;
                        }
                    }
                }
                if (j == j2) {
                    if (this.cancelled) {
                        this.singleItem = null;
                        this.queue = null;
                        return;
                    }
                    if (this.error.get() != null) {
                        this.singleItem = null;
                        this.queue = null;
                        subscriber.onError(this.error.terminate());
                        return;
                    }
                    boolean z3 = this.mainDone;
                    SimplePlainQueue<T> simplePlainQueue2 = this.queue;
                    boolean z4 = simplePlainQueue2 == null || simplePlainQueue2.isEmpty();
                    if (z3 && z4 && this.otherState == 2) {
                        this.queue = null;
                        subscriber.onComplete();
                        return;
                    }
                }
                this.emitted = j;
                this.consumed = i;
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                } else {
                    i3 = 1;
                }
            }
        }

        public SimplePlainQueue<T> getOrCreateQueue() {
            SimplePlainQueue<T> simplePlainQueue = this.queue;
            if (simplePlainQueue != null) {
                return simplePlainQueue;
            }
            b12 b12Var = new b12(Cfor.g());
            this.queue = b12Var;
            return b12Var;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.mainDone = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.error.addThrowable(th)) {
                jp1.l(th);
            } else {
                io.reactivex.internal.disposables.Cdo.dispose(this.otherObserver);
                drain();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (compareAndSet(0, 1)) {
                long j = this.emitted;
                if (this.requested.get() != j) {
                    SimplePlainQueue<T> simplePlainQueue = this.queue;
                    if (simplePlainQueue == null || simplePlainQueue.isEmpty()) {
                        this.emitted = j + 1;
                        this.downstream.onNext(t);
                        int i = this.consumed + 1;
                        if (i == this.limit) {
                            this.consumed = 0;
                            this.mainSubscription.get().request(i);
                        } else {
                            this.consumed = i;
                        }
                    } else {
                        simplePlainQueue.offer(t);
                    }
                } else {
                    getOrCreateQueue().offer(t);
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                getOrCreateQueue().offer(t);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            drainLoop();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.setOnce(this.mainSubscription, subscription, this.prefetch);
        }

        public void otherComplete() {
            this.otherState = 2;
            drain();
        }

        public void otherError(Throwable th) {
            if (!this.error.addThrowable(th)) {
                jp1.l(th);
            } else {
                io.reactivex.internal.subscriptions.Cfor.cancel(this.mainSubscription);
                drain();
            }
        }

        public void otherSuccess(T t) {
            if (compareAndSet(0, 1)) {
                long j = this.emitted;
                if (this.requested.get() != j) {
                    this.emitted = j + 1;
                    this.downstream.onNext(t);
                    this.otherState = 2;
                } else {
                    this.singleItem = t;
                    this.otherState = 1;
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            } else {
                this.singleItem = t;
                this.otherState = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            drainLoop();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            r6.m6775do(this.requested, j);
            drain();
        }
    }

    public h0(Cfor<T> cfor, MaybeSource<? extends T> maybeSource) {
        super(cfor);
        this.f25669for = maybeSource;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cdo cdo = new Cdo(subscriber);
        subscriber.onSubscribe(cdo);
        this.f25614if.m5(cdo);
        this.f25669for.subscribe(cdo.otherObserver);
    }
}
