package io.reactivex.internal.operators.flowable;

import android.R;
import android.support.v4.a01;
import android.support.v4.b12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class y1<T, R> extends io.reactivex.internal.operators.flowable.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends Publisher<? extends R>> f26070for;

    /* renamed from: new, reason: not valid java name */
    public final int f26071new;

    /* renamed from: try, reason: not valid java name */
    public final boolean f26072try;

    /* renamed from: io.reactivex.internal.operators.flowable.y1$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicReference<Subscription> implements FlowableSubscriber<R> {
        private static final long serialVersionUID = 3837284832786408377L;
        public final int bufferSize;
        public volatile boolean done;
        public int fusionMode;
        public final long index;
        public final Cif<T, R> parent;
        public volatile SimpleQueue<R> queue;

        public Cdo(Cif<T, R> cif, long j, int i) {
            this.parent = cif;
            this.index = j;
            this.bufferSize = i;
        }

        public void cancel() {
            Cfor.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Cif<T, R> cif = this.parent;
            if (this.index == cif.unique) {
                this.done = true;
                cif.drain();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Cif<T, R> cif = this.parent;
            if (this.index != cif.unique || !cif.error.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (!cif.delayErrors) {
                cif.upstream.cancel();
                cif.done = true;
            }
            this.done = true;
            cif.drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(R r) {
            Cif<T, R> cif = this.parent;
            if (this.index == cif.unique) {
                if (this.fusionMode != 0 || this.queue.offer(r)) {
                    cif.drain();
                } else {
                    onError(new a01("Queue full?!"));
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.setOnce(this, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int iRequestFusion = queueSubscription.requestFusion(7);
                    if (iRequestFusion == 1) {
                        this.fusionMode = iRequestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        this.parent.drain();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.fusionMode = iRequestFusion;
                        this.queue = queueSubscription;
                        subscription.request(this.bufferSize);
                        return;
                    }
                }
                this.queue = new b12(this.bufferSize);
                subscription.request(this.bufferSize);
            }
        }

        public void request(long j) {
            if (this.fusionMode != 1) {
                get().request(j);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.y1$if, reason: invalid class name */
    public static final class Cif<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        public static final Cdo<Object, Object> CANCELLED;
        private static final long serialVersionUID = -3491074160481096299L;
        public final int bufferSize;
        public volatile boolean cancelled;
        public final boolean delayErrors;
        public volatile boolean done;
        public final Subscriber<? super R> downstream;
        public final Function<? super T, ? extends Publisher<? extends R>> mapper;
        public volatile long unique;
        public Subscription upstream;
        public final AtomicReference<Cdo<T, R>> active = new AtomicReference<>();
        public final AtomicLong requested = new AtomicLong();
        public final h4 error = new h4();

        static {
            Cdo<Object, Object> cdo = new Cdo<>(null, -1L, 1);
            CANCELLED = cdo;
            cdo.cancel();
        }

        public Cif(Subscriber<? super R> subscriber, Function<? super T, ? extends Publisher<? extends R>> function, int i, boolean z) {
            this.downstream = subscriber;
            this.mapper = function;
            this.bufferSize = i;
            this.delayErrors = z;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            disposeInner();
        }

        public void disposeInner() {
            Cdo<Object, Object> cdo;
            Cdo<T, R> cdo2 = this.active.get();
            Cdo<Object, Object> cdo3 = CANCELLED;
            if (cdo2 == cdo3 || (cdo = (Cdo) this.active.getAndSet(cdo3)) == cdo3 || cdo == null) {
                return;
            }
            cdo.cancel();
        }

        public void drain() {
            boolean z;
            R.bool boolVarPoll;
            if (getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super R> subscriber = this.downstream;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                if (this.done) {
                    if (this.delayErrors) {
                        if (this.active.get() == null) {
                            if (this.error.get() != null) {
                                subscriber.onError(this.error.terminate());
                                return;
                            } else {
                                subscriber.onComplete();
                                return;
                            }
                        }
                    } else if (this.error.get() != null) {
                        disposeInner();
                        subscriber.onError(this.error.terminate());
                        return;
                    } else if (this.active.get() == null) {
                        subscriber.onComplete();
                        return;
                    }
                }
                Cdo<T, R> cdo = this.active.get();
                SimpleQueue<R> simpleQueue = cdo != null ? cdo.queue : null;
                if (simpleQueue != null) {
                    if (cdo.done) {
                        if (this.delayErrors) {
                            if (simpleQueue.isEmpty()) {
                                this.active.compareAndSet(cdo, null);
                            }
                        } else if (this.error.get() != null) {
                            disposeInner();
                            subscriber.onError(this.error.terminate());
                            return;
                        } else if (simpleQueue.isEmpty()) {
                            this.active.compareAndSet(cdo, null);
                        }
                    }
                    long j = this.requested.get();
                    long j2 = 0;
                    while (true) {
                        z = false;
                        if (j2 != j) {
                            if (!this.cancelled) {
                                boolean z2 = cdo.done;
                                try {
                                    boolVarPoll = simpleQueue.poll();
                                } catch (Throwable th) {
                                    t80.m7781if(th);
                                    cdo.cancel();
                                    this.error.addThrowable(th);
                                    boolVarPoll = null;
                                    z2 = true;
                                }
                                boolean z3 = boolVarPoll == null;
                                if (cdo != this.active.get()) {
                                    break;
                                }
                                if (z2) {
                                    if (!this.delayErrors) {
                                        if (this.error.get() == null) {
                                            if (z3) {
                                                this.active.compareAndSet(cdo, null);
                                                break;
                                            }
                                        } else {
                                            subscriber.onError(this.error.terminate());
                                            return;
                                        }
                                    } else if (z3) {
                                        this.active.compareAndSet(cdo, null);
                                        break;
                                    }
                                }
                                if (z3) {
                                    break;
                                }
                                subscriber.onNext(boolVarPoll);
                                j2++;
                            } else {
                                return;
                            }
                        } else {
                            break;
                        }
                    }
                    z = true;
                    if (j2 != 0 && !this.cancelled) {
                        if (j != Long.MAX_VALUE) {
                            this.requested.addAndGet(-j2);
                        }
                        cdo.request(j2);
                    }
                    if (z) {
                        continue;
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
            this.active.lazySet(null);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done || !this.error.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (!this.delayErrors) {
                disposeInner();
            }
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            Cdo<T, R> cdo;
            if (this.done) {
                return;
            }
            long j = this.unique + 1;
            this.unique = j;
            Cdo<T, R> cdo2 = this.active.get();
            if (cdo2 != null) {
                cdo2.cancel();
            }
            try {
                Publisher publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.mapper.apply(t), "The publisher returned is null");
                Cdo<T, R> cdo3 = new Cdo<>(this, j, this.bufferSize);
                do {
                    cdo = this.active.get();
                    if (cdo == CANCELLED) {
                        return;
                    }
                } while (!this.active.compareAndSet(cdo, cdo3));
                publisher.subscribe(cdo3);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.upstream.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                if (this.unique == 0) {
                    this.upstream.request(Long.MAX_VALUE);
                } else {
                    drain();
                }
            }
        }
    }

    public y1(io.reactivex.Cfor<T> cfor, Function<? super T, ? extends Publisher<? extends R>> function, int i, boolean z) {
        super(cfor);
        this.f26070for = function;
        this.f26071new = i;
        this.f26072try = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        if (j1.m29493if(this.f25614if, subscriber, this.f26070for)) {
            return;
        }
        this.f25614if.m5(new Cif(subscriber, this.f26070for, this.f26071new, this.f26072try));
    }
}
