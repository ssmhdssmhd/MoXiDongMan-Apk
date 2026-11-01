package io.reactivex.internal.operators.flowable;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.e12;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import android.support.v4.z7;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Function;
import io.reactivex.internal.operators.flowable.c0;
import io.reactivex.internal.util.Ccase;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.native, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnative<T, R> extends io.reactivex.Cfor<R> {

    /* renamed from: case, reason: not valid java name */
    public final boolean f25757case;

    /* renamed from: for, reason: not valid java name */
    @a51
    public final Iterable<? extends Publisher<? extends T>> f25758for;

    /* renamed from: if, reason: not valid java name */
    @a51
    public final Publisher<? extends T>[] f25759if;

    /* renamed from: new, reason: not valid java name */
    public final Function<? super Object[], ? extends R> f25760new;

    /* renamed from: try, reason: not valid java name */
    public final int f25761try;

    /* renamed from: io.reactivex.internal.operators.flowable.native$do, reason: invalid class name */
    public static final class Cdo<T, R> extends z7<R> {
        private static final long serialVersionUID = -5082275438355852221L;
        public volatile boolean cancelled;
        public final Function<? super Object[], ? extends R> combiner;
        public int completedSources;
        public final boolean delayErrors;
        public volatile boolean done;
        public final Subscriber<? super R> downstream;
        public final AtomicReference<Throwable> error;
        public final Object[] latest;
        public int nonEmptySources;
        public boolean outputFused;
        public final e12<Object> queue;
        public final AtomicLong requested;
        public final Cif<T>[] subscribers;

        public Cdo(Subscriber<? super R> subscriber, Function<? super Object[], ? extends R> function, int i, int i2, boolean z) {
            this.downstream = subscriber;
            this.combiner = function;
            Cif<T>[] cifArr = new Cif[i];
            for (int i3 = 0; i3 < i; i3++) {
                cifArr[i3] = new Cif<>(this, i3, i2);
            }
            this.subscribers = cifArr;
            this.latest = new Object[i];
            this.queue = new e12<>(i2);
            this.requested = new AtomicLong();
            this.error = new AtomicReference<>();
            this.delayErrors = z;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            cancelAll();
        }

        public void cancelAll() {
            for (Cif<T> cif : this.subscribers) {
                cif.cancel();
            }
        }

        public boolean checkTerminated(boolean z, boolean z2, Subscriber<?> subscriber, e12<?> e12Var) {
            if (this.cancelled) {
                cancelAll();
                e12Var.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            if (this.delayErrors) {
                if (!z2) {
                    return false;
                }
                cancelAll();
                Throwable thM29714for = Ccase.m29714for(this.error);
                if (thM29714for == null || thM29714for == Ccase.f27435do) {
                    subscriber.onComplete();
                } else {
                    subscriber.onError(thM29714for);
                }
                return true;
            }
            Throwable thM29714for2 = Ccase.m29714for(this.error);
            if (thM29714for2 != null && thM29714for2 != Ccase.f27435do) {
                cancelAll();
                e12Var.clear();
                subscriber.onError(thM29714for2);
                return true;
            }
            if (!z2) {
                return false;
            }
            cancelAll();
            subscriber.onComplete();
            return true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.queue.clear();
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.outputFused) {
                drainOutput();
            } else {
                drainAsync();
            }
        }

        public void drainAsync() {
            Subscriber<? super R> subscriber = this.downstream;
            e12<?> e12Var = this.queue;
            int iAddAndGet = 1;
            do {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    boolean z = this.done;
                    Object objPoll = e12Var.poll();
                    boolean z2 = objPoll == null;
                    if (checkTerminated(z, z2, subscriber, e12Var)) {
                        return;
                    }
                    if (z2) {
                        break;
                    }
                    try {
                        subscriber.onNext((Object) io.reactivex.internal.functions.Cif.m29468else(this.combiner.apply((Object[]) e12Var.poll()), "The combiner returned a null value"));
                        ((Cif) objPoll).requestOne();
                        j2++;
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        cancelAll();
                        Ccase.m29713do(this.error, th);
                        subscriber.onError(Ccase.m29714for(this.error));
                        return;
                    }
                }
                if (j2 == j && checkTerminated(this.done, e12Var.isEmpty(), subscriber, e12Var)) {
                    return;
                }
                if (j2 != 0 && j != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j2);
                }
                iAddAndGet = addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        public void drainOutput() {
            Subscriber<? super R> subscriber = this.downstream;
            e12<Object> e12Var = this.queue;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                Throwable th = this.error.get();
                if (th != null) {
                    e12Var.clear();
                    subscriber.onError(th);
                    return;
                }
                boolean z = this.done;
                boolean zIsEmpty = e12Var.isEmpty();
                if (!zIsEmpty) {
                    subscriber.onNext(null);
                }
                if (z && zIsEmpty) {
                    subscriber.onComplete();
                    return;
                } else {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
            e12Var.clear();
        }

        public void innerComplete(int i) {
            int i2;
            synchronized (this) {
                Object[] objArr = this.latest;
                if (objArr[i] != null && (i2 = this.completedSources + 1) != objArr.length) {
                    this.completedSources = i2;
                } else {
                    this.done = true;
                    drain();
                }
            }
        }

        public void innerError(int i, Throwable th) {
            if (!Ccase.m29713do(this.error, th)) {
                jp1.l(th);
            } else {
                if (this.delayErrors) {
                    innerComplete(i);
                    return;
                }
                cancelAll();
                this.done = true;
                drain();
            }
        }

        public void innerValue(int i, T t) {
            boolean z;
            synchronized (this) {
                Object[] objArr = this.latest;
                int i2 = this.nonEmptySources;
                if (objArr[i] == null) {
                    i2++;
                    this.nonEmptySources = i2;
                }
                objArr[i] = t;
                if (objArr.length == i2) {
                    this.queue.offer(this.subscribers[i], objArr.clone());
                    z = false;
                } else {
                    z = true;
                }
            }
            if (z) {
                this.subscribers[i].requestOne();
            } else {
                drain();
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public R poll() throws Exception {
            Object objPoll = this.queue.poll();
            if (objPoll == null) {
                return null;
            }
            R r = (R) io.reactivex.internal.functions.Cif.m29468else(this.combiner.apply((Object[]) this.queue.poll()), "The combiner returned a null value");
            ((Cif) objPoll).requestOne();
            return r;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                drain();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 4) != 0) {
                return 0;
            }
            int i2 = i & 2;
            this.outputFused = i2 != 0;
            return i2;
        }

        public void subscribe(Publisher<? extends T>[] publisherArr, int i) {
            Cif<T>[] cifArr = this.subscribers;
            for (int i2 = 0; i2 < i && !this.done && !this.cancelled; i2++) {
                publisherArr[i2].subscribe(cifArr[i2]);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.native$for, reason: invalid class name */
    public final class Cfor implements Function<T, R> {
        public Cfor() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.lang.Object[]] */
        @Override // io.reactivex.functions.Function
        public R apply(T t) throws Exception {
            return Cnative.this.f25760new.apply(new Object[]{t});
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.native$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -8730235182291002949L;
        public final int index;
        public final int limit;
        public final Cdo<T, ?> parent;
        public final int prefetch;
        public int produced;

        public Cif(Cdo<T, ?> cdo, int i, int i2) {
            this.parent = cdo;
            this.index = i;
            this.prefetch = i2;
            this.limit = i2 - (i2 >> 2);
        }

        public void cancel() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.parent.innerComplete(this.index);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.parent.innerError(this.index, th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.parent.innerValue(this.index, t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.setOnce(this, subscription, this.prefetch);
        }

        public void requestOne() {
            int i = this.produced + 1;
            if (i != this.limit) {
                this.produced = i;
            } else {
                this.produced = 0;
                get().request(i);
            }
        }
    }

    public Cnative(@b41 Publisher<? extends T>[] publisherArr, @b41 Function<? super Object[], ? extends R> function, int i, boolean z) {
        this.f25759if = publisherArr;
        this.f25758for = null;
        this.f25760new = function;
        this.f25761try = i;
        this.f25757case = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        int length;
        Publisher<? extends T>[] publisherArr = this.f25759if;
        if (publisherArr == null) {
            publisherArr = new Publisher[8];
            try {
                Iterator it = (Iterator) io.reactivex.internal.functions.Cif.m29468else(this.f25758for.iterator(), "The iterator returned is null");
                length = 0;
                while (it.hasNext()) {
                    try {
                        try {
                            Publisher<? extends T> publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(it.next(), "The publisher returned by the iterator is null");
                            if (length == publisherArr.length) {
                                Publisher<? extends T>[] publisherArr2 = new Publisher[(length >> 2) + length];
                                System.arraycopy(publisherArr, 0, publisherArr2, 0, length);
                                publisherArr = publisherArr2;
                            }
                            publisherArr[length] = publisher;
                            length++;
                        } catch (Throwable th) {
                            t80.m7781if(th);
                            io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
                            return;
                        }
                    } catch (Throwable th2) {
                        t80.m7781if(th2);
                        io.reactivex.internal.subscriptions.Cdo.error(th2, subscriber);
                        return;
                    }
                }
            } catch (Throwable th3) {
                t80.m7781if(th3);
                io.reactivex.internal.subscriptions.Cdo.error(th3, subscriber);
                return;
            }
        } else {
            length = publisherArr.length;
        }
        int i = length;
        if (i == 0) {
            io.reactivex.internal.subscriptions.Cdo.complete(subscriber);
        } else {
            if (i == 1) {
                publisherArr[0].subscribe(new c0.Cif(subscriber, new Cfor()));
                return;
            }
            Cdo cdo = new Cdo(subscriber, this.f25760new, i, this.f25761try, this.f25757case);
            subscriber.onSubscribe(cdo);
            cdo.subscribe(publisherArr, i);
        }
    }

    public Cnative(@b41 Iterable<? extends Publisher<? extends T>> iterable, @b41 Function<? super Object[], ? extends R> function, int i, boolean z) {
        this.f25759if = null;
        this.f25758for = iterable;
        this.f25760new = function;
        this.f25761try = i;
        this.f25757case = z;
    }
}
