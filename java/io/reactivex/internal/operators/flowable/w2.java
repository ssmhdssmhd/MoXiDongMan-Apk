package io.reactivex.internal.operators.flowable;

import android.support.v4.b12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class w2<T, R> extends Cfor<R> {

    /* renamed from: case, reason: not valid java name */
    public final boolean f26029case;

    /* renamed from: for, reason: not valid java name */
    public final Iterable<? extends Publisher<? extends T>> f26030for;

    /* renamed from: if, reason: not valid java name */
    public final Publisher<? extends T>[] f26031if;

    /* renamed from: new, reason: not valid java name */
    public final Function<? super Object[], ? extends R> f26032new;

    /* renamed from: try, reason: not valid java name */
    public final int f26033try;

    /* renamed from: io.reactivex.internal.operators.flowable.w2$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = -2434867452883857743L;
        public volatile boolean cancelled;
        public final Object[] current;
        public final boolean delayErrors;
        public final Subscriber<? super R> downstream;
        public final h4 errors;
        public final AtomicLong requested;
        public final Cif<T, R>[] subscribers;
        public final Function<? super Object[], ? extends R> zipper;

        public Cdo(Subscriber<? super R> subscriber, Function<? super Object[], ? extends R> function, int i, int i2, boolean z) {
            this.downstream = subscriber;
            this.zipper = function;
            this.delayErrors = z;
            Cif<T, R>[] cifArr = new Cif[i];
            for (int i3 = 0; i3 < i; i3++) {
                cifArr[i3] = new Cif<>(this, i2);
            }
            this.current = new Object[i];
            this.subscribers = cifArr;
            this.requested = new AtomicLong();
            this.errors = new h4();
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelAll();
        }

        public void cancelAll() {
            for (Cif<T, R> cif : this.subscribers) {
                cif.cancel();
            }
        }

        public void drain() {
            boolean z;
            T tPoll;
            boolean z2;
            if (getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super R> subscriber = this.downstream;
            Cif<T, R>[] cifArr = this.subscribers;
            int length = cifArr.length;
            Object[] objArr = this.current;
            int iAddAndGet = 1;
            do {
                long j = this.requested.get();
                long j2 = 0;
                while (j != j2) {
                    if (this.cancelled) {
                        return;
                    }
                    if (!this.delayErrors && this.errors.get() != null) {
                        cancelAll();
                        subscriber.onError(this.errors.terminate());
                        return;
                    }
                    boolean z3 = false;
                    for (int i = 0; i < length; i++) {
                        Cif<T, R> cif = cifArr[i];
                        if (objArr[i] == null) {
                            try {
                                z = cif.done;
                                SimpleQueue<T> simpleQueue = cif.queue;
                                tPoll = simpleQueue != null ? simpleQueue.poll() : null;
                                z2 = tPoll == null;
                            } catch (Throwable th) {
                                t80.m7781if(th);
                                this.errors.addThrowable(th);
                                if (!this.delayErrors) {
                                    cancelAll();
                                    subscriber.onError(this.errors.terminate());
                                    return;
                                }
                            }
                            if (z && z2) {
                                cancelAll();
                                if (this.errors.get() != null) {
                                    subscriber.onError(this.errors.terminate());
                                    return;
                                } else {
                                    subscriber.onComplete();
                                    return;
                                }
                            }
                            if (z2) {
                                z3 = true;
                            } else {
                                objArr[i] = tPoll;
                            }
                        }
                    }
                    if (z3) {
                        break;
                    }
                    try {
                        subscriber.onNext((Object) io.reactivex.internal.functions.Cif.m29468else(this.zipper.apply(objArr.clone()), "The zipper returned a null value"));
                        j2++;
                        Arrays.fill(objArr, (Object) null);
                    } catch (Throwable th2) {
                        t80.m7781if(th2);
                        cancelAll();
                        this.errors.addThrowable(th2);
                        subscriber.onError(this.errors.terminate());
                        return;
                    }
                }
                if (j == j2) {
                    if (this.cancelled) {
                        return;
                    }
                    if (!this.delayErrors && this.errors.get() != null) {
                        cancelAll();
                        subscriber.onError(this.errors.terminate());
                        return;
                    }
                    for (int i2 = 0; i2 < length; i2++) {
                        Cif<T, R> cif2 = cifArr[i2];
                        if (objArr[i2] == null) {
                            try {
                                boolean z4 = cif2.done;
                                SimpleQueue<T> simpleQueue2 = cif2.queue;
                                T tPoll2 = simpleQueue2 != null ? simpleQueue2.poll() : null;
                                boolean z5 = tPoll2 == null;
                                if (z4 && z5) {
                                    cancelAll();
                                    if (this.errors.get() != null) {
                                        subscriber.onError(this.errors.terminate());
                                        return;
                                    } else {
                                        subscriber.onComplete();
                                        return;
                                    }
                                }
                                if (!z5) {
                                    objArr[i2] = tPoll2;
                                }
                            } catch (Throwable th3) {
                                t80.m7781if(th3);
                                this.errors.addThrowable(th3);
                                if (!this.delayErrors) {
                                    cancelAll();
                                    subscriber.onError(this.errors.terminate());
                                    return;
                                }
                            }
                        }
                    }
                }
                if (j2 != 0) {
                    for (Cif<T, R> cif3 : cifArr) {
                        cif3.request(j2);
                    }
                    if (j != Long.MAX_VALUE) {
                        this.requested.addAndGet(-j2);
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        public void error(Cif<T, R> cif, Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
            } else {
                cif.done = true;
                drain();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                drain();
            }
        }

        public void subscribe(Publisher<? extends T>[] publisherArr, int i) {
            Cif<T, R>[] cifArr = this.subscribers;
            for (int i2 = 0; i2 < i && !this.cancelled; i2++) {
                if (!this.delayErrors && this.errors.get() != null) {
                    return;
                }
                publisherArr[i2].subscribe(cifArr[i2]);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.w2$if, reason: invalid class name */
    public static final class Cif<T, R> extends AtomicReference<Subscription> implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -4627193790118206028L;
        public volatile boolean done;
        public final int limit;
        public final Cdo<T, R> parent;
        public final int prefetch;
        public long produced;
        public SimpleQueue<T> queue;
        public int sourceMode;

        public Cif(Cdo<T, R> cdo, int i) {
            this.parent = cdo;
            this.prefetch = i;
            this.limit = i - (i >> 2);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            this.parent.drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.parent.error(this, th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.sourceMode != 2) {
                this.queue.offer(t);
            }
            this.parent.drain();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.setOnce(this, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int iRequestFusion = queueSubscription.requestFusion(7);
                    if (iRequestFusion == 1) {
                        this.sourceMode = iRequestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        this.parent.drain();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.sourceMode = iRequestFusion;
                        this.queue = queueSubscription;
                        subscription.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new b12(this.prefetch);
                subscription.request(this.prefetch);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (this.sourceMode != 1) {
                long j2 = this.produced + j;
                if (j2 < this.limit) {
                    this.produced = j2;
                } else {
                    this.produced = 0L;
                    get().request(j2);
                }
            }
        }
    }

    public w2(Publisher<? extends T>[] publisherArr, Iterable<? extends Publisher<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i, boolean z) {
        this.f26031if = publisherArr;
        this.f26030for = iterable;
        this.f26032new = function;
        this.f26033try = i;
        this.f26029case = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        int length;
        Publisher<? extends T>[] publisherArr = this.f26031if;
        if (publisherArr == null) {
            publisherArr = new Publisher[8];
            length = 0;
            for (Publisher<? extends T> publisher : this.f26030for) {
                if (length == publisherArr.length) {
                    Publisher<? extends T>[] publisherArr2 = new Publisher[(length >> 2) + length];
                    System.arraycopy(publisherArr, 0, publisherArr2, 0, length);
                    publisherArr = publisherArr2;
                }
                publisherArr[length] = publisher;
                length++;
            }
        } else {
            length = publisherArr.length;
        }
        int i = length;
        if (i == 0) {
            io.reactivex.internal.subscriptions.Cdo.complete(subscriber);
            return;
        }
        Cdo cdo = new Cdo(subscriber, this.f26032new, i, this.f26033try, this.f26029case);
        subscriber.onSubscribe(cdo);
        cdo.subscribe(publisherArr, i);
    }
}
