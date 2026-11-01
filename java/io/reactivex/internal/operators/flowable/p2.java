package io.reactivex.internal.operators.flowable;

import android.support.v4.e12;
import android.support.v4.jp1;
import android.support.v4.r6;
import io.reactivex.FlowableSubscriber;
import io.reactivex.processors.Celse;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class p2<T> extends io.reactivex.internal.operators.flowable.Cdo<T, io.reactivex.Cfor<T>> {

    /* renamed from: for, reason: not valid java name */
    public final long f25787for;

    /* renamed from: new, reason: not valid java name */
    public final long f25788new;

    /* renamed from: try, reason: not valid java name */
    public final int f25789try;

    /* renamed from: io.reactivex.internal.operators.flowable.p2$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = -2365647875069161133L;
        public final int bufferSize;
        public final Subscriber<? super io.reactivex.Cfor<T>> downstream;
        public long index;
        public final AtomicBoolean once;
        public final long size;
        public Subscription upstream;
        public Celse<T> window;

        public Cdo(Subscriber<? super io.reactivex.Cfor<T>> subscriber, long j, int i) {
            super(1);
            this.downstream = subscriber;
            this.size = j;
            this.once = new AtomicBoolean();
            this.bufferSize = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.once.compareAndSet(false, true)) {
                run();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Celse<T> celse = this.window;
            if (celse != null) {
                this.window = null;
                celse.onComplete();
            }
            this.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Celse<T> celse = this.window;
            if (celse != null) {
                this.window = null;
                celse.onError(th);
            }
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = this.index;
            Celse<T> celseT7 = this.window;
            if (j == 0) {
                getAndIncrement();
                celseT7 = Celse.T7(this.bufferSize, this);
                this.window = celseT7;
                this.downstream.onNext(celseT7);
            }
            long j2 = j + 1;
            celseT7.onNext(t);
            if (j2 != this.size) {
                this.index = j2;
                return;
            }
            this.index = 0L;
            this.window = null;
            celseT7.onComplete();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                this.upstream.request(r6.m6778new(this.size, j));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.upstream.cancel();
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.p2$for, reason: invalid class name */
    public static final class Cfor<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = -8792836352386833856L;
        public final int bufferSize;
        public final Subscriber<? super io.reactivex.Cfor<T>> downstream;
        public final AtomicBoolean firstRequest;
        public long index;
        public final AtomicBoolean once;
        public final long size;
        public final long skip;
        public Subscription upstream;
        public Celse<T> window;

        public Cfor(Subscriber<? super io.reactivex.Cfor<T>> subscriber, long j, long j2, int i) {
            super(1);
            this.downstream = subscriber;
            this.size = j;
            this.skip = j2;
            this.once = new AtomicBoolean();
            this.firstRequest = new AtomicBoolean();
            this.bufferSize = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.once.compareAndSet(false, true)) {
                run();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Celse<T> celse = this.window;
            if (celse != null) {
                this.window = null;
                celse.onComplete();
            }
            this.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Celse<T> celse = this.window;
            if (celse != null) {
                this.window = null;
                celse.onError(th);
            }
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = this.index;
            Celse<T> celseT7 = this.window;
            if (j == 0) {
                getAndIncrement();
                celseT7 = Celse.T7(this.bufferSize, this);
                this.window = celseT7;
                this.downstream.onNext(celseT7);
            }
            long j2 = j + 1;
            if (celseT7 != null) {
                celseT7.onNext(t);
            }
            if (j2 == this.size) {
                this.window = null;
                celseT7.onComplete();
            }
            if (j2 == this.skip) {
                this.index = 0L;
            } else {
                this.index = j2;
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                if (this.firstRequest.get() || !this.firstRequest.compareAndSet(false, true)) {
                    this.upstream.request(r6.m6778new(this.skip, j));
                } else {
                    this.upstream.request(r6.m6776for(r6.m6778new(this.size, j), r6.m6778new(this.skip - this.size, j - 1)));
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.upstream.cancel();
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.p2$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = 2428527070996323976L;
        public final int bufferSize;
        public volatile boolean cancelled;
        public volatile boolean done;
        public final Subscriber<? super io.reactivex.Cfor<T>> downstream;
        public Throwable error;
        public final AtomicBoolean firstRequest;
        public long index;
        public final AtomicBoolean once;
        public long produced;
        public final e12<Celse<T>> queue;
        public final AtomicLong requested;
        public final long size;
        public final long skip;
        public Subscription upstream;
        public final ArrayDeque<Celse<T>> windows;
        public final AtomicInteger wip;

        public Cif(Subscriber<? super io.reactivex.Cfor<T>> subscriber, long j, long j2, int i) {
            super(1);
            this.downstream = subscriber;
            this.size = j;
            this.skip = j2;
            this.queue = new e12<>(i);
            this.windows = new ArrayDeque<>();
            this.once = new AtomicBoolean();
            this.firstRequest = new AtomicBoolean();
            this.requested = new AtomicLong();
            this.wip = new AtomicInteger();
            this.bufferSize = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            if (this.once.compareAndSet(false, true)) {
                run();
            }
        }

        public boolean checkTerminated(boolean z, boolean z2, Subscriber<?> subscriber, e12<?> e12Var) {
            if (this.cancelled) {
                e12Var.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.error;
            if (th != null) {
                e12Var.clear();
                subscriber.onError(th);
                return true;
            }
            if (!z2) {
                return false;
            }
            subscriber.onComplete();
            return true;
        }

        public void drain() {
            if (this.wip.getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super io.reactivex.Cfor<T>> subscriber = this.downstream;
            e12<Celse<T>> e12Var = this.queue;
            int iAddAndGet = 1;
            do {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    boolean z = this.done;
                    Celse<T> celsePoll = e12Var.poll();
                    boolean z2 = celsePoll == null;
                    if (checkTerminated(z, z2, subscriber, e12Var)) {
                        return;
                    }
                    if (z2) {
                        break;
                    }
                    subscriber.onNext(celsePoll);
                    j2++;
                }
                if (j2 == j && checkTerminated(this.done, e12Var.isEmpty(), subscriber, e12Var)) {
                    return;
                }
                if (j2 != 0 && j != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j2);
                }
                iAddAndGet = this.wip.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            Iterator<Celse<T>> it = this.windows.iterator();
            while (it.hasNext()) {
                it.next().onComplete();
            }
            this.windows.clear();
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            Iterator<Celse<T>> it = this.windows.iterator();
            while (it.hasNext()) {
                it.next().onError(th);
            }
            this.windows.clear();
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            long j = this.index;
            if (j == 0 && !this.cancelled) {
                getAndIncrement();
                Celse<T> celseT7 = Celse.T7(this.bufferSize, this);
                this.windows.offer(celseT7);
                this.queue.offer(celseT7);
                drain();
            }
            long j2 = j + 1;
            Iterator<Celse<T>> it = this.windows.iterator();
            while (it.hasNext()) {
                it.next().onNext(t);
            }
            long j3 = this.produced + 1;
            if (j3 == this.size) {
                this.produced = j3 - this.skip;
                Celse<T> celsePoll = this.windows.poll();
                if (celsePoll != null) {
                    celsePoll.onComplete();
                }
            } else {
                this.produced = j3;
            }
            if (j2 == this.skip) {
                this.index = 0L;
            } else {
                this.index = j2;
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                if (this.firstRequest.get() || !this.firstRequest.compareAndSet(false, true)) {
                    this.upstream.request(r6.m6778new(this.skip, j));
                } else {
                    this.upstream.request(r6.m6776for(this.size, r6.m6778new(this.skip, j - 1)));
                }
                drain();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.upstream.cancel();
            }
        }
    }

    public p2(io.reactivex.Cfor<T> cfor, long j, long j2, int i) {
        super(cfor);
        this.f25787for = j;
        this.f25788new = j2;
        this.f25789try = i;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super io.reactivex.Cfor<T>> subscriber) {
        long j = this.f25788new;
        long j2 = this.f25787for;
        if (j == j2) {
            this.f25614if.m5(new Cdo(subscriber, this.f25787for, this.f25789try));
        } else if (j > j2) {
            this.f25614if.m5(new Cfor(subscriber, this.f25787for, this.f25788new, this.f25789try));
        } else {
            this.f25614if.m5(new Cif(subscriber, this.f25787for, this.f25788new, this.f25789try));
        }
    }
}
