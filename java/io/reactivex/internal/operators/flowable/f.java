package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.b12;
import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.subscriptions.Cfor;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class f<T, U> extends io.reactivex.internal.operators.flowable.Cdo<T, U> {

    /* renamed from: case, reason: not valid java name */
    public final int f25628case;

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends Publisher<? extends U>> f25629for;

    /* renamed from: new, reason: not valid java name */
    public final boolean f25630new;

    /* renamed from: try, reason: not valid java name */
    public final int f25631try;

    /* renamed from: io.reactivex.internal.operators.flowable.f$do, reason: invalid class name */
    public static final class Cdo<T, U> extends AtomicReference<Subscription> implements FlowableSubscriber<U>, Disposable {
        private static final long serialVersionUID = -4606175640614850599L;
        public final int bufferSize;
        public volatile boolean done;
        public int fusionMode;
        public final long id;
        public final int limit;
        public final Cif<T, U> parent;
        public long produced;
        public volatile SimpleQueue<U> queue;

        public Cdo(Cif<T, U> cif, long j) {
            this.id = j;
            this.parent = cif;
            int i = cif.bufferSize;
            this.bufferSize = i;
            this.limit = i >> 2;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Cfor.cancel(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            this.parent.drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            lazySet(Cfor.CANCELLED);
            this.parent.innerError(this, th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(U u) {
            if (this.fusionMode != 2) {
                this.parent.tryEmit(u, this);
            } else {
                this.parent.drain();
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
                    }
                }
                subscription.request(this.bufferSize);
            }
        }

        public void requestMore(long j) {
            if (this.fusionMode != 1) {
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

    /* renamed from: io.reactivex.internal.operators.flowable.f$if, reason: invalid class name */
    public static final class Cif<T, U> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -2117620485640801370L;
        public final int bufferSize;
        public volatile boolean cancelled;
        public final boolean delayErrors;
        public volatile boolean done;
        public final Subscriber<? super U> downstream;
        public final h4 errs = new h4();
        public long lastId;
        public int lastIndex;
        public final Function<? super T, ? extends Publisher<? extends U>> mapper;
        public final int maxConcurrency;
        public volatile SimplePlainQueue<U> queue;
        public final AtomicLong requested;
        public int scalarEmitted;
        public final int scalarLimit;
        public final AtomicReference<Cdo<?, ?>[]> subscribers;
        public long uniqueId;
        public Subscription upstream;
        public static final Cdo<?, ?>[] EMPTY = new Cdo[0];
        public static final Cdo<?, ?>[] CANCELLED = new Cdo[0];

        public Cif(Subscriber<? super U> subscriber, Function<? super T, ? extends Publisher<? extends U>> function, boolean z, int i, int i2) {
            AtomicReference<Cdo<?, ?>[]> atomicReference = new AtomicReference<>();
            this.subscribers = atomicReference;
            this.requested = new AtomicLong();
            this.downstream = subscriber;
            this.mapper = function;
            this.delayErrors = z;
            this.maxConcurrency = i;
            this.bufferSize = i2;
            this.scalarLimit = Math.max(1, i >> 1);
            atomicReference.lazySet(EMPTY);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean addInner(Cdo<T, U> cdo) {
            Cdo<?, ?>[] cdoArr;
            Cdo[] cdoArr2;
            do {
                cdoArr = this.subscribers.get();
                if (cdoArr == CANCELLED) {
                    cdo.dispose();
                    return false;
                }
                int length = cdoArr.length;
                cdoArr2 = new Cdo[length + 1];
                System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
                cdoArr2[length] = cdo;
            } while (!this.subscribers.compareAndSet(cdoArr, cdoArr2));
            return true;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SimplePlainQueue<U> simplePlainQueue;
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            disposeAll();
            if (getAndIncrement() != 0 || (simplePlainQueue = this.queue) == null) {
                return;
            }
            simplePlainQueue.clear();
        }

        public boolean checkTerminate() {
            if (this.cancelled) {
                clearScalarQueue();
                return true;
            }
            if (this.delayErrors || this.errs.get() == null) {
                return false;
            }
            clearScalarQueue();
            Throwable thTerminate = this.errs.terminate();
            if (thTerminate != Ccase.f27435do) {
                this.downstream.onError(thTerminate);
            }
            return true;
        }

        public void clearScalarQueue() {
            SimplePlainQueue<U> simplePlainQueue = this.queue;
            if (simplePlainQueue != null) {
                simplePlainQueue.clear();
            }
        }

        public void disposeAll() {
            Cdo<?, ?>[] andSet;
            Cdo<?, ?>[] cdoArr = this.subscribers.get();
            Cdo<?, ?>[] cdoArr2 = CANCELLED;
            if (cdoArr == cdoArr2 || (andSet = this.subscribers.getAndSet(cdoArr2)) == cdoArr2) {
                return;
            }
            for (Cdo<?, ?> cdo : andSet) {
                cdo.dispose();
            }
            Throwable thTerminate = this.errs.terminate();
            if (thTerminate == null || thTerminate == Ccase.f27435do) {
                return;
            }
            jp1.l(thTerminate);
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void drainLoop() {
            long j;
            long j2;
            boolean z;
            Cdo<T, U>[] cdoArr;
            int i;
            long j3;
            Object obj;
            Subscriber<? super U> subscriber = this.downstream;
            int iAddAndGet = 1;
            while (!checkTerminate()) {
                SimplePlainQueue<U> simplePlainQueue = this.queue;
                long jAddAndGet = this.requested.get();
                boolean z2 = jAddAndGet == Long.MAX_VALUE;
                long j4 = 0;
                long j5 = 0;
                if (simplePlainQueue != null) {
                    do {
                        long j6 = 0;
                        obj = null;
                        while (true) {
                            if (jAddAndGet == 0) {
                                break;
                            }
                            U uPoll = simplePlainQueue.poll();
                            if (checkTerminate()) {
                                return;
                            }
                            if (uPoll == null) {
                                obj = uPoll;
                                break;
                            }
                            subscriber.onNext(uPoll);
                            j5++;
                            j6++;
                            jAddAndGet--;
                            obj = uPoll;
                        }
                        if (j6 != 0) {
                            jAddAndGet = z2 ? Long.MAX_VALUE : this.requested.addAndGet(-j6);
                        }
                        if (jAddAndGet == 0) {
                            break;
                        }
                    } while (obj != null);
                }
                boolean z3 = this.done;
                SimplePlainQueue<U> simplePlainQueue2 = this.queue;
                Cdo<?, ?>[] cdoArr2 = this.subscribers.get();
                int length = cdoArr2.length;
                if (z3 && ((simplePlainQueue2 == null || simplePlainQueue2.isEmpty()) && length == 0)) {
                    Throwable thTerminate = this.errs.terminate();
                    if (thTerminate != Ccase.f27435do) {
                        if (thTerminate == null) {
                            subscriber.onComplete();
                            return;
                        } else {
                            subscriber.onError(thTerminate);
                            return;
                        }
                    }
                    return;
                }
                int i2 = iAddAndGet;
                if (length != 0) {
                    long j7 = this.lastId;
                    int i3 = this.lastIndex;
                    if (length <= i3 || cdoArr2[i3].id != j7) {
                        if (length <= i3) {
                            i3 = 0;
                        }
                        for (int i4 = 0; i4 < length && cdoArr2[i3].id != j7; i4++) {
                            i3++;
                            if (i3 == length) {
                                i3 = 0;
                            }
                        }
                        this.lastIndex = i3;
                        this.lastId = cdoArr2[i3].id;
                    }
                    int i5 = i3;
                    boolean z4 = false;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= length) {
                            cdoArr = cdoArr2;
                            z = z4;
                            break;
                        }
                        if (checkTerminate()) {
                            return;
                        }
                        Cdo<T, U> cdo = cdoArr2[i5];
                        U uPoll2 = null;
                        while (!checkTerminate()) {
                            SimpleQueue<U> simpleQueue = cdo.queue;
                            if (simpleQueue == null) {
                                cdoArr = cdoArr2;
                                i = length;
                            } else {
                                cdoArr = cdoArr2;
                                i = length;
                                long j8 = j4;
                                while (jAddAndGet != j4) {
                                    try {
                                        uPoll2 = simpleQueue.poll();
                                        if (uPoll2 == null) {
                                            break;
                                        }
                                        subscriber.onNext(uPoll2);
                                        if (checkTerminate()) {
                                            return;
                                        }
                                        jAddAndGet--;
                                        j8++;
                                    } catch (Throwable th) {
                                        t80.m7781if(th);
                                        cdo.dispose();
                                        this.errs.addThrowable(th);
                                        if (!this.delayErrors) {
                                            this.upstream.cancel();
                                        }
                                        if (checkTerminate()) {
                                            return;
                                        }
                                        removeInner(cdo);
                                        i6++;
                                        length = i;
                                        z4 = true;
                                    }
                                }
                                if (j8 != j4) {
                                    jAddAndGet = !z2 ? this.requested.addAndGet(-j8) : Long.MAX_VALUE;
                                    cdo.requestMore(j8);
                                    j3 = 0;
                                } else {
                                    j3 = j4;
                                }
                                if (jAddAndGet != j3 && uPoll2 != null) {
                                    cdoArr2 = cdoArr;
                                    length = i;
                                    j4 = 0;
                                }
                            }
                            boolean z5 = cdo.done;
                            SimpleQueue<U> simpleQueue2 = cdo.queue;
                            if (z5 && (simpleQueue2 == null || simpleQueue2.isEmpty())) {
                                removeInner(cdo);
                                if (checkTerminate()) {
                                    return;
                                }
                                j5++;
                                z4 = true;
                            }
                            if (jAddAndGet == 0) {
                                z = z4;
                                break;
                            }
                            i5++;
                            length = i;
                            if (i5 == length) {
                                i5 = 0;
                            }
                            i6++;
                            cdoArr2 = cdoArr;
                            j4 = 0;
                        }
                        return;
                    }
                    this.lastIndex = i5;
                    this.lastId = cdoArr[i5].id;
                    j2 = j5;
                    j = 0;
                } else {
                    j = 0;
                    j2 = j5;
                    z = false;
                }
                if (j2 != j && !this.cancelled) {
                    this.upstream.request(j2);
                }
                if (z) {
                    iAddAndGet = i2;
                } else {
                    iAddAndGet = addAndGet(-i2);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }

        public SimpleQueue<U> getInnerQueue(Cdo<T, U> cdo) {
            SimpleQueue<U> simpleQueue = cdo.queue;
            if (simpleQueue != null) {
                return simpleQueue;
            }
            b12 b12Var = new b12(this.bufferSize);
            cdo.queue = b12Var;
            return b12Var;
        }

        public SimpleQueue<U> getMainQueue() {
            SimplePlainQueue<U> e12Var = this.queue;
            if (e12Var == null) {
                e12Var = this.maxConcurrency == Integer.MAX_VALUE ? new e12<>(this.bufferSize) : new b12<>(this.maxConcurrency);
                this.queue = e12Var;
            }
            return e12Var;
        }

        public void innerError(Cdo<T, U> cdo, Throwable th) {
            if (!this.errs.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            cdo.done = true;
            if (!this.delayErrors) {
                this.upstream.cancel();
                for (Cdo<?, ?> cdo2 : this.subscribers.getAndSet(CANCELLED)) {
                    cdo2.dispose();
                }
            }
            drain();
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
            if (this.done) {
                jp1.l(th);
                return;
            }
            if (!this.errs.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            this.done = true;
            if (!this.delayErrors) {
                for (Cdo<?, ?> cdo : this.subscribers.getAndSet(CANCELLED)) {
                    cdo.dispose();
                }
            }
            drain();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            try {
                Publisher publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.mapper.apply(t), "The mapper returned a null Publisher");
                if (!(publisher instanceof Callable)) {
                    long j = this.uniqueId;
                    this.uniqueId = 1 + j;
                    Cdo cdo = new Cdo(this, j);
                    if (addInner(cdo)) {
                        publisher.subscribe(cdo);
                        return;
                    }
                    return;
                }
                try {
                    Object objCall = ((Callable) publisher).call();
                    if (objCall != null) {
                        tryEmitScalar(objCall);
                        return;
                    }
                    if (this.maxConcurrency == Integer.MAX_VALUE || this.cancelled) {
                        return;
                    }
                    int i = this.scalarEmitted + 1;
                    this.scalarEmitted = i;
                    int i2 = this.scalarLimit;
                    if (i == i2) {
                        this.scalarEmitted = 0;
                        this.upstream.request(i2);
                    }
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.errs.addThrowable(th);
                    drain();
                }
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.upstream.cancel();
                onError(th2);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                if (this.cancelled) {
                    return;
                }
                int i = this.maxConcurrency;
                if (i == Integer.MAX_VALUE) {
                    subscription.request(Long.MAX_VALUE);
                } else {
                    subscription.request(i);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void removeInner(Cdo<T, U> cdo) {
            Cdo<?, ?>[] cdoArr;
            Cdo<?, ?>[] cdoArr2;
            do {
                cdoArr = this.subscribers.get();
                int length = cdoArr.length;
                if (length == 0) {
                    return;
                }
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (cdoArr[i2] == cdo) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    cdoArr2 = EMPTY;
                } else {
                    Cdo<?, ?>[] cdoArr3 = new Cdo[length - 1];
                    System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                    System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                    cdoArr2 = cdoArr3;
                }
            } while (!this.subscribers.compareAndSet(cdoArr, cdoArr2));
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                drain();
            }
        }

        public void tryEmit(U u, Cdo<T, U> cdo) {
            if (get() == 0 && compareAndSet(0, 1)) {
                long j = this.requested.get();
                SimpleQueue<U> innerQueue = cdo.queue;
                if (j == 0 || !(innerQueue == null || innerQueue.isEmpty())) {
                    if (innerQueue == null) {
                        innerQueue = getInnerQueue(cdo);
                    }
                    if (!innerQueue.offer(u)) {
                        onError(new a01("Inner queue full?!"));
                        return;
                    }
                } else {
                    this.downstream.onNext(u);
                    if (j != Long.MAX_VALUE) {
                        this.requested.decrementAndGet();
                    }
                    cdo.requestMore(1L);
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                SimpleQueue b12Var = cdo.queue;
                if (b12Var == null) {
                    b12Var = new b12(this.bufferSize);
                    cdo.queue = b12Var;
                }
                if (!b12Var.offer(u)) {
                    onError(new a01("Inner queue full?!"));
                    return;
                } else if (getAndIncrement() != 0) {
                    return;
                }
            }
            drainLoop();
        }

        public void tryEmitScalar(U u) {
            if (get() == 0 && compareAndSet(0, 1)) {
                long j = this.requested.get();
                SimpleQueue<U> mainQueue = this.queue;
                if (j == 0 || !(mainQueue == null || mainQueue.isEmpty())) {
                    if (mainQueue == null) {
                        mainQueue = getMainQueue();
                    }
                    if (!mainQueue.offer(u)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return;
                    }
                } else {
                    this.downstream.onNext(u);
                    if (j != Long.MAX_VALUE) {
                        this.requested.decrementAndGet();
                    }
                    if (this.maxConcurrency != Integer.MAX_VALUE && !this.cancelled) {
                        int i = this.scalarEmitted + 1;
                        this.scalarEmitted = i;
                        int i2 = this.scalarLimit;
                        if (i == i2) {
                            this.scalarEmitted = 0;
                            this.upstream.request(i2);
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!getMainQueue().offer(u)) {
                onError(new IllegalStateException("Scalar queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            drainLoop();
        }
    }

    public f(io.reactivex.Cfor<T> cfor, Function<? super T, ? extends Publisher<? extends U>> function, boolean z, int i, int i2) {
        super(cfor);
        this.f25629for = function;
        this.f25630new = z;
        this.f25631try = i;
        this.f25628case = i2;
    }

    public static <T, U> FlowableSubscriber<T> L7(Subscriber<? super U> subscriber, Function<? super T, ? extends Publisher<? extends U>> function, boolean z, int i, int i2) {
        return new Cif(subscriber, function, z, i, i2);
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super U> subscriber) {
        if (j1.m29493if(this.f25614if, subscriber, this.f25629for)) {
            return;
        }
        this.f25614if.m5(L7(subscriber, this.f25629for, this.f25630new, this.f25631try, this.f25628case));
    }
}
