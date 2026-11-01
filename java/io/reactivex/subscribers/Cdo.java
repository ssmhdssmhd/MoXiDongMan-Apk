package io.reactivex.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.subscriptions.Cfor;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.subscribers.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo<T> extends io.reactivex.observers.Cdo<T, Cdo<T>> implements FlowableSubscriber<T>, Subscription, Disposable {

    /* renamed from: catch, reason: not valid java name */
    private final Subscriber<? super T> f27619catch;

    /* renamed from: class, reason: not valid java name */
    private volatile boolean f27620class;

    /* renamed from: const, reason: not valid java name */
    private final AtomicReference<Subscription> f27621const;

    /* renamed from: final, reason: not valid java name */
    private final AtomicLong f27622final;

    /* renamed from: super, reason: not valid java name */
    private QueueSubscription<T> f27623super;

    /* renamed from: io.reactivex.subscribers.do$do, reason: invalid class name and collision with other inner class name */
    public enum EnumC0353do implements FlowableSubscriber<Object> {
        INSTANCE;

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
        }
    }

    public Cdo() {
        this(EnumC0353do.INSTANCE, Long.MAX_VALUE);
    }

    public static <T> Cdo<T> u() {
        return new Cdo<>();
    }

    public static <T> Cdo<T> v(long j) {
        return new Cdo<>(j);
    }

    public static <T> Cdo<T> w(Subscriber<? super T> subscriber) {
        return new Cdo<>(subscriber);
    }

    public static String x(int i) {
        if (i == 0) {
            return "NONE";
        }
        if (i == 1) {
            return "SYNC";
        }
        if (i == 2) {
            return "ASYNC";
        }
        return "Unknown(" + i + ")";
    }

    public void A() {
    }

    public final Cdo<T> B(long j) {
        request(j);
        return this;
    }

    public final Cdo<T> C(int i) {
        this.f27449else = i;
        return this;
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        if (this.f27620class) {
            return;
        }
        this.f27620class = true;
        Cfor.cancel(this.f27621const);
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        cancel();
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f27620class;
    }

    public final Cdo<T> o() {
        if (this.f27623super != null) {
            return this;
        }
        throw new AssertionError("Upstream is not fuseable.");
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (!this.f27447case) {
            this.f27447case = true;
            if (this.f27621const.get() == null) {
                this.f27450for.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f27455try = Thread.currentThread();
            this.f27453new++;
            this.f27619catch.onComplete();
        } finally {
            this.f27448do.countDown();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (!this.f27447case) {
            this.f27447case = true;
            if (this.f27621const.get() == null) {
                this.f27450for.add(new NullPointerException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f27455try = Thread.currentThread();
            this.f27450for.add(th);
            if (th == null) {
                this.f27450for.add(new IllegalStateException("onError received a null Throwable"));
            }
            this.f27619catch.onError(th);
        } finally {
            this.f27448do.countDown();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (!this.f27447case) {
            this.f27447case = true;
            if (this.f27621const.get() == null) {
                this.f27450for.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        this.f27455try = Thread.currentThread();
        if (this.f27451goto != 2) {
            this.f27452if.add(t);
            if (t == null) {
                this.f27450for.add(new NullPointerException("onNext received a null value"));
            }
            this.f27619catch.onNext(t);
            return;
        }
        while (true) {
            try {
                T tPoll = this.f27623super.poll();
                if (tPoll == null) {
                    return;
                } else {
                    this.f27452if.add(tPoll);
                }
            } catch (Throwable th) {
                this.f27450for.add(th);
                this.f27623super.cancel();
                return;
            }
        }
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        this.f27455try = Thread.currentThread();
        if (subscription == null) {
            this.f27450for.add(new NullPointerException("onSubscribe received a null Subscription"));
            return;
        }
        if (!this.f27621const.compareAndSet(null, subscription)) {
            subscription.cancel();
            if (this.f27621const.get() != Cfor.CANCELLED) {
                this.f27450for.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + subscription));
                return;
            }
            return;
        }
        int i = this.f27449else;
        if (i != 0 && (subscription instanceof QueueSubscription)) {
            QueueSubscription<T> queueSubscription = (QueueSubscription) subscription;
            this.f27623super = queueSubscription;
            int iRequestFusion = queueSubscription.requestFusion(i);
            this.f27451goto = iRequestFusion;
            if (iRequestFusion == 1) {
                this.f27447case = true;
                this.f27455try = Thread.currentThread();
                while (true) {
                    try {
                        T tPoll = this.f27623super.poll();
                        if (tPoll == null) {
                            this.f27453new++;
                            return;
                        }
                        this.f27452if.add(tPoll);
                    } catch (Throwable th) {
                        this.f27450for.add(th);
                        return;
                    }
                }
            }
        }
        this.f27619catch.onSubscribe(subscription);
        long andSet = this.f27622final.getAndSet(0L);
        if (andSet != 0) {
            subscription.request(andSet);
        }
        A();
    }

    public final Cdo<T> p(int i) {
        int i2 = this.f27451goto;
        if (i2 == i) {
            return this;
        }
        if (this.f27623super == null) {
            throw f("Upstream is not fuseable");
        }
        throw new AssertionError("Fusion mode different. Expected: " + x(i) + ", actual: " + x(i2));
    }

    public final Cdo<T> q() {
        if (this.f27623super == null) {
            return this;
        }
        throw new AssertionError("Upstream is fuseable.");
    }

    @Override // io.reactivex.observers.Cdo
    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public final Cdo<T> mo29755throw() {
        if (this.f27621const.get() != null) {
            throw f("Subscribed!");
        }
        if (this.f27450for.isEmpty()) {
            return this;
        }
        throw f("Not subscribed but errors found");
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        Cfor.deferredRequest(this.f27621const, this.f27622final, j);
    }

    public final Cdo<T> s(Consumer<? super Cdo<T>> consumer) {
        try {
            consumer.accept(this);
            return this;
        } catch (Throwable th) {
            throw Ccase.m29712case(th);
        }
    }

    @Override // io.reactivex.observers.Cdo
    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public final Cdo<T> mo29742native() {
        if (this.f27621const.get() != null) {
            return this;
        }
        throw f("Not subscribed!");
    }

    public final boolean y() {
        return this.f27621const.get() != null;
    }

    public final boolean z() {
        return this.f27620class;
    }

    public Cdo(long j) {
        this(EnumC0353do.INSTANCE, j);
    }

    public Cdo(Subscriber<? super T> subscriber) {
        this(subscriber, Long.MAX_VALUE);
    }

    public Cdo(Subscriber<? super T> subscriber, long j) {
        if (j >= 0) {
            this.f27619catch = subscriber;
            this.f27621const = new AtomicReference<>();
            this.f27622final = new AtomicLong(j);
            return;
        }
        throw new IllegalArgumentException("Negative initial request not allowed");
    }
}
