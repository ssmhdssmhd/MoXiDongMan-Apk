package io.reactivex.processors;

import android.support.v4.a01;
import android.support.v4.b12;
import android.support.v4.b41;
import android.support.v4.cs1;
import android.support.v4.e12;
import android.support.v4.gl;
import android.support.v4.jp1;
import android.support.v4.s6;
import android.support.v4.t6;
import android.support.v4.t80;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

@cs1("none")
@t6(s6.FULL)
/* renamed from: io.reactivex.processors.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew<T> extends Cfor<T> {

    /* renamed from: final, reason: not valid java name */
    public static final Cdo[] f27517final = new Cdo[0];

    /* renamed from: super, reason: not valid java name */
    public static final Cdo[] f27518super = new Cdo[0];

    /* renamed from: break, reason: not valid java name */
    public volatile boolean f27519break;

    /* renamed from: case, reason: not valid java name */
    public final int f27520case;

    /* renamed from: catch, reason: not valid java name */
    public volatile Throwable f27521catch;

    /* renamed from: class, reason: not valid java name */
    public int f27522class;

    /* renamed from: const, reason: not valid java name */
    public int f27523const;

    /* renamed from: else, reason: not valid java name */
    public final int f27524else;

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference<Subscription> f27525for;

    /* renamed from: goto, reason: not valid java name */
    public final boolean f27526goto;

    /* renamed from: if, reason: not valid java name */
    public final AtomicInteger f27527if;

    /* renamed from: new, reason: not valid java name */
    public final AtomicReference<Cdo<T>[]> f27528new;

    /* renamed from: this, reason: not valid java name */
    public volatile SimpleQueue<T> f27529this;

    /* renamed from: try, reason: not valid java name */
    public final AtomicBoolean f27530try;

    /* renamed from: io.reactivex.processors.new$do, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cdo<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = -363282618957264509L;
        public final Subscriber<? super T> downstream;
        public long emitted;
        public final Cnew<T> parent;

        public Cdo(Subscriber<? super T> subscriber, Cnew<T> cnew) {
            this.downstream = subscriber;
            this.parent = cnew;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.X7(this);
            }
        }

        public void onComplete() {
            if (get() != Long.MIN_VALUE) {
                this.downstream.onComplete();
            }
        }

        public void onError(Throwable th) {
            if (get() != Long.MIN_VALUE) {
                this.downstream.onError(th);
            }
        }

        public void onNext(T t) {
            if (get() != Long.MIN_VALUE) {
                this.emitted++;
                this.downstream.onNext(t);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            long j2;
            long j3;
            if (Cfor.validate(j)) {
                do {
                    j2 = get();
                    if (j2 == Long.MIN_VALUE) {
                        return;
                    }
                    if (j2 == Long.MAX_VALUE) {
                        return;
                    } else {
                        j3 = j2 + j;
                    }
                } while (!compareAndSet(j2, j3 >= 0 ? j3 : Long.MAX_VALUE));
                this.parent.V7();
            }
        }
    }

    public Cnew(int i, boolean z) {
        Cif.m29470goto(i, "bufferSize");
        this.f27520case = i;
        this.f27524else = i - (i >> 2);
        this.f27527if = new AtomicInteger();
        this.f27528new = new AtomicReference<>(f27517final);
        this.f27525for = new AtomicReference<>();
        this.f27526goto = z;
        this.f27530try = new AtomicBoolean();
    }

    @b41
    @gl
    public static <T> Cnew<T> R7() {
        return new Cnew<>(io.reactivex.Cfor.g(), false);
    }

    @b41
    @gl
    public static <T> Cnew<T> S7(int i) {
        return new Cnew<>(i, false);
    }

    @b41
    @gl
    public static <T> Cnew<T> T7(int i, boolean z) {
        return new Cnew<>(i, z);
    }

    @b41
    @gl
    public static <T> Cnew<T> U7(boolean z) {
        return new Cnew<>(io.reactivex.Cfor.g(), z);
    }

    @Override // io.reactivex.processors.Cfor
    public Throwable L7() {
        if (this.f27530try.get()) {
            return this.f27521catch;
        }
        return null;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean M7() {
        return this.f27530try.get() && this.f27521catch == null;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean N7() {
        return this.f27528new.get().length != 0;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean O7() {
        return this.f27530try.get() && this.f27521catch != null;
    }

    public boolean Q7(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f27528new.get();
            if (cdoArr == f27518super) {
                return false;
            }
            int length = cdoArr.length;
            cdoArr2 = new Cdo[length + 1];
            System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
            cdoArr2[length] = cdo;
        } while (!this.f27528new.compareAndSet(cdoArr, cdoArr2));
        return true;
    }

    public void V7() {
        T tPoll;
        if (this.f27527if.getAndIncrement() != 0) {
            return;
        }
        AtomicReference<Cdo<T>[]> atomicReference = this.f27528new;
        int i = this.f27522class;
        int i2 = this.f27524else;
        int i3 = this.f27523const;
        int iAddAndGet = 1;
        while (true) {
            SimpleQueue<T> simpleQueue = this.f27529this;
            if (simpleQueue != null) {
                Cdo<T>[] cdoArr = atomicReference.get();
                if (cdoArr.length != 0) {
                    int length = cdoArr.length;
                    long j = -1;
                    long jMin = -1;
                    int i4 = 0;
                    while (i4 < length) {
                        Cdo<T> cdo = cdoArr[i4];
                        long j2 = cdo.get();
                        if (j2 >= 0) {
                            jMin = jMin == j ? j2 - cdo.emitted : Math.min(jMin, j2 - cdo.emitted);
                        }
                        i4++;
                        j = -1;
                    }
                    int i5 = i;
                    while (jMin > 0) {
                        Cdo<T>[] cdoArr2 = atomicReference.get();
                        if (cdoArr2 == f27518super) {
                            simpleQueue.clear();
                            return;
                        }
                        if (cdoArr != cdoArr2) {
                            break;
                        }
                        boolean z = this.f27519break;
                        try {
                            tPoll = simpleQueue.poll();
                        } catch (Throwable th) {
                            t80.m7781if(th);
                            Cfor.cancel(this.f27525for);
                            this.f27521catch = th;
                            this.f27519break = true;
                            tPoll = null;
                            z = true;
                        }
                        boolean z2 = tPoll == null;
                        if (z && z2) {
                            Throwable th2 = this.f27521catch;
                            if (th2 != null) {
                                for (Cdo<T> cdo2 : atomicReference.getAndSet(f27518super)) {
                                    cdo2.onError(th2);
                                }
                                return;
                            }
                            for (Cdo<T> cdo3 : atomicReference.getAndSet(f27518super)) {
                                cdo3.onComplete();
                            }
                            return;
                        }
                        if (z2) {
                            break;
                        }
                        for (Cdo<T> cdo4 : cdoArr) {
                            cdo4.onNext(tPoll);
                        }
                        jMin--;
                        if (i3 != 1 && (i5 = i5 + 1) == i2) {
                            this.f27525for.get().request(i2);
                            i5 = 0;
                        }
                    }
                    if (jMin == 0) {
                        Cdo<T>[] cdoArr3 = atomicReference.get();
                        Cdo<T>[] cdoArr4 = f27518super;
                        if (cdoArr3 == cdoArr4) {
                            simpleQueue.clear();
                            return;
                        }
                        if (cdoArr != cdoArr3) {
                            i = i5;
                        } else if (this.f27519break && simpleQueue.isEmpty()) {
                            Throwable th3 = this.f27521catch;
                            if (th3 != null) {
                                for (Cdo<T> cdo5 : atomicReference.getAndSet(cdoArr4)) {
                                    cdo5.onError(th3);
                                }
                                return;
                            }
                            for (Cdo<T> cdo6 : atomicReference.getAndSet(cdoArr4)) {
                                cdo6.onComplete();
                            }
                            return;
                        }
                    }
                    i = i5;
                }
            }
            this.f27522class = i;
            iAddAndGet = this.f27527if.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
    }

    public boolean W7(T t) {
        if (this.f27530try.get()) {
            return false;
        }
        Cif.m29468else(t, "offer called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f27523const != 0 || !this.f27529this.offer(t)) {
            return false;
        }
        V7();
        return true;
    }

    public void X7(Cdo<T> cdo) {
        while (true) {
            Cdo<T>[] cdoArr = this.f27528new.get();
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
            if (length != 1) {
                Cdo<T>[] cdoArr2 = new Cdo[length - 1];
                System.arraycopy(cdoArr, 0, cdoArr2, 0, i);
                System.arraycopy(cdoArr, i + 1, cdoArr2, i, (length - i) - 1);
                if (this.f27528new.compareAndSet(cdoArr, cdoArr2)) {
                    return;
                }
            } else if (this.f27526goto) {
                if (this.f27528new.compareAndSet(cdoArr, f27518super)) {
                    Cfor.cancel(this.f27525for);
                    this.f27530try.set(true);
                    return;
                }
            } else if (this.f27528new.compareAndSet(cdoArr, f27517final)) {
                return;
            }
        }
    }

    public void Y7() {
        if (Cfor.setOnce(this.f27525for, io.reactivex.internal.subscriptions.Cdo.INSTANCE)) {
            this.f27529this = new b12(this.f27520case);
        }
    }

    public void Z7() {
        if (Cfor.setOnce(this.f27525for, io.reactivex.internal.subscriptions.Cdo.INSTANCE)) {
            this.f27529this = new e12(this.f27520case);
        }
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Throwable th;
        Cdo<T> cdo = new Cdo<>(subscriber, this);
        subscriber.onSubscribe(cdo);
        if (Q7(cdo)) {
            if (cdo.get() == Long.MIN_VALUE) {
                X7(cdo);
                return;
            } else {
                V7();
                return;
            }
        }
        if ((this.f27530try.get() || !this.f27526goto) && (th = this.f27521catch) != null) {
            subscriber.onError(th);
        } else {
            subscriber.onComplete();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f27530try.compareAndSet(false, true)) {
            this.f27519break = true;
            V7();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        Cif.m29468else(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f27530try.compareAndSet(false, true)) {
            jp1.l(th);
            return;
        }
        this.f27521catch = th;
        this.f27519break = true;
        V7();
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (this.f27530try.get()) {
            return;
        }
        if (this.f27523const == 0) {
            Cif.m29468else(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
            if (!this.f27529this.offer(t)) {
                Cfor.cancel(this.f27525for);
                onError(new a01());
                return;
            }
        }
        V7();
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (Cfor.setOnce(this.f27525for, subscription)) {
            if (subscription instanceof QueueSubscription) {
                QueueSubscription queueSubscription = (QueueSubscription) subscription;
                int iRequestFusion = queueSubscription.requestFusion(3);
                if (iRequestFusion == 1) {
                    this.f27523const = iRequestFusion;
                    this.f27529this = queueSubscription;
                    this.f27519break = true;
                    V7();
                    return;
                }
                if (iRequestFusion == 2) {
                    this.f27523const = iRequestFusion;
                    this.f27529this = queueSubscription;
                    subscription.request(this.f27520case);
                    return;
                }
            }
            this.f27529this = new b12(this.f27520case);
            subscription.request(this.f27520case);
        }
    }
}
