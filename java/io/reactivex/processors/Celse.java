package io.reactivex.processors;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.e12;
import android.support.v4.gl;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.z7;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.processors.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse<T> extends Cfor<T> {

    /* renamed from: break, reason: not valid java name */
    public final z7<T> f27496break;

    /* renamed from: case, reason: not valid java name */
    public Throwable f27497case;

    /* renamed from: catch, reason: not valid java name */
    public final AtomicLong f27498catch;

    /* renamed from: class, reason: not valid java name */
    public boolean f27499class;

    /* renamed from: else, reason: not valid java name */
    public final AtomicReference<Subscriber<? super T>> f27500else;

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference<Runnable> f27501for;

    /* renamed from: goto, reason: not valid java name */
    public volatile boolean f27502goto;

    /* renamed from: if, reason: not valid java name */
    public final e12<T> f27503if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f27504new;

    /* renamed from: this, reason: not valid java name */
    public final AtomicBoolean f27505this;

    /* renamed from: try, reason: not valid java name */
    public volatile boolean f27506try;

    /* renamed from: io.reactivex.processors.else$do, reason: invalid class name */
    public final class Cdo extends z7<T> {
        private static final long serialVersionUID = -4896760517184205454L;

        public Cdo() {
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (Celse.this.f27502goto) {
                return;
            }
            Celse.this.f27502goto = true;
            Celse.this.W7();
            Celse.this.f27500else.lazySet(null);
            if (Celse.this.f27496break.getAndIncrement() == 0) {
                Celse.this.f27500else.lazySet(null);
                Celse celse = Celse.this;
                if (celse.f27499class) {
                    return;
                }
                celse.f27503if.clear();
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            Celse.this.f27503if.clear();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return Celse.this.f27503if.isEmpty();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() {
            return Celse.this.f27503if.poll();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (Cfor.validate(j)) {
                r6.m6775do(Celse.this.f27498catch, j);
                Celse.this.X7();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            Celse.this.f27499class = true;
            return 2;
        }
    }

    public Celse(int i) {
        this(i, null, true);
    }

    @b41
    @gl
    public static <T> Celse<T> R7() {
        return new Celse<>(io.reactivex.Cfor.g());
    }

    @b41
    @gl
    public static <T> Celse<T> S7(int i) {
        return new Celse<>(i);
    }

    @b41
    @gl
    public static <T> Celse<T> T7(int i, Runnable runnable) {
        Cif.m29468else(runnable, "onTerminate");
        return new Celse<>(i, runnable);
    }

    @b41
    @gl
    public static <T> Celse<T> U7(int i, Runnable runnable, boolean z) {
        Cif.m29468else(runnable, "onTerminate");
        return new Celse<>(i, runnable, z);
    }

    @b41
    @gl
    public static <T> Celse<T> V7(boolean z) {
        return new Celse<>(io.reactivex.Cfor.g(), null, z);
    }

    @Override // io.reactivex.processors.Cfor
    @a51
    public Throwable L7() {
        if (this.f27506try) {
            return this.f27497case;
        }
        return null;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean M7() {
        return this.f27506try && this.f27497case == null;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean N7() {
        return this.f27500else.get() != null;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean O7() {
        return this.f27506try && this.f27497case != null;
    }

    public boolean Q7(boolean z, boolean z2, boolean z3, Subscriber<? super T> subscriber, e12<T> e12Var) {
        if (this.f27502goto) {
            e12Var.clear();
            this.f27500else.lazySet(null);
            return true;
        }
        if (!z2) {
            return false;
        }
        if (z && this.f27497case != null) {
            e12Var.clear();
            this.f27500else.lazySet(null);
            subscriber.onError(this.f27497case);
            return true;
        }
        if (!z3) {
            return false;
        }
        Throwable th = this.f27497case;
        this.f27500else.lazySet(null);
        if (th != null) {
            subscriber.onError(th);
        } else {
            subscriber.onComplete();
        }
        return true;
    }

    public void W7() {
        Runnable andSet = this.f27501for.getAndSet(null);
        if (andSet != null) {
            andSet.run();
        }
    }

    public void X7() {
        if (this.f27496break.getAndIncrement() != 0) {
            return;
        }
        int iAddAndGet = 1;
        Subscriber<? super T> subscriber = this.f27500else.get();
        while (subscriber == null) {
            iAddAndGet = this.f27496break.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            } else {
                subscriber = this.f27500else.get();
            }
        }
        if (this.f27499class) {
            Y7(subscriber);
        } else {
            Z7(subscriber);
        }
    }

    public void Y7(Subscriber<? super T> subscriber) {
        e12<T> e12Var = this.f27503if;
        int iAddAndGet = 1;
        boolean z = !this.f27504new;
        while (!this.f27502goto) {
            boolean z2 = this.f27506try;
            if (z && z2 && this.f27497case != null) {
                e12Var.clear();
                this.f27500else.lazySet(null);
                subscriber.onError(this.f27497case);
                return;
            }
            subscriber.onNext(null);
            if (z2) {
                this.f27500else.lazySet(null);
                Throwable th = this.f27497case;
                if (th != null) {
                    subscriber.onError(th);
                    return;
                } else {
                    subscriber.onComplete();
                    return;
                }
            }
            iAddAndGet = this.f27496break.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
        this.f27500else.lazySet(null);
    }

    public void Z7(Subscriber<? super T> subscriber) {
        long j;
        e12<T> e12Var = this.f27503if;
        boolean z = !this.f27504new;
        int iAddAndGet = 1;
        do {
            long j2 = this.f27498catch.get();
            long j3 = 0;
            while (true) {
                if (j2 == j3) {
                    j = j3;
                    break;
                }
                boolean z2 = this.f27506try;
                T tPoll = e12Var.poll();
                boolean z3 = tPoll == null;
                j = j3;
                if (Q7(z, z2, z3, subscriber, e12Var)) {
                    return;
                }
                if (z3) {
                    break;
                }
                subscriber.onNext(tPoll);
                j3 = 1 + j;
            }
            if (j2 == j && Q7(z, this.f27506try, e12Var.isEmpty(), subscriber, e12Var)) {
                return;
            }
            if (j != 0 && j2 != Long.MAX_VALUE) {
                this.f27498catch.addAndGet(-j);
            }
            iAddAndGet = this.f27496break.addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        if (this.f27505this.get() || !this.f27505this.compareAndSet(false, true)) {
            io.reactivex.internal.subscriptions.Cdo.error(new IllegalStateException("This processor allows only a single Subscriber"), subscriber);
            return;
        }
        subscriber.onSubscribe(this.f27496break);
        this.f27500else.set(subscriber);
        if (this.f27502goto) {
            this.f27500else.lazySet(null);
        } else {
            X7();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f27506try || this.f27502goto) {
            return;
        }
        this.f27506try = true;
        W7();
        X7();
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        Cif.m29468else(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f27506try || this.f27502goto) {
            jp1.l(th);
            return;
        }
        this.f27497case = th;
        this.f27506try = true;
        W7();
        X7();
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        Cif.m29468else(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f27506try || this.f27502goto) {
            return;
        }
        this.f27503if.offer(t);
        X7();
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (this.f27506try || this.f27502goto) {
            subscription.cancel();
        } else {
            subscription.request(Long.MAX_VALUE);
        }
    }

    public Celse(int i, Runnable runnable) {
        this(i, runnable, true);
    }

    public Celse(int i, Runnable runnable, boolean z) {
        this.f27503if = new e12<>(Cif.m29470goto(i, "capacityHint"));
        this.f27501for = new AtomicReference<>(runnable);
        this.f27504new = z;
        this.f27500else = new AtomicReference<>();
        this.f27505this = new AtomicBoolean();
        this.f27496break = new Cdo();
        this.f27498catch = new AtomicLong();
    }
}
