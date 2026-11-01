package io.reactivex.internal.operators.flowable;

import android.support.v4.b12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class FlowableConcatMap<T, R> extends io.reactivex.internal.operators.flowable.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends Publisher<? extends R>> f25474for;

    /* renamed from: new, reason: not valid java name */
    public final int f25475new;

    /* renamed from: try, reason: not valid java name */
    public final io.reactivex.internal.util.Ctry f25476try;

    public interface ConcatMapSupport<T> {
        void innerComplete();

        void innerError(Throwable th);

        void innerNext(T t);
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableConcatMap$case, reason: invalid class name */
    public static final class Ccase<T> implements Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T> f25477do;

        /* renamed from: for, reason: not valid java name */
        public boolean f25478for;

        /* renamed from: if, reason: not valid java name */
        public final T f25479if;

        public Ccase(T t, Subscriber<? super T> subscriber) {
            this.f25479if = t;
            this.f25477do = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (j <= 0 || this.f25478for) {
                return;
            }
            this.f25478for = true;
            Subscriber<? super T> subscriber = this.f25477do;
            subscriber.onNext(this.f25479if);
            subscriber.onComplete();
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableConcatMap$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f25480do;

        static {
            int[] iArr = new int[io.reactivex.internal.util.Ctry.values().length];
            f25480do = iArr;
            try {
                iArr[io.reactivex.internal.util.Ctry.BOUNDARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f25480do[io.reactivex.internal.util.Ctry.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableConcatMap$for, reason: invalid class name */
    public static final class Cfor<T, R> extends Cif<T, R> {
        private static final long serialVersionUID = -2945777694260521066L;
        public final Subscriber<? super R> downstream;
        public final boolean veryEnd;

        public Cfor(Subscriber<? super R> subscriber, Function<? super T, ? extends Publisher<? extends R>> function, int i, boolean z) {
            super(function, i);
            this.downstream = subscriber;
            this.veryEnd = z;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.inner.cancel();
            this.upstream.cancel();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.Cif
        public void drain() {
            Object objCall;
            if (getAndIncrement() == 0) {
                while (!this.cancelled) {
                    if (!this.active) {
                        boolean z = this.done;
                        if (z && !this.veryEnd && this.errors.get() != null) {
                            this.downstream.onError(this.errors.terminate());
                            return;
                        }
                        try {
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
                                try {
                                    Publisher publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.mapper.apply(tPoll), "The mapper returned a null Publisher");
                                    if (this.sourceMode != 1) {
                                        int i = this.consumed + 1;
                                        if (i == this.limit) {
                                            this.consumed = 0;
                                            this.upstream.request(i);
                                        } else {
                                            this.consumed = i;
                                        }
                                    }
                                    if (publisher instanceof Callable) {
                                        try {
                                            objCall = ((Callable) publisher).call();
                                        } catch (Throwable th) {
                                            t80.m7781if(th);
                                            this.errors.addThrowable(th);
                                            if (!this.veryEnd) {
                                                this.upstream.cancel();
                                                this.downstream.onError(this.errors.terminate());
                                                return;
                                            }
                                            objCall = null;
                                        }
                                        if (objCall == null) {
                                            continue;
                                        } else if (this.inner.isUnbounded()) {
                                            this.downstream.onNext(objCall);
                                        } else {
                                            this.active = true;
                                            Ctry<R> ctry = this.inner;
                                            ctry.setSubscription(new Ccase(objCall, ctry));
                                        }
                                    } else {
                                        this.active = true;
                                        publisher.subscribe(this.inner);
                                    }
                                } catch (Throwable th2) {
                                    t80.m7781if(th2);
                                    this.upstream.cancel();
                                    this.errors.addThrowable(th2);
                                    this.downstream.onError(this.errors.terminate());
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            t80.m7781if(th3);
                            this.upstream.cancel();
                            this.errors.addThrowable(th3);
                            this.downstream.onError(this.errors.terminate());
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.ConcatMapSupport
        public void innerError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (!this.veryEnd) {
                this.upstream.cancel();
                this.done = true;
            }
            this.active = false;
            drain();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.ConcatMapSupport
        public void innerNext(R r) {
            this.downstream.onNext(r);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
            } else {
                this.done = true;
                drain();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.inner.request(j);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.Cif
        public void subscribeActual() {
            this.downstream.onSubscribe(this);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableConcatMap$if, reason: invalid class name */
    public static abstract class Cif<T, R> extends AtomicInteger implements FlowableSubscriber<T>, ConcatMapSupport<R>, Subscription {
        private static final long serialVersionUID = -3511336836796789179L;
        public volatile boolean active;
        public volatile boolean cancelled;
        public int consumed;
        public volatile boolean done;
        public final int limit;
        public final Function<? super T, ? extends Publisher<? extends R>> mapper;
        public final int prefetch;
        public SimpleQueue<T> queue;
        public int sourceMode;
        public Subscription upstream;
        public final Ctry<R> inner = new Ctry<>(this);
        public final h4 errors = new h4();

        public Cif(Function<? super T, ? extends Publisher<? extends R>> function, int i) {
            this.mapper = function;
            this.prefetch = i;
            this.limit = i - (i >> 2);
        }

        public abstract void drain();

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.ConcatMapSupport
        public final void innerComplete() {
            this.active = false;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(T t) {
            if (this.sourceMode == 2 || this.queue.offer(t)) {
                drain();
            } else {
                this.upstream.cancel();
                onError(new IllegalStateException("Queue full?!"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int iRequestFusion = queueSubscription.requestFusion(7);
                    if (iRequestFusion == 1) {
                        this.sourceMode = iRequestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        subscribeActual();
                        drain();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.sourceMode = iRequestFusion;
                        this.queue = queueSubscription;
                        subscribeActual();
                        subscription.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new b12(this.prefetch);
                subscribeActual();
                subscription.request(this.prefetch);
            }
        }

        public abstract void subscribeActual();
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableConcatMap$new, reason: invalid class name */
    public static final class Cnew<T, R> extends Cif<T, R> {
        private static final long serialVersionUID = 7898995095634264146L;
        public final Subscriber<? super R> downstream;
        public final AtomicInteger wip;

        public Cnew(Subscriber<? super R> subscriber, Function<? super T, ? extends Publisher<? extends R>> function, int i) {
            super(function, i);
            this.downstream = subscriber;
            this.wip = new AtomicInteger();
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.inner.cancel();
            this.upstream.cancel();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.Cif
        public void drain() {
            if (this.wip.getAndIncrement() == 0) {
                while (!this.cancelled) {
                    if (!this.active) {
                        boolean z = this.done;
                        try {
                            T tPoll = this.queue.poll();
                            boolean z2 = tPoll == null;
                            if (z && z2) {
                                this.downstream.onComplete();
                                return;
                            }
                            if (!z2) {
                                try {
                                    Publisher publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.mapper.apply(tPoll), "The mapper returned a null Publisher");
                                    if (this.sourceMode != 1) {
                                        int i = this.consumed + 1;
                                        if (i == this.limit) {
                                            this.consumed = 0;
                                            this.upstream.request(i);
                                        } else {
                                            this.consumed = i;
                                        }
                                    }
                                    if (publisher instanceof Callable) {
                                        try {
                                            Object objCall = ((Callable) publisher).call();
                                            if (objCall == null) {
                                                continue;
                                            } else if (!this.inner.isUnbounded()) {
                                                this.active = true;
                                                Ctry<R> ctry = this.inner;
                                                ctry.setSubscription(new Ccase(objCall, ctry));
                                            } else if (get() == 0 && compareAndSet(0, 1)) {
                                                this.downstream.onNext(objCall);
                                                if (!compareAndSet(1, 0)) {
                                                    this.downstream.onError(this.errors.terminate());
                                                    return;
                                                }
                                            }
                                        } catch (Throwable th) {
                                            t80.m7781if(th);
                                            this.upstream.cancel();
                                            this.errors.addThrowable(th);
                                            this.downstream.onError(this.errors.terminate());
                                            return;
                                        }
                                    } else {
                                        this.active = true;
                                        publisher.subscribe(this.inner);
                                    }
                                } catch (Throwable th2) {
                                    t80.m7781if(th2);
                                    this.upstream.cancel();
                                    this.errors.addThrowable(th2);
                                    this.downstream.onError(this.errors.terminate());
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            t80.m7781if(th3);
                            this.upstream.cancel();
                            this.errors.addThrowable(th3);
                            this.downstream.onError(this.errors.terminate());
                            return;
                        }
                    }
                    if (this.wip.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.ConcatMapSupport
        public void innerError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            this.upstream.cancel();
            if (getAndIncrement() == 0) {
                this.downstream.onError(this.errors.terminate());
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.ConcatMapSupport
        public void innerNext(R r) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.downstream.onNext(r);
                if (compareAndSet(1, 0)) {
                    return;
                }
                this.downstream.onError(this.errors.terminate());
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            this.inner.cancel();
            if (getAndIncrement() == 0) {
                this.downstream.onError(this.errors.terminate());
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.inner.request(j);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.Cif
        public void subscribeActual() {
            this.downstream.onSubscribe(this);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableConcatMap$try, reason: invalid class name */
    public static final class Ctry<R> extends io.reactivex.internal.subscriptions.Cif implements FlowableSubscriber<R> {
        private static final long serialVersionUID = 897683679971470653L;
        public final ConcatMapSupport<R> parent;
        public long produced;

        public Ctry(ConcatMapSupport<R> concatMapSupport) {
            super(false);
            this.parent = concatMapSupport;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            long j = this.produced;
            if (j != 0) {
                this.produced = 0L;
                produced(j);
            }
            this.parent.innerComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            long j = this.produced;
            if (j != 0) {
                this.produced = 0L;
                produced(j);
            }
            this.parent.innerError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(R r) {
            this.produced++;
            this.parent.innerNext(r);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            setSubscription(subscription);
        }
    }

    public FlowableConcatMap(io.reactivex.Cfor<T> cfor, Function<? super T, ? extends Publisher<? extends R>> function, int i, io.reactivex.internal.util.Ctry ctry) {
        super(cfor);
        this.f25474for = function;
        this.f25475new = i;
        this.f25476try = ctry;
    }

    public static <T, R> Subscriber<T> L7(Subscriber<? super R> subscriber, Function<? super T, ? extends Publisher<? extends R>> function, int i, io.reactivex.internal.util.Ctry ctry) {
        int i2 = Cdo.f25480do[ctry.ordinal()];
        return i2 != 1 ? i2 != 2 ? new Cnew(subscriber, function, i) : new Cfor(subscriber, function, i, true) : new Cfor(subscriber, function, i, false);
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        if (j1.m29493if(this.f25614if, subscriber, this.f25474for)) {
            return;
        }
        this.f25614if.subscribe(L7(subscriber, this.f25474for, this.f25475new, this.f25476try));
    }
}
