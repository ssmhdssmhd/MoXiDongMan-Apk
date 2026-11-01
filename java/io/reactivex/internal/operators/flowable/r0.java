package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.b12;
import android.support.v4.jp1;
import android.support.v4.oq;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.fuseable.HasUpstreamPublisher;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.util.Cbreak;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class r0<T> extends oq<T> implements HasUpstreamPublisher<T>, FlowablePublishClassic<T> {

    /* renamed from: case, reason: not valid java name */
    public static final long f25826case = Long.MIN_VALUE;

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference<Cfor<T>> f25827for;

    /* renamed from: if, reason: not valid java name */
    public final io.reactivex.Cfor<T> f25828if;

    /* renamed from: new, reason: not valid java name */
    public final int f25829new;

    /* renamed from: try, reason: not valid java name */
    public final Publisher<T> f25830try;

    /* renamed from: io.reactivex.internal.operators.flowable.r0$do, reason: invalid class name */
    public static final class Cdo<T> implements Publisher<T> {

        /* renamed from: do, reason: not valid java name */
        private final AtomicReference<Cfor<T>> f25831do;

        /* renamed from: if, reason: not valid java name */
        private final int f25832if;

        public Cdo(AtomicReference<Cfor<T>> atomicReference, int i) {
            this.f25831do = atomicReference;
            this.f25832if = i;
        }

        @Override // org.reactivestreams.Publisher
        public void subscribe(Subscriber<? super T> subscriber) {
            Cfor<T> cfor;
            Cif<T> cif = new Cif<>(subscriber);
            subscriber.onSubscribe(cif);
            while (true) {
                cfor = this.f25831do.get();
                if (cfor == null || cfor.isDisposed()) {
                    Cfor<T> cfor2 = new Cfor<>(this.f25831do, this.f25832if);
                    if (this.f25831do.compareAndSet(cfor, cfor2)) {
                        cfor = cfor2;
                    } else {
                        continue;
                    }
                }
                if (cfor.add(cif)) {
                    break;
                }
            }
            if (cif.get() == Long.MIN_VALUE) {
                cfor.remove(cif);
            } else {
                cif.parent = cfor;
            }
            cfor.dispatch();
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.r0$for, reason: invalid class name */
    public static final class Cfor<T> extends AtomicInteger implements FlowableSubscriber<T>, Disposable {
        public static final Cif[] EMPTY = new Cif[0];
        public static final Cif[] TERMINATED = new Cif[0];
        private static final long serialVersionUID = -202316842419149694L;
        public final int bufferSize;
        public final AtomicReference<Cfor<T>> current;
        public volatile SimpleQueue<T> queue;
        public int sourceMode;
        public volatile Object terminalEvent;
        public final AtomicReference<Subscription> upstream = new AtomicReference<>();
        public final AtomicReference<Cif<T>[]> subscribers = new AtomicReference<>(EMPTY);
        public final AtomicBoolean shouldConnect = new AtomicBoolean();

        public Cfor(AtomicReference<Cfor<T>> atomicReference, int i) {
            this.current = atomicReference;
            this.bufferSize = i;
        }

        public boolean add(Cif<T> cif) {
            Cif<T>[] cifArr;
            Cif<T>[] cifArr2;
            do {
                cifArr = this.subscribers.get();
                if (cifArr == TERMINATED) {
                    return false;
                }
                int length = cifArr.length;
                cifArr2 = new Cif[length + 1];
                System.arraycopy(cifArr, 0, cifArr2, 0, length);
                cifArr2[length] = cif;
            } while (!this.subscribers.compareAndSet(cifArr, cifArr2));
            return true;
        }

        public boolean checkTerminated(Object obj, boolean z) {
            int i = 0;
            if (obj != null) {
                if (!Cbreak.isComplete(obj)) {
                    Throwable error = Cbreak.getError(obj);
                    this.current.compareAndSet(this, null);
                    Cif<T>[] andSet = this.subscribers.getAndSet(TERMINATED);
                    if (andSet.length != 0) {
                        int length = andSet.length;
                        while (i < length) {
                            andSet[i].child.onError(error);
                            i++;
                        }
                    } else {
                        jp1.l(error);
                    }
                    return true;
                }
                if (z) {
                    this.current.compareAndSet(this, null);
                    Cif<T>[] andSet2 = this.subscribers.getAndSet(TERMINATED);
                    int length2 = andSet2.length;
                    while (i < length2) {
                        andSet2[i].child.onComplete();
                        i++;
                    }
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:72:0x011f, code lost:
        
            if (r11 == 0) goto L76;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x0124, code lost:
        
            if (r25.sourceMode == 1) goto L76;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x0126, code lost:
        
            r25.upstream.get().request(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0132, code lost:
        
            r4 = r0;
            r3 = 1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void dispatch() {
            T tPoll;
            long j;
            T tPoll2;
            SimpleQueue<T> simpleQueue;
            boolean z;
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Cif<T>[]> atomicReference = this.subscribers;
            int i = 1;
            Cif<T>[] cifArr = atomicReference.get();
            int iAddAndGet = 1;
            while (true) {
                Object obj = this.terminalEvent;
                SimpleQueue<T> simpleQueue2 = this.queue;
                boolean z2 = simpleQueue2 == null || simpleQueue2.isEmpty();
                if (checkTerminated(obj, z2)) {
                    return;
                }
                if (!z2) {
                    int length = cifArr.length;
                    int i2 = 0;
                    long jMin = Long.MAX_VALUE;
                    for (Cif<T> cif : cifArr) {
                        long j2 = cif.get();
                        if (j2 != Long.MIN_VALUE) {
                            jMin = Math.min(jMin, j2 - cif.emitted);
                        } else {
                            i2++;
                        }
                    }
                    if (length == i2) {
                        Object objError = this.terminalEvent;
                        try {
                            tPoll = simpleQueue2.poll();
                        } catch (Throwable th) {
                            t80.m7781if(th);
                            this.upstream.get().cancel();
                            objError = Cbreak.error(th);
                            this.terminalEvent = objError;
                            tPoll = null;
                        }
                        if (checkTerminated(objError, tPoll == null)) {
                            return;
                        }
                        if (this.sourceMode != i) {
                            this.upstream.get().request(1L);
                        }
                    } else {
                        int i3 = 0;
                        while (true) {
                            j = i3;
                            if (j >= jMin) {
                                break;
                            }
                            Object objError2 = this.terminalEvent;
                            try {
                                tPoll2 = simpleQueue2.poll();
                            } catch (Throwable th2) {
                                t80.m7781if(th2);
                                this.upstream.get().cancel();
                                objError2 = Cbreak.error(th2);
                                this.terminalEvent = objError2;
                                tPoll2 = null;
                            }
                            boolean z3 = tPoll2 == null;
                            if (checkTerminated(objError2, z3)) {
                                return;
                            }
                            if (z3) {
                                z2 = z3;
                                break;
                            }
                            Object value = Cbreak.getValue(tPoll2);
                            int length2 = cifArr.length;
                            int i4 = 0;
                            boolean z4 = false;
                            while (i4 < length2) {
                                Cif<T> cif2 = cifArr[i4];
                                long j3 = cif2.get();
                                if (j3 != Long.MIN_VALUE) {
                                    simpleQueue = simpleQueue2;
                                    z = z3;
                                    if (j3 != Long.MAX_VALUE) {
                                        cif2.emitted++;
                                    }
                                    cif2.child.onNext(value);
                                } else {
                                    simpleQueue = simpleQueue2;
                                    z = z3;
                                    z4 = true;
                                }
                                i4++;
                                simpleQueue2 = simpleQueue;
                                z3 = z;
                            }
                            SimpleQueue<T> simpleQueue3 = simpleQueue2;
                            boolean z5 = z3;
                            i3++;
                            Cif<T>[] cifArr2 = atomicReference.get();
                            if (z4 || cifArr2 != cifArr) {
                                break;
                            }
                            simpleQueue2 = simpleQueue3;
                            z2 = z5;
                        }
                        if (i3 != 0) {
                            i = 1;
                            if (this.sourceMode != 1) {
                                this.upstream.get().request(j);
                            }
                        } else {
                            i = 1;
                        }
                        if (jMin == 0 || z2) {
                        }
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                } else {
                    cifArr = atomicReference.get();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Cif<T>[] cifArr = this.subscribers.get();
            Cif<T>[] cifArr2 = TERMINATED;
            if (cifArr == cifArr2 || this.subscribers.getAndSet(cifArr2) == cifArr2) {
                return;
            }
            this.current.compareAndSet(this, null);
            io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.subscribers.get() == TERMINATED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.terminalEvent == null) {
                this.terminalEvent = Cbreak.complete();
                dispatch();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.terminalEvent != null) {
                jp1.l(th);
            } else {
                this.terminalEvent = Cbreak.error(th);
                dispatch();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.sourceMode != 0 || this.queue.offer(t)) {
                dispatch();
            } else {
                onError(new a01("Prefetch queue is full?!"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.setOnce(this.upstream, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int iRequestFusion = queueSubscription.requestFusion(7);
                    if (iRequestFusion == 1) {
                        this.sourceMode = iRequestFusion;
                        this.queue = queueSubscription;
                        this.terminalEvent = Cbreak.complete();
                        dispatch();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.sourceMode = iRequestFusion;
                        this.queue = queueSubscription;
                        subscription.request(this.bufferSize);
                        return;
                    }
                }
                this.queue = new b12(this.bufferSize);
                subscription.request(this.bufferSize);
            }
        }

        public void remove(Cif<T> cif) {
            Cif<T>[] cifArr;
            Cif<T>[] cifArr2;
            do {
                cifArr = this.subscribers.get();
                int length = cifArr.length;
                if (length == 0) {
                    return;
                }
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (cifArr[i2].equals(cif)) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    cifArr2 = EMPTY;
                } else {
                    Cif<T>[] cifArr3 = new Cif[length - 1];
                    System.arraycopy(cifArr, 0, cifArr3, 0, i);
                    System.arraycopy(cifArr, i + 1, cifArr3, i, (length - i) - 1);
                    cifArr2 = cifArr3;
                }
            } while (!this.subscribers.compareAndSet(cifArr, cifArr2));
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.r0$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = -4453897557930727610L;
        public final Subscriber<? super T> child;
        public long emitted;
        public volatile Cfor<T> parent;

        public Cif(Subscriber<? super T> subscriber) {
            this.child = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            Cfor<T> cfor;
            if (get() == Long.MIN_VALUE || getAndSet(Long.MIN_VALUE) == Long.MIN_VALUE || (cfor = this.parent) == null) {
                return;
            }
            cfor.remove(this);
            cfor.dispatch();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6777if(this, j);
                Cfor<T> cfor = this.parent;
                if (cfor != null) {
                    cfor.dispatch();
                }
            }
        }
    }

    private r0(Publisher<T> publisher, io.reactivex.Cfor<T> cfor, AtomicReference<Cfor<T>> atomicReference, int i) {
        this.f25830try = publisher;
        this.f25828if = cfor;
        this.f25827for = atomicReference;
        this.f25829new = i;
    }

    public static <T> oq<T> X7(io.reactivex.Cfor<T> cfor, int i) {
        AtomicReference atomicReference = new AtomicReference();
        return jp1.c(new r0(new Cdo(atomicReference, i), cfor, atomicReference, i));
    }

    @Override // android.support.v4.oq
    public void P7(Consumer<? super Disposable> consumer) {
        Cfor<T> cfor;
        while (true) {
            cfor = this.f25827for.get();
            if (cfor != null && !cfor.isDisposed()) {
                break;
            }
            Cfor<T> cfor2 = new Cfor<>(this.f25827for, this.f25829new);
            if (this.f25827for.compareAndSet(cfor, cfor2)) {
                cfor = cfor2;
                break;
            }
        }
        boolean z = !cfor.shouldConnect.get() && cfor.shouldConnect.compareAndSet(false, true);
        try {
            consumer.accept(cfor);
            if (z) {
                this.f25828if.m5(cfor);
            }
        } catch (Throwable th) {
            t80.m7781if(th);
            throw Ccase.m29712case(th);
        }
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25830try.subscribe(subscriber);
    }

    @Override // io.reactivex.internal.operators.flowable.FlowablePublishClassic
    public int publishBufferSize() {
        return this.f25829new;
    }

    @Override // io.reactivex.internal.operators.flowable.FlowablePublishClassic
    public Publisher<T> publishSource() {
        return this.f25828if;
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamPublisher
    public Publisher<T> source() {
        return this.f25828if;
    }
}
