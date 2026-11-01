package io.reactivex.internal.operators.parallel;

import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import android.support.v4.ub1;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.parallel.const, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cconst<T> extends Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public final Comparator<? super T> f27038for;

    /* renamed from: if, reason: not valid java name */
    public final ub1<List<T>> f27039if;

    /* renamed from: io.reactivex.internal.operators.parallel.const$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Subscription> implements FlowableSubscriber<List<T>> {
        private static final long serialVersionUID = 6751017204873808094L;
        public final int index;
        public final Cif<T> parent;

        public Cdo(Cif<T> cif, int i) {
            this.parent = cif;
            this.index = i;
        }

        public void cancel() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.parent.innerError(th);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.setOnce(this, subscription, Long.MAX_VALUE);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(List<T> list) {
            this.parent.innerNext(list, this.index);
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.const$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 3481980673745556697L;
        public volatile boolean cancelled;
        public final Comparator<? super T> comparator;
        public final Subscriber<? super T> downstream;
        public final int[] indexes;
        public final List<T>[] lists;
        public final Cdo<T>[] subscribers;
        public final AtomicLong requested = new AtomicLong();
        public final AtomicInteger remaining = new AtomicInteger();
        public final AtomicReference<Throwable> error = new AtomicReference<>();

        public Cif(Subscriber<? super T> subscriber, int i, Comparator<? super T> comparator) {
            this.downstream = subscriber;
            this.comparator = comparator;
            Cdo<T>[] cdoArr = new Cdo[i];
            for (int i2 = 0; i2 < i; i2++) {
                cdoArr[i2] = new Cdo<>(this, i2);
            }
            this.subscribers = cdoArr;
            this.lists = new List[i];
            this.indexes = new int[i];
            this.remaining.lazySet(i);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelAll();
            if (getAndIncrement() == 0) {
                Arrays.fill(this.lists, (Object) null);
            }
        }

        public void cancelAll() {
            for (Cdo<T> cdo : this.subscribers) {
                cdo.cancel();
            }
        }

        public void drain() {
            boolean z;
            if (getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super T> subscriber = this.downstream;
            List<T>[] listArr = this.lists;
            int[] iArr = this.indexes;
            int length = iArr.length;
            int i = 1;
            while (true) {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    if (this.cancelled) {
                        Arrays.fill(listArr, (Object) null);
                        return;
                    }
                    Throwable th = this.error.get();
                    if (th != null) {
                        cancelAll();
                        Arrays.fill(listArr, (Object) null);
                        subscriber.onError(th);
                        return;
                    }
                    int i2 = -1;
                    T t = null;
                    for (int i3 = 0; i3 < length; i3++) {
                        List<T> list = listArr[i3];
                        int i4 = iArr[i3];
                        if (list.size() != i4) {
                            if (t == null) {
                                t = list.get(i4);
                            } else {
                                T t2 = list.get(i4);
                                try {
                                    if (this.comparator.compare(t, t2) > 0) {
                                        t = t2;
                                    }
                                } catch (Throwable th2) {
                                    t80.m7781if(th2);
                                    cancelAll();
                                    Arrays.fill(listArr, (Object) null);
                                    if (!this.error.compareAndSet(null, th2)) {
                                        jp1.l(th2);
                                    }
                                    subscriber.onError(this.error.get());
                                    return;
                                }
                            }
                            i2 = i3;
                        }
                    }
                    if (t == null) {
                        Arrays.fill(listArr, (Object) null);
                        subscriber.onComplete();
                        return;
                    } else {
                        subscriber.onNext(t);
                        iArr[i2] = iArr[i2] + 1;
                        j2++;
                    }
                }
                if (j2 == j) {
                    if (this.cancelled) {
                        Arrays.fill(listArr, (Object) null);
                        return;
                    }
                    Throwable th3 = this.error.get();
                    if (th3 != null) {
                        cancelAll();
                        Arrays.fill(listArr, (Object) null);
                        subscriber.onError(th3);
                        return;
                    }
                    int i5 = 0;
                    while (true) {
                        if (i5 >= length) {
                            z = true;
                            break;
                        } else {
                            if (iArr[i5] != listArr[i5].size()) {
                                z = false;
                                break;
                            }
                            i5++;
                        }
                    }
                    if (z) {
                        Arrays.fill(listArr, (Object) null);
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

        public void innerError(Throwable th) {
            if (this.error.compareAndSet(null, th)) {
                drain();
            } else if (th != this.error.get()) {
                jp1.l(th);
            }
        }

        public void innerNext(List<T> list, int i) {
            this.lists[i] = list;
            if (this.remaining.decrementAndGet() == 0) {
                drain();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                if (this.remaining.get() == 0) {
                    drain();
                }
            }
        }
    }

    public Cconst(ub1<List<T>> ub1Var, Comparator<? super T> comparator) {
        this.f27039if = ub1Var;
        this.f27038for = comparator;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cif cif = new Cif(subscriber, this.f27039if.mo7358strictfp(), this.f27038for);
        subscriber.onSubscribe(cif);
        this.f27039if.subscribe(cif.subscribers);
    }
}
