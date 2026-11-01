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
import io.reactivex.internal.disposables.ResettableConnectable;
import io.reactivex.internal.fuseable.HasUpstreamPublisher;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.subscriptions.Cfor;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class s0<T> extends oq<T> implements HasUpstreamPublisher<T>, ResettableConnectable {

    /* renamed from: for, reason: not valid java name */
    public final int f25852for;

    /* renamed from: if, reason: not valid java name */
    public final Publisher<T> f25853if;

    /* renamed from: new, reason: not valid java name */
    public final AtomicReference<Cif<T>> f25854new = new AtomicReference<>();

    /* renamed from: io.reactivex.internal.operators.flowable.s0$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = 2845000326761540265L;
        public final Subscriber<? super T> downstream;
        public long emitted;
        public final Cif<T> parent;

        public Cdo(Subscriber<? super T> subscriber, Cif<T> cif) {
            this.downstream = subscriber;
            this.parent = cif;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.remove(this);
                this.parent.drain();
            }
        }

        public boolean isCancelled() {
            return get() == Long.MIN_VALUE;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            r6.m6777if(this, j);
            this.parent.drain();
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.s0$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicInteger implements FlowableSubscriber<T>, Disposable {
        public static final Cdo[] EMPTY = new Cdo[0];
        public static final Cdo[] TERMINATED = new Cdo[0];
        private static final long serialVersionUID = -1672047311619175801L;
        public final int bufferSize;
        public int consumed;
        public final AtomicReference<Cif<T>> current;
        public volatile boolean done;
        public Throwable error;
        public volatile SimpleQueue<T> queue;
        public int sourceMode;
        public final AtomicReference<Subscription> upstream = new AtomicReference<>();
        public final AtomicBoolean connect = new AtomicBoolean();
        public final AtomicReference<Cdo<T>[]> subscribers = new AtomicReference<>(EMPTY);

        public Cif(AtomicReference<Cif<T>> atomicReference, int i) {
            this.current = atomicReference;
            this.bufferSize = i;
        }

        public boolean add(Cdo<T> cdo) {
            Cdo<T>[] cdoArr;
            Cdo<T>[] cdoArr2;
            do {
                cdoArr = this.subscribers.get();
                if (cdoArr == TERMINATED) {
                    return false;
                }
                int length = cdoArr.length;
                cdoArr2 = new Cdo[length + 1];
                System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
                cdoArr2[length] = cdo;
            } while (!this.subscribers.compareAndSet(cdoArr, cdoArr2));
            return true;
        }

        public boolean checkTerminated(boolean z, boolean z2) {
            if (!z || !z2) {
                return false;
            }
            Throwable th = this.error;
            if (th != null) {
                signalError(th);
                return true;
            }
            for (Cdo<T> cdo : this.subscribers.getAndSet(TERMINATED)) {
                if (!cdo.isCancelled()) {
                    cdo.downstream.onComplete();
                }
            }
            return true;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.subscribers.getAndSet(TERMINATED);
            this.current.compareAndSet(this, null);
            Cfor.cancel(this.upstream);
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            SimpleQueue<T> simpleQueue = this.queue;
            int i = this.consumed;
            int i2 = this.bufferSize;
            int i3 = i2 - (i2 >> 2);
            boolean z = this.sourceMode != 1;
            int iAddAndGet = 1;
            SimpleQueue<T> simpleQueue2 = simpleQueue;
            int i4 = i;
            while (true) {
                if (simpleQueue2 != null) {
                    long jMin = Long.MAX_VALUE;
                    Cdo<T>[] cdoArr = this.subscribers.get();
                    boolean z2 = false;
                    for (Cdo<T> cdo : cdoArr) {
                        long j = cdo.get();
                        if (j != Long.MIN_VALUE) {
                            jMin = Math.min(j - cdo.emitted, jMin);
                            z2 = true;
                        }
                    }
                    if (!z2) {
                        jMin = 0;
                    }
                    for (long j2 = 0; jMin != j2; j2 = 0) {
                        boolean z3 = this.done;
                        try {
                            T tPoll = simpleQueue2.poll();
                            boolean z4 = tPoll == null;
                            if (checkTerminated(z3, z4)) {
                                return;
                            }
                            if (z4) {
                                break;
                            }
                            for (Cdo<T> cdo2 : cdoArr) {
                                if (!cdo2.isCancelled()) {
                                    cdo2.downstream.onNext(tPoll);
                                    cdo2.emitted++;
                                }
                            }
                            if (z && (i4 = i4 + 1) == i3) {
                                this.upstream.get().request(i3);
                                i4 = 0;
                            }
                            jMin--;
                            if (cdoArr != this.subscribers.get()) {
                                break;
                            }
                        } catch (Throwable th) {
                            t80.m7781if(th);
                            this.upstream.get().cancel();
                            simpleQueue2.clear();
                            this.done = true;
                            signalError(th);
                            return;
                        }
                    }
                    if (checkTerminated(this.done, simpleQueue2.isEmpty())) {
                        return;
                    }
                }
                this.consumed = i4;
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
                if (simpleQueue2 == null) {
                    simpleQueue2 = this.queue;
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.subscribers.get() == TERMINATED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.sourceMode != 0 || this.queue.offer(t)) {
                drain();
            } else {
                onError(new a01("Prefetch queue is full?!"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.setOnce(this.upstream, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int iRequestFusion = queueSubscription.requestFusion(7);
                    if (iRequestFusion == 1) {
                        this.sourceMode = iRequestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        drain();
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

        public void remove(Cdo<T> cdo) {
            Cdo<T>[] cdoArr;
            Cdo<T>[] cdoArr2;
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
                    Cdo<T>[] cdoArr3 = new Cdo[length - 1];
                    System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                    System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                    cdoArr2 = cdoArr3;
                }
            } while (!this.subscribers.compareAndSet(cdoArr, cdoArr2));
        }

        public void signalError(Throwable th) {
            for (Cdo<T> cdo : this.subscribers.getAndSet(TERMINATED)) {
                if (!cdo.isCancelled()) {
                    cdo.downstream.onError(th);
                }
            }
        }
    }

    public s0(Publisher<T> publisher, int i) {
        this.f25853if = publisher;
        this.f25852for = i;
    }

    @Override // android.support.v4.oq
    public void P7(Consumer<? super Disposable> consumer) {
        Cif<T> cif;
        while (true) {
            cif = this.f25854new.get();
            if (cif != null && !cif.isDisposed()) {
                break;
            }
            Cif<T> cif2 = new Cif<>(this.f25854new, this.f25852for);
            if (this.f25854new.compareAndSet(cif, cif2)) {
                cif = cif2;
                break;
            }
        }
        boolean z = !cif.connect.get() && cif.connect.compareAndSet(false, true);
        try {
            consumer.accept(cif);
            if (z) {
                this.f25853if.subscribe(cif);
            }
        } catch (Throwable th) {
            t80.m7781if(th);
            throw Ccase.m29712case(th);
        }
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cif<T> cif;
        while (true) {
            cif = this.f25854new.get();
            if (cif != null) {
                break;
            }
            Cif<T> cif2 = new Cif<>(this.f25854new, this.f25852for);
            if (this.f25854new.compareAndSet(cif, cif2)) {
                cif = cif2;
                break;
            }
        }
        Cdo<T> cdo = new Cdo<>(subscriber, cif);
        subscriber.onSubscribe(cdo);
        if (cif.add(cdo)) {
            if (cdo.isCancelled()) {
                cif.remove(cdo);
                return;
            } else {
                cif.drain();
                return;
            }
        }
        Throwable th = cif.error;
        if (th != null) {
            subscriber.onError(th);
        } else {
            subscriber.onComplete();
        }
    }

    public int publishBufferSize() {
        return this.f25852for;
    }

    @Override // io.reactivex.internal.disposables.ResettableConnectable
    public void resetIf(Disposable disposable) {
        this.f25854new.compareAndSet((Cif) disposable, null);
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamPublisher
    public Publisher<T> source() {
        return this.f25853if;
    }
}
