package io.reactivex.internal.operators.parallel;

import android.support.v4.a01;
import android.support.v4.b12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.ub1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.parallel.case, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccase<T> extends io.reactivex.Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public final int f27027for;

    /* renamed from: if, reason: not valid java name */
    public final ub1<? extends T> f27028if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f27029new;

    /* renamed from: io.reactivex.internal.operators.parallel.case$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = 8410034718427740355L;
        public final int limit;
        public final Cfor<T> parent;
        public final int prefetch;
        public long produced;
        public volatile SimplePlainQueue<T> queue;

        public Cdo(Cfor<T> cfor, int i) {
            this.parent = cfor;
            this.prefetch = i;
            this.limit = i - (i >> 2);
        }

        public boolean cancel() {
            return io.reactivex.internal.subscriptions.Cfor.cancel(this);
        }

        public SimplePlainQueue<T> getQueue() {
            SimplePlainQueue<T> simplePlainQueue = this.queue;
            if (simplePlainQueue != null) {
                return simplePlainQueue;
            }
            b12 b12Var = new b12(this.prefetch);
            this.queue = b12Var;
            return b12Var;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.parent.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.parent.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.parent.onNext(this, t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.setOnce(this, subscription, this.prefetch);
        }

        public void request(long j) {
            long j2 = this.produced + j;
            if (j2 < this.limit) {
                this.produced = j2;
            } else {
                this.produced = 0L;
                get().request(j2);
            }
        }

        public void requestOne() {
            long j = this.produced + 1;
            if (j != this.limit) {
                this.produced = j;
            } else {
                this.produced = 0L;
                get().request(j);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.case$for, reason: invalid class name */
    public static abstract class Cfor<T> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 3100232009247827843L;
        public volatile boolean cancelled;
        public final Subscriber<? super T> downstream;
        public final Cdo<T>[] subscribers;
        public final h4 errors = new h4();
        public final AtomicLong requested = new AtomicLong();
        public final AtomicInteger done = new AtomicInteger();

        public Cfor(Subscriber<? super T> subscriber, int i, int i2) {
            this.downstream = subscriber;
            Cdo<T>[] cdoArr = new Cdo[i];
            for (int i3 = 0; i3 < i; i3++) {
                cdoArr[i3] = new Cdo<>(this, i2);
            }
            this.subscribers = cdoArr;
            this.done.lazySet(i);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelAll();
            if (getAndIncrement() == 0) {
                cleanup();
            }
        }

        public void cancelAll() {
            for (Cdo<T> cdo : this.subscribers) {
                cdo.cancel();
            }
        }

        public void cleanup() {
            for (Cdo<T> cdo : this.subscribers) {
                cdo.queue = null;
            }
        }

        public abstract void drain();

        public abstract void onComplete();

        public abstract void onError(Throwable th);

        public abstract void onNext(Cdo<T> cdo, T t);

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                drain();
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.case$if, reason: invalid class name */
    public static final class Cif<T> extends Cfor<T> {
        private static final long serialVersionUID = 6312374661811000451L;

        public Cif(Subscriber<? super T> subscriber, int i, int i2) {
            super(subscriber, i, i2);
        }

        @Override // io.reactivex.internal.operators.parallel.Ccase.Cfor
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            drainLoop();
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x005d, code lost:
        
            if (r13 == false) goto L85;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x005f, code lost:
        
            if (r15 == false) goto L86;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0061, code lost:
        
            r3.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0065, code lost:
        
            if (r15 == false) goto L87;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void drainLoop() {
            boolean z;
            T tPoll;
            Cdo<T>[] cdoArr = this.subscribers;
            int length = cdoArr.length;
            Subscriber<? super T> subscriber = this.downstream;
            int i = 1;
            while (true) {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    if (!this.cancelled) {
                        Throwable th = this.errors.get();
                        if (th == null) {
                            boolean z2 = this.done.get() == 0;
                            int i2 = 0;
                            boolean z3 = true;
                            while (true) {
                                if (i2 >= cdoArr.length) {
                                    break;
                                }
                                Cdo<T> cdo = cdoArr[i2];
                                SimplePlainQueue<T> simplePlainQueue = cdo.queue;
                                if (simplePlainQueue != null && (tPoll = simplePlainQueue.poll()) != null) {
                                    subscriber.onNext(tPoll);
                                    cdo.requestOne();
                                    j2++;
                                    if (j2 == j) {
                                        break;
                                    } else {
                                        z3 = false;
                                    }
                                }
                                i2++;
                            }
                        } else {
                            cleanup();
                            subscriber.onError(th);
                            return;
                        }
                    } else {
                        cleanup();
                        return;
                    }
                }
                if (j2 == j) {
                    if (this.cancelled) {
                        cleanup();
                        return;
                    }
                    Throwable th2 = this.errors.get();
                    if (th2 != null) {
                        cleanup();
                        subscriber.onError(th2);
                        return;
                    }
                    boolean z4 = this.done.get() == 0;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length) {
                            SimplePlainQueue<T> simplePlainQueue2 = cdoArr[i3].queue;
                            if (simplePlainQueue2 != null && !simplePlainQueue2.isEmpty()) {
                                z = false;
                                break;
                            }
                            i3++;
                        } else {
                            z = true;
                            break;
                        }
                    }
                    if (z4 && z) {
                        subscriber.onComplete();
                        return;
                    }
                }
                if (j2 != 0 && j != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j2);
                }
                int iAddAndGet = get();
                if (iAddAndGet == i && (iAddAndGet = addAndGet(-i)) == 0) {
                    return;
                } else {
                    i = iAddAndGet;
                }
            }
        }

        @Override // io.reactivex.internal.operators.parallel.Ccase.Cfor
        public void onComplete() {
            this.done.decrementAndGet();
            drain();
        }

        @Override // io.reactivex.internal.operators.parallel.Ccase.Cfor
        public void onError(Throwable th) {
            if (this.errors.compareAndSet(null, th)) {
                cancelAll();
                drain();
            } else if (th != this.errors.get()) {
                jp1.l(th);
            }
        }

        @Override // io.reactivex.internal.operators.parallel.Ccase.Cfor
        public void onNext(Cdo<T> cdo, T t) {
            if (get() == 0 && compareAndSet(0, 1)) {
                if (this.requested.get() != 0) {
                    this.downstream.onNext(t);
                    if (this.requested.get() != Long.MAX_VALUE) {
                        this.requested.decrementAndGet();
                    }
                    cdo.request(1L);
                } else if (!cdo.getQueue().offer(t)) {
                    cancelAll();
                    a01 a01Var = new a01("Queue full?!");
                    if (this.errors.compareAndSet(null, a01Var)) {
                        this.downstream.onError(a01Var);
                        return;
                    } else {
                        jp1.l(a01Var);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!cdo.getQueue().offer(t)) {
                cancelAll();
                onError(new a01("Queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            drainLoop();
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.case$new, reason: invalid class name */
    public static final class Cnew<T> extends Cfor<T> {
        private static final long serialVersionUID = -5737965195918321883L;

        public Cnew(Subscriber<? super T> subscriber, int i, int i2) {
            super(subscriber, i, i2);
        }

        @Override // io.reactivex.internal.operators.parallel.Ccase.Cfor
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            drainLoop();
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x004b, code lost:
        
            if (r13 == false) goto L80;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x004d, code lost:
        
            if (r15 == false) goto L81;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0057, code lost:
        
            if (r18.errors.get() == null) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0059, code lost:
        
            r3.onError(r18.errors.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0063, code lost:
        
            r3.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0066, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
        
            if (r15 == false) goto L82;
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void drainLoop() {
            boolean z;
            T tPoll;
            Cdo<T>[] cdoArr = this.subscribers;
            int length = cdoArr.length;
            Subscriber<? super T> subscriber = this.downstream;
            int i = 1;
            while (true) {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    if (!this.cancelled) {
                        boolean z2 = this.done.get() == 0;
                        int i2 = 0;
                        boolean z3 = true;
                        while (true) {
                            if (i2 >= length) {
                                break;
                            }
                            Cdo<T> cdo = cdoArr[i2];
                            SimplePlainQueue<T> simplePlainQueue = cdo.queue;
                            if (simplePlainQueue != null && (tPoll = simplePlainQueue.poll()) != null) {
                                subscriber.onNext(tPoll);
                                cdo.requestOne();
                                j2++;
                                if (j2 == j) {
                                    break;
                                } else {
                                    z3 = false;
                                }
                            }
                            i2++;
                        }
                    } else {
                        cleanup();
                        return;
                    }
                }
                if (j2 == j) {
                    if (this.cancelled) {
                        cleanup();
                        return;
                    }
                    boolean z4 = this.done.get() == 0;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length) {
                            SimplePlainQueue<T> simplePlainQueue2 = cdoArr[i3].queue;
                            if (simplePlainQueue2 != null && !simplePlainQueue2.isEmpty()) {
                                z = false;
                                break;
                            }
                            i3++;
                        } else {
                            z = true;
                            break;
                        }
                    }
                    if (z4 && z) {
                        if (this.errors.get() != null) {
                            subscriber.onError(this.errors.terminate());
                            return;
                        } else {
                            subscriber.onComplete();
                            return;
                        }
                    }
                }
                if (j2 != 0 && j != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j2);
                }
                int iAddAndGet = get();
                if (iAddAndGet == i && (iAddAndGet = addAndGet(-i)) == 0) {
                    return;
                } else {
                    i = iAddAndGet;
                }
            }
        }

        @Override // io.reactivex.internal.operators.parallel.Ccase.Cfor
        public void onComplete() {
            this.done.decrementAndGet();
            drain();
        }

        @Override // io.reactivex.internal.operators.parallel.Ccase.Cfor
        public void onError(Throwable th) {
            this.errors.addThrowable(th);
            this.done.decrementAndGet();
            drain();
        }

        @Override // io.reactivex.internal.operators.parallel.Ccase.Cfor
        public void onNext(Cdo<T> cdo, T t) {
            if (get() == 0 && compareAndSet(0, 1)) {
                if (this.requested.get() != 0) {
                    this.downstream.onNext(t);
                    if (this.requested.get() != Long.MAX_VALUE) {
                        this.requested.decrementAndGet();
                    }
                    cdo.request(1L);
                } else if (!cdo.getQueue().offer(t)) {
                    cdo.cancel();
                    this.errors.addThrowable(new a01("Queue full?!"));
                    this.done.decrementAndGet();
                    drainLoop();
                    return;
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                if (!cdo.getQueue().offer(t) && cdo.cancel()) {
                    this.errors.addThrowable(new a01("Queue full?!"));
                    this.done.decrementAndGet();
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            drainLoop();
        }
    }

    public Ccase(ub1<? extends T> ub1Var, int i, boolean z) {
        this.f27028if = ub1Var;
        this.f27027for = i;
        this.f27029new = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cfor cnew = this.f27029new ? new Cnew(subscriber, this.f27028if.mo7358strictfp(), this.f27027for) : new Cif(subscriber, this.f27028if.mo7358strictfp(), this.f27027for);
        subscriber.onSubscribe(cnew);
        this.f27028if.subscribe(cnew.subscribers);
    }
}
