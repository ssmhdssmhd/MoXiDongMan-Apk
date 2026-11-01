package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import android.support.v4.ti1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class t0<T, R> extends io.reactivex.internal.operators.flowable.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super io.reactivex.Cfor<T>, ? extends Publisher<? extends R>> f25892for;

    /* renamed from: new, reason: not valid java name */
    public final int f25893new;

    /* renamed from: try, reason: not valid java name */
    public final boolean f25894try;

    /* renamed from: io.reactivex.internal.operators.flowable.t0$do, reason: invalid class name */
    public static final class Cdo<T> extends io.reactivex.Cfor<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: const, reason: not valid java name */
        public static final Cif[] f25895const = new Cif[0];

        /* renamed from: final, reason: not valid java name */
        public static final Cif[] f25896final = new Cif[0];

        /* renamed from: break, reason: not valid java name */
        public volatile boolean f25897break;

        /* renamed from: case, reason: not valid java name */
        public final boolean f25898case;

        /* renamed from: catch, reason: not valid java name */
        public Throwable f25899catch;

        /* renamed from: class, reason: not valid java name */
        public int f25900class;

        /* renamed from: goto, reason: not valid java name */
        public volatile SimpleQueue<T> f25903goto;

        /* renamed from: new, reason: not valid java name */
        public final int f25905new;

        /* renamed from: this, reason: not valid java name */
        public int f25906this;

        /* renamed from: try, reason: not valid java name */
        public final int f25907try;

        /* renamed from: if, reason: not valid java name */
        public final AtomicInteger f25904if = new AtomicInteger();

        /* renamed from: else, reason: not valid java name */
        public final AtomicReference<Subscription> f25901else = new AtomicReference<>();

        /* renamed from: for, reason: not valid java name */
        public final AtomicReference<Cif<T>[]> f25902for = new AtomicReference<>(f25895const);

        public Cdo(int i, boolean z) {
            this.f25905new = i;
            this.f25907try = i - (i >> 2);
            this.f25898case = z;
        }

        public boolean L7(Cif<T> cif) {
            Cif<T>[] cifArr;
            Cif<T>[] cifArr2;
            do {
                cifArr = this.f25902for.get();
                if (cifArr == f25896final) {
                    return false;
                }
                int length = cifArr.length;
                cifArr2 = new Cif[length + 1];
                System.arraycopy(cifArr, 0, cifArr2, 0, length);
                cifArr2[length] = cif;
            } while (!this.f25902for.compareAndSet(cifArr, cifArr2));
            return true;
        }

        public void M7() {
            for (Cif<T> cif : this.f25902for.getAndSet(f25896final)) {
                if (cif.get() != Long.MIN_VALUE) {
                    cif.downstream.onComplete();
                }
            }
        }

        public void N7() {
            AtomicReference<Cif<T>[]> atomicReference;
            Throwable th;
            Throwable th2;
            if (this.f25904if.getAndIncrement() != 0) {
                return;
            }
            SimpleQueue<T> simpleQueue = this.f25903goto;
            int i = this.f25900class;
            int i2 = this.f25907try;
            boolean z = this.f25906this != 1;
            AtomicReference<Cif<T>[]> atomicReference2 = this.f25902for;
            Cif<T>[] cifArr = atomicReference2.get();
            int iAddAndGet = 1;
            while (true) {
                int length = cifArr.length;
                if (simpleQueue == null || length == 0) {
                    atomicReference = atomicReference2;
                } else {
                    int length2 = cifArr.length;
                    long j = Long.MAX_VALUE;
                    long j2 = Long.MAX_VALUE;
                    int i3 = 0;
                    while (i3 < length2) {
                        Cif<T> cif = cifArr[i3];
                        AtomicReference<Cif<T>[]> atomicReference3 = atomicReference2;
                        long j3 = cif.get() - cif.emitted;
                        if (j3 == Long.MIN_VALUE) {
                            length--;
                        } else if (j2 > j3) {
                            j2 = j3;
                        }
                        i3++;
                        atomicReference2 = atomicReference3;
                    }
                    atomicReference = atomicReference2;
                    long j4 = 0;
                    if (length == 0) {
                        j2 = 0;
                    }
                    while (j2 != j4) {
                        if (isDisposed()) {
                            simpleQueue.clear();
                            return;
                        }
                        boolean z2 = this.f25897break;
                        if (z2 && !this.f25898case && (th2 = this.f25899catch) != null) {
                            O7(th2);
                            return;
                        }
                        try {
                            T tPoll = simpleQueue.poll();
                            boolean z3 = tPoll == null;
                            if (z2 && z3) {
                                Throwable th3 = this.f25899catch;
                                if (th3 != null) {
                                    O7(th3);
                                    return;
                                } else {
                                    M7();
                                    return;
                                }
                            }
                            if (z3) {
                                break;
                            }
                            int length3 = cifArr.length;
                            int i4 = 0;
                            boolean z4 = false;
                            while (i4 < length3) {
                                Cif<T> cif2 = cifArr[i4];
                                long j5 = cif2.get();
                                if (j5 != Long.MIN_VALUE) {
                                    if (j5 != j) {
                                        cif2.emitted++;
                                    }
                                    cif2.downstream.onNext(tPoll);
                                } else {
                                    z4 = true;
                                }
                                i4++;
                                j = Long.MAX_VALUE;
                            }
                            j2--;
                            if (z && (i = i + 1) == i2) {
                                this.f25901else.get().request(i2);
                                i = 0;
                            }
                            Cif<T>[] cifArr2 = atomicReference.get();
                            if (z4 || cifArr2 != cifArr) {
                                cifArr = cifArr2;
                                break;
                            } else {
                                j4 = 0;
                                j = Long.MAX_VALUE;
                            }
                        } catch (Throwable th4) {
                            t80.m7781if(th4);
                            io.reactivex.internal.subscriptions.Cfor.cancel(this.f25901else);
                            O7(th4);
                            return;
                        }
                    }
                    if (j2 == j4) {
                        if (isDisposed()) {
                            simpleQueue.clear();
                            return;
                        }
                        boolean z5 = this.f25897break;
                        if (z5 && !this.f25898case && (th = this.f25899catch) != null) {
                            O7(th);
                            return;
                        }
                        if (z5 && simpleQueue.isEmpty()) {
                            Throwable th5 = this.f25899catch;
                            if (th5 != null) {
                                O7(th5);
                                return;
                            } else {
                                M7();
                                return;
                            }
                        }
                    }
                }
                this.f25900class = i;
                iAddAndGet = this.f25904if.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
                if (simpleQueue == null) {
                    simpleQueue = this.f25903goto;
                }
                cifArr = atomicReference.get();
                atomicReference2 = atomicReference;
            }
        }

        public void O7(Throwable th) {
            for (Cif<T> cif : this.f25902for.getAndSet(f25896final)) {
                if (cif.get() != Long.MIN_VALUE) {
                    cif.downstream.onError(th);
                }
            }
        }

        public void P7(Cif<T> cif) {
            Cif<T>[] cifArr;
            Cif<T>[] cifArr2;
            do {
                cifArr = this.f25902for.get();
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
                    if (cifArr[i2] == cif) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    cifArr2 = f25895const;
                } else {
                    Cif<T>[] cifArr3 = new Cif[length - 1];
                    System.arraycopy(cifArr, 0, cifArr3, 0, i);
                    System.arraycopy(cifArr, i + 1, cifArr3, i, (length - i) - 1);
                    cifArr2 = cifArr3;
                }
            } while (!this.f25902for.compareAndSet(cifArr, cifArr2));
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            SimpleQueue<T> simpleQueue;
            io.reactivex.internal.subscriptions.Cfor.cancel(this.f25901else);
            if (this.f25904if.getAndIncrement() != 0 || (simpleQueue = this.f25903goto) == null) {
                return;
            }
            simpleQueue.clear();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25901else.get() == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // io.reactivex.Cfor
        public void n5(Subscriber<? super T> subscriber) {
            Cif<T> cif = new Cif<>(subscriber, this);
            subscriber.onSubscribe(cif);
            if (L7(cif)) {
                if (cif.isCancelled()) {
                    P7(cif);
                    return;
                } else {
                    N7();
                    return;
                }
            }
            Throwable th = this.f25899catch;
            if (th != null) {
                subscriber.onError(th);
            } else {
                subscriber.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f25897break) {
                return;
            }
            this.f25897break = true;
            N7();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25897break) {
                jp1.l(th);
                return;
            }
            this.f25899catch = th;
            this.f25897break = true;
            N7();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f25897break) {
                return;
            }
            if (this.f25906this != 0 || this.f25903goto.offer(t)) {
                N7();
            } else {
                this.f25901else.get().cancel();
                onError(new a01());
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.setOnce(this.f25901else, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int iRequestFusion = queueSubscription.requestFusion(3);
                    if (iRequestFusion == 1) {
                        this.f25906this = iRequestFusion;
                        this.f25903goto = queueSubscription;
                        this.f25897break = true;
                        N7();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.f25906this = iRequestFusion;
                        this.f25903goto = queueSubscription;
                        ti1.m7950break(subscription, this.f25905new);
                        return;
                    }
                }
                this.f25903goto = ti1.m7954for(this.f25905new);
                ti1.m7950break(subscription, this.f25905new);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.t0$for, reason: invalid class name */
    public static final class Cfor<R> implements FlowableSubscriber<R>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super R> f25908do;

        /* renamed from: for, reason: not valid java name */
        public Subscription f25909for;

        /* renamed from: if, reason: not valid java name */
        public final Cdo<?> f25910if;

        public Cfor(Subscriber<? super R> subscriber, Cdo<?> cdo) {
            this.f25908do = subscriber;
            this.f25910if = cdo;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f25909for.cancel();
            this.f25910if.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25908do.onComplete();
            this.f25910if.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f25908do.onError(th);
            this.f25910if.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(R r) {
            this.f25908do.onNext(r);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f25909for, subscription)) {
                this.f25909for = subscription;
                this.f25908do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f25909for.request(j);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.t0$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = 8664815189257569791L;
        public final Subscriber<? super T> downstream;
        public long emitted;
        public final Cdo<T> parent;

        public Cif(Subscriber<? super T> subscriber, Cdo<T> cdo) {
            this.downstream = subscriber;
            this.parent = cdo;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.P7(this);
                this.parent.N7();
            }
        }

        public boolean isCancelled() {
            return get() == Long.MIN_VALUE;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6777if(this, j);
                this.parent.N7();
            }
        }
    }

    public t0(io.reactivex.Cfor<T> cfor, Function<? super io.reactivex.Cfor<T>, ? extends Publisher<? extends R>> function, int i, boolean z) {
        super(cfor);
        this.f25892for = function;
        this.f25893new = i;
        this.f25894try = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        Cdo cdo = new Cdo(this.f25893new, this.f25894try);
        try {
            ((Publisher) io.reactivex.internal.functions.Cif.m29468else(this.f25892for.apply(cdo), "selector returned a null Publisher")).subscribe(new Cfor(subscriber, cdo));
            this.f25614if.m5(cdo);
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
        }
    }
}
