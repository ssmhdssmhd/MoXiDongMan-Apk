package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.tw1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.operators.flowable.FlowableTimeoutTimed;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class FlowableTimeout<T, U, V> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Publisher<U> f25507for;

    /* renamed from: new, reason: not valid java name */
    public final Function<? super T, ? extends Publisher<V>> f25508new;

    /* renamed from: try, reason: not valid java name */
    public final Publisher<? extends T> f25509try;

    public interface TimeoutSelectorSupport extends FlowableTimeoutTimed.TimeoutSupport {
        void onTimeoutError(long j, Throwable th);
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableTimeout$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Subscription> implements FlowableSubscriber<Object>, Disposable {
        private static final long serialVersionUID = 8708641127342403073L;
        public final long idx;
        public final TimeoutSelectorSupport parent;

        public Cdo(long j, TimeoutSelectorSupport timeoutSelectorSupport) {
            this.idx = j;
            this.parent = timeoutSelectorSupport;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Object obj = get();
            io.reactivex.internal.subscriptions.Cfor cfor = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            if (obj != cfor) {
                lazySet(cfor);
                this.parent.onTimeout(this.idx);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Object obj = get();
            io.reactivex.internal.subscriptions.Cfor cfor = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            if (obj == cfor) {
                jp1.l(th);
            } else {
                lazySet(cfor);
                this.parent.onTimeoutError(this.idx, th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            Subscription subscription = (Subscription) get();
            io.reactivex.internal.subscriptions.Cfor cfor = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            if (subscription != cfor) {
                subscription.cancel();
                lazySet(cfor);
                this.parent.onTimeout(this.idx);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableTimeout$for, reason: invalid class name */
    public static final class Cfor<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription, TimeoutSelectorSupport {
        private static final long serialVersionUID = 3764492702657003550L;
        public final Subscriber<? super T> downstream;
        public final Function<? super T, ? extends Publisher<?>> itemTimeoutIndicator;
        public final tw1 task = new tw1();
        public final AtomicReference<Subscription> upstream = new AtomicReference<>();
        public final AtomicLong requested = new AtomicLong();

        public Cfor(Subscriber<? super T> subscriber, Function<? super T, ? extends Publisher<?>> function) {
            this.downstream = subscriber;
            this.itemTimeoutIndicator = function;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
            this.task.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.task.dispose();
                this.downstream.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                jp1.l(th);
            } else {
                this.task.dispose();
                this.downstream.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (compareAndSet(j, j2)) {
                    Disposable disposable = this.task.get();
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    this.downstream.onNext(t);
                    try {
                        Publisher publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.itemTimeoutIndicator.apply(t), "The itemTimeoutIndicator returned a null Publisher.");
                        Cdo cdo = new Cdo(j2, this);
                        if (this.task.replace(cdo)) {
                            publisher.subscribe(cdo);
                        }
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        this.upstream.get().cancel();
                        getAndSet(Long.MAX_VALUE);
                        this.downstream.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.deferredSetOnce(this.upstream, this.requested, subscription);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeoutTimed.TimeoutSupport
        public void onTimeout(long j) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
                this.downstream.onError(new TimeoutException());
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeout.TimeoutSelectorSupport
        public void onTimeoutError(long j, Throwable th) {
            if (!compareAndSet(j, Long.MAX_VALUE)) {
                jp1.l(th);
            } else {
                io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
                this.downstream.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            io.reactivex.internal.subscriptions.Cfor.deferredRequest(this.upstream, this.requested, j);
        }

        public void startFirstTimeout(Publisher<?> publisher) {
            if (publisher != null) {
                Cdo cdo = new Cdo(0L, this);
                if (this.task.replace(cdo)) {
                    publisher.subscribe(cdo);
                }
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableTimeout$if, reason: invalid class name */
    public static final class Cif<T> extends io.reactivex.internal.subscriptions.Cif implements FlowableSubscriber<T>, TimeoutSelectorSupport {
        private static final long serialVersionUID = 3764492702657003550L;
        public long consumed;
        public final Subscriber<? super T> downstream;
        public Publisher<? extends T> fallback;
        public final AtomicLong index;
        public final Function<? super T, ? extends Publisher<?>> itemTimeoutIndicator;
        public final tw1 task;
        public final AtomicReference<Subscription> upstream;

        public Cif(Subscriber<? super T> subscriber, Function<? super T, ? extends Publisher<?>> function, Publisher<? extends T> publisher) {
            super(true);
            this.downstream = subscriber;
            this.itemTimeoutIndicator = function;
            this.task = new tw1();
            this.upstream = new AtomicReference<>();
            this.fallback = publisher;
            this.index = new AtomicLong();
        }

        @Override // io.reactivex.internal.subscriptions.Cif, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.task.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.index.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.task.dispose();
                this.downstream.onComplete();
                this.task.dispose();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.index.getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                jp1.l(th);
                return;
            }
            this.task.dispose();
            this.downstream.onError(th);
            this.task.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = this.index.get();
            if (j != Long.MAX_VALUE) {
                long j2 = j + 1;
                if (this.index.compareAndSet(j, j2)) {
                    Disposable disposable = this.task.get();
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    this.consumed++;
                    this.downstream.onNext(t);
                    try {
                        Publisher publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.itemTimeoutIndicator.apply(t), "The itemTimeoutIndicator returned a null Publisher.");
                        Cdo cdo = new Cdo(j2, this);
                        if (this.task.replace(cdo)) {
                            publisher.subscribe(cdo);
                        }
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        this.upstream.get().cancel();
                        this.index.getAndSet(Long.MAX_VALUE);
                        this.downstream.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.setOnce(this.upstream, subscription)) {
                setSubscription(subscription);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeoutTimed.TimeoutSupport
        public void onTimeout(long j) {
            if (this.index.compareAndSet(j, Long.MAX_VALUE)) {
                io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
                Publisher<? extends T> publisher = this.fallback;
                this.fallback = null;
                long j2 = this.consumed;
                if (j2 != 0) {
                    produced(j2);
                }
                publisher.subscribe(new FlowableTimeoutTimed.Cdo(this.downstream, this));
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeout.TimeoutSelectorSupport
        public void onTimeoutError(long j, Throwable th) {
            if (!this.index.compareAndSet(j, Long.MAX_VALUE)) {
                jp1.l(th);
            } else {
                io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
                this.downstream.onError(th);
            }
        }

        public void startFirstTimeout(Publisher<?> publisher) {
            if (publisher != null) {
                Cdo cdo = new Cdo(0L, this);
                if (this.task.replace(cdo)) {
                    publisher.subscribe(cdo);
                }
            }
        }
    }

    public FlowableTimeout(io.reactivex.Cfor<T> cfor, Publisher<U> publisher, Function<? super T, ? extends Publisher<V>> function, Publisher<? extends T> publisher2) {
        super(cfor);
        this.f25507for = publisher;
        this.f25508new = function;
        this.f25509try = publisher2;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        if (this.f25509try == null) {
            Cfor cfor = new Cfor(subscriber, this.f25508new);
            subscriber.onSubscribe(cfor);
            cfor.startFirstTimeout(this.f25507for);
            this.f25614if.m5(cfor);
            return;
        }
        Cif cif = new Cif(subscriber, this.f25508new, this.f25509try);
        subscriber.onSubscribe(cif);
        cif.startFirstTimeout(this.f25507for);
        this.f25614if.m5(cif);
    }
}
