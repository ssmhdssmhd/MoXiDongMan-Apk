package io.reactivex.internal.operators.parallel;

import android.support.v4.ez;
import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.ub1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.BiFunction;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.parallel.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccatch<T> extends io.reactivex.Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public final BiFunction<T, T, T> f27030for;

    /* renamed from: if, reason: not valid java name */
    public final ub1<? extends T> f27031if;

    /* renamed from: io.reactivex.internal.operators.parallel.catch$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -7954444275102466525L;
        public boolean done;
        public final Cif<T> parent;
        public final BiFunction<T, T, T> reducer;
        public T value;

        public Cdo(Cif<T> cif, BiFunction<T, T, T> biFunction) {
            this.parent = cif;
            this.reducer = biFunction;
        }

        public void cancel() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.parent.innerComplete(this.value);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
            } else {
                this.done = true;
                this.parent.innerError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            T t2 = this.value;
            if (t2 == null) {
                this.value = t;
                return;
            }
            try {
                this.value = (T) io.reactivex.internal.functions.Cif.m29468else(this.reducer.apply(t2, t), "The reducer returned a null value");
            } catch (Throwable th) {
                t80.m7781if(th);
                get().cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.catch$for, reason: invalid class name */
    public static final class Cfor<T> extends AtomicInteger {
        private static final long serialVersionUID = 473971317683868662L;
        public T first;
        public final AtomicInteger releaseIndex = new AtomicInteger();
        public T second;

        public boolean releaseSlot() {
            return this.releaseIndex.incrementAndGet() == 2;
        }

        public int tryAcquireSlot() {
            int i;
            do {
                i = get();
                if (i >= 2) {
                    return -1;
                }
            } while (!compareAndSet(i, i + 1));
            return i;
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.catch$if, reason: invalid class name */
    public static final class Cif<T> extends ez<T> {
        private static final long serialVersionUID = -5370107872170712765L;
        public final AtomicReference<Cfor<T>> current;
        public final AtomicReference<Throwable> error;
        public final BiFunction<T, T, T> reducer;
        public final AtomicInteger remaining;
        public final Cdo<T>[] subscribers;

        public Cif(Subscriber<? super T> subscriber, int i, BiFunction<T, T, T> biFunction) {
            super(subscriber);
            this.current = new AtomicReference<>();
            this.remaining = new AtomicInteger();
            this.error = new AtomicReference<>();
            Cdo<T>[] cdoArr = new Cdo[i];
            for (int i2 = 0; i2 < i; i2++) {
                cdoArr[i2] = new Cdo<>(this, biFunction);
            }
            this.subscribers = cdoArr;
            this.reducer = biFunction;
            this.remaining.lazySet(i);
        }

        public Cfor<T> addValue(T t) {
            Cfor<T> cfor;
            int iTryAcquireSlot;
            while (true) {
                cfor = this.current.get();
                if (cfor == null) {
                    cfor = new Cfor<>();
                    if (!this.current.compareAndSet(null, cfor)) {
                        continue;
                    }
                }
                iTryAcquireSlot = cfor.tryAcquireSlot();
                if (iTryAcquireSlot >= 0) {
                    break;
                }
                this.current.compareAndSet(cfor, null);
            }
            if (iTryAcquireSlot == 0) {
                cfor.first = t;
            } else {
                cfor.second = t;
            }
            if (!cfor.releaseSlot()) {
                return null;
            }
            this.current.compareAndSet(cfor, null);
            return cfor;
        }

        @Override // android.support.v4.ez, org.reactivestreams.Subscription
        public void cancel() {
            for (Cdo<T> cdo : this.subscribers) {
                cdo.cancel();
            }
        }

        public void innerComplete(T t) {
            if (t != null) {
                while (true) {
                    Cfor<T> cforAddValue = addValue(t);
                    if (cforAddValue == null) {
                        break;
                    }
                    try {
                        t = (T) io.reactivex.internal.functions.Cif.m29468else(this.reducer.apply(cforAddValue.first, cforAddValue.second), "The reducer returned a null value");
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        innerError(th);
                        return;
                    }
                }
            }
            if (this.remaining.decrementAndGet() == 0) {
                Cfor<T> cfor = this.current.get();
                this.current.lazySet(null);
                if (cfor != null) {
                    complete(cfor.first);
                } else {
                    this.downstream.onComplete();
                }
            }
        }

        public void innerError(Throwable th) {
            if (this.error.compareAndSet(null, th)) {
                cancel();
                this.downstream.onError(th);
            } else if (th != this.error.get()) {
                jp1.l(th);
            }
        }
    }

    public Ccatch(ub1<? extends T> ub1Var, BiFunction<T, T, T> biFunction) {
        this.f27031if = ub1Var;
        this.f27030for = biFunction;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cif cif = new Cif(subscriber, this.f27031if.mo7358strictfp(), this.f27030for);
        subscriber.onSubscribe(cif);
        this.f27031if.subscribe(cif.subscribers);
    }
}
