package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.a51;
import android.support.v4.b12;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import android.support.v4.z7;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.subscriptions.Cfor;
import io.reactivex.internal.util.Ccase;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class k<T, R> extends io.reactivex.internal.operators.flowable.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends Iterable<? extends R>> f25720for;

    /* renamed from: new, reason: not valid java name */
    public final int f25721new;

    /* renamed from: io.reactivex.internal.operators.flowable.k$do, reason: invalid class name */
    public static final class Cdo<T, R> extends z7<R> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -3096000382929934955L;
        public volatile boolean cancelled;
        public int consumed;
        public Iterator<? extends R> current;
        public volatile boolean done;
        public final Subscriber<? super R> downstream;
        public int fusionMode;
        public final int limit;
        public final Function<? super T, ? extends Iterable<? extends R>> mapper;
        public final int prefetch;
        public SimpleQueue<T> queue;
        public Subscription upstream;
        public final AtomicReference<Throwable> error = new AtomicReference<>();
        public final AtomicLong requested = new AtomicLong();

        public Cdo(Subscriber<? super R> subscriber, Function<? super T, ? extends Iterable<? extends R>> function, int i) {
            this.downstream = subscriber;
            this.mapper = function;
            this.prefetch = i;
            this.limit = i - (i >> 2);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        public boolean checkTerminated(boolean z, boolean z2, Subscriber<?> subscriber, SimpleQueue<?> simpleQueue) {
            if (this.cancelled) {
                this.current = null;
                simpleQueue.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            if (this.error.get() == null) {
                if (!z2) {
                    return false;
                }
                subscriber.onComplete();
                return true;
            }
            Throwable thM29714for = Ccase.m29714for(this.error);
            this.current = null;
            simpleQueue.clear();
            subscriber.onError(thM29714for);
            return true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.current = null;
            this.queue.clear();
        }

        public void consumedOne(boolean z) {
            if (z) {
                int i = this.consumed + 1;
                if (i != this.limit) {
                    this.consumed = i;
                } else {
                    this.consumed = 0;
                    this.upstream.request(i);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:69:0x0124 A[PHI: r6
          0x0124: PHI (r6v4 java.util.Iterator<? extends R>) = (r6v3 java.util.Iterator<? extends R>), (r6v6 java.util.Iterator<? extends R>) binds: [B:30:0x0080, B:67:0x0121] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Subscriber<?> subscriber = this.downstream;
            SimpleQueue<T> simpleQueue = this.queue;
            boolean z = this.fusionMode != 1;
            Iterator<? extends R> it = this.current;
            int iAddAndGet = 1;
            while (true) {
                if (it == null) {
                    boolean z2 = this.done;
                    try {
                        T tPoll = simpleQueue.poll();
                        if (checkTerminated(z2, tPoll == null, subscriber, simpleQueue)) {
                            return;
                        }
                        if (tPoll != null) {
                            try {
                                it = this.mapper.apply(tPoll).iterator();
                                if (it.hasNext()) {
                                    this.current = it;
                                } else {
                                    consumedOne(z);
                                    it = null;
                                }
                            } catch (Throwable th) {
                                t80.m7781if(th);
                                this.upstream.cancel();
                                Ccase.m29713do(this.error, th);
                                subscriber.onError(Ccase.m29714for(this.error));
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        t80.m7781if(th2);
                        this.upstream.cancel();
                        Ccase.m29713do(this.error, th2);
                        Throwable thM29714for = Ccase.m29714for(this.error);
                        this.current = null;
                        simpleQueue.clear();
                        subscriber.onError(thM29714for);
                        return;
                    }
                }
                if (it != null) {
                    long j = this.requested.get();
                    long j2 = 0;
                    while (true) {
                        if (j2 == j) {
                            break;
                        }
                        if (checkTerminated(this.done, false, subscriber, simpleQueue)) {
                            return;
                        }
                        try {
                            subscriber.onNext((Object) Cif.m29468else(it.next(), "The iterator returned a null value"));
                            if (checkTerminated(this.done, false, subscriber, simpleQueue)) {
                                return;
                            }
                            j2++;
                            try {
                                if (!it.hasNext()) {
                                    consumedOne(z);
                                    this.current = null;
                                    it = null;
                                    break;
                                }
                            } catch (Throwable th3) {
                                t80.m7781if(th3);
                                this.current = null;
                                this.upstream.cancel();
                                Ccase.m29713do(this.error, th3);
                                subscriber.onError(Ccase.m29714for(this.error));
                                return;
                            }
                        } catch (Throwable th4) {
                            t80.m7781if(th4);
                            this.current = null;
                            this.upstream.cancel();
                            Ccase.m29713do(this.error, th4);
                            subscriber.onError(Ccase.m29714for(this.error));
                            return;
                        }
                    }
                    if (j2 == j) {
                        if (checkTerminated(this.done, simpleQueue.isEmpty() && it == null, subscriber, simpleQueue)) {
                            return;
                        }
                    }
                    if (j2 != 0 && j != Long.MAX_VALUE) {
                        this.requested.addAndGet(-j2);
                    }
                    if (it != null) {
                        iAddAndGet = addAndGet(-iAddAndGet);
                        if (iAddAndGet == 0) {
                            return;
                        }
                    }
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.current == null && this.queue.isEmpty();
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
            if (this.done || !Ccase.m29713do(this.error, th)) {
                jp1.l(th);
            } else {
                this.done = true;
                drain();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            if (this.fusionMode != 0 || this.queue.offer(t)) {
                drain();
            } else {
                onError(new a01("Queue is full?!"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int iRequestFusion = queueSubscription.requestFusion(3);
                    if (iRequestFusion == 1) {
                        this.fusionMode = iRequestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        this.downstream.onSubscribe(this);
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.fusionMode = iRequestFusion;
                        this.queue = queueSubscription;
                        this.downstream.onSubscribe(this);
                        subscription.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new b12(this.prefetch);
                this.downstream.onSubscribe(this);
                subscription.request(this.prefetch);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public R poll() throws Exception {
            Iterator<? extends R> it = this.current;
            while (true) {
                if (it == null) {
                    T tPoll = this.queue.poll();
                    if (tPoll != null) {
                        it = this.mapper.apply(tPoll).iterator();
                        if (it.hasNext()) {
                            this.current = it;
                            break;
                        }
                        it = null;
                    } else {
                        return null;
                    }
                } else {
                    break;
                }
            }
            R r = (R) Cif.m29468else(it.next(), "The iterator returned a null value");
            if (!it.hasNext()) {
                this.current = null;
            }
            return r;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                drain();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return ((i & 1) == 0 || this.fusionMode != 1) ? 0 : 1;
        }
    }

    public k(io.reactivex.Cfor<T> cfor, Function<? super T, ? extends Iterable<? extends R>> function, int i) {
        super(cfor);
        this.f25720for = function;
        this.f25721new = i;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        io.reactivex.Cfor<T> cfor = this.f25614if;
        if (!(cfor instanceof Callable)) {
            cfor.m5(new Cdo(subscriber, this.f25720for, this.f25721new));
            return;
        }
        try {
            Object objCall = ((Callable) cfor).call();
            if (objCall == null) {
                io.reactivex.internal.subscriptions.Cdo.complete(subscriber);
                return;
            }
            try {
                n.L7(subscriber, this.f25720for.apply(objCall).iterator());
            } catch (Throwable th) {
                t80.m7781if(th);
                io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
            }
        } catch (Throwable th2) {
            t80.m7781if(th2);
            io.reactivex.internal.subscriptions.Cdo.error(th2, subscriber);
        }
    }
}
