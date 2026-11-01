package io.reactivex.internal.operators.mixed;

import android.support.v4.a01;
import android.support.v4.b12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.util.Ctry;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.mixed.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew<T, R> extends Cfor<R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends MaybeSource<? extends R>> f26319for;

    /* renamed from: if, reason: not valid java name */
    public final Cfor<T> f26320if;

    /* renamed from: new, reason: not valid java name */
    public final Ctry f26321new;

    /* renamed from: try, reason: not valid java name */
    public final int f26322try;

    /* renamed from: io.reactivex.internal.operators.mixed.new$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        public static final int STATE_ACTIVE = 1;
        public static final int STATE_INACTIVE = 0;
        public static final int STATE_RESULT_VALUE = 2;
        private static final long serialVersionUID = -9140123220065488293L;
        public volatile boolean cancelled;
        public int consumed;
        public volatile boolean done;
        public final Subscriber<? super R> downstream;
        public long emitted;
        public final Ctry errorMode;
        public R item;
        public final Function<? super T, ? extends MaybeSource<? extends R>> mapper;
        public final int prefetch;
        public final SimplePlainQueue<T> queue;
        public volatile int state;
        public Subscription upstream;
        public final AtomicLong requested = new AtomicLong();
        public final h4 errors = new h4();
        public final C0310do<R> inner = new C0310do<>(this);

        /* renamed from: io.reactivex.internal.operators.mixed.new$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0310do<R> extends AtomicReference<Disposable> implements MaybeObserver<R> {
            private static final long serialVersionUID = -3051469169682093892L;
            public final Cdo<?, R> parent;

            public C0310do(Cdo<?, R> cdo) {
                this.parent = cdo;
            }

            public void dispose() {
                io.reactivex.internal.disposables.Cdo.dispose(this);
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.parent.innerComplete();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.parent.innerError(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.replace(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(R r) {
                this.parent.innerSuccess(r);
            }
        }

        public Cdo(Subscriber<? super R> subscriber, Function<? super T, ? extends MaybeSource<? extends R>> function, int i, Ctry ctry) {
            this.downstream = subscriber;
            this.mapper = function;
            this.prefetch = i;
            this.errorMode = ctry;
            this.queue = new b12(i);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            this.upstream.cancel();
            this.inner.dispose();
            if (getAndIncrement() == 0) {
                this.queue.clear();
                this.item = null;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0036, code lost:
        
            r2.clear();
            r15.item = null;
            r0.onError(r3.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0042, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super R> subscriber = this.downstream;
            Ctry ctry = this.errorMode;
            SimplePlainQueue<T> simplePlainQueue = this.queue;
            h4 h4Var = this.errors;
            AtomicLong atomicLong = this.requested;
            int i = this.prefetch;
            int i2 = i - (i >> 1);
            int iAddAndGet = 1;
            while (true) {
                if (!this.cancelled) {
                    int i3 = this.state;
                    if (h4Var.get() != null && (ctry == Ctry.IMMEDIATE || (ctry == Ctry.BOUNDARY && i3 == 0))) {
                        break;
                    }
                    if (i3 == 0) {
                        boolean z = this.done;
                        T tPoll = simplePlainQueue.poll();
                        boolean z2 = tPoll == null;
                        if (z && z2) {
                            Throwable thTerminate = h4Var.terminate();
                            if (thTerminate == null) {
                                subscriber.onComplete();
                                return;
                            } else {
                                subscriber.onError(thTerminate);
                                return;
                            }
                        }
                        if (!z2) {
                            int i4 = this.consumed + 1;
                            if (i4 == i2) {
                                this.consumed = 0;
                                this.upstream.request(i2);
                            } else {
                                this.consumed = i4;
                            }
                            try {
                                MaybeSource maybeSource = (MaybeSource) Cif.m29468else(this.mapper.apply(tPoll), "The mapper returned a null MaybeSource");
                                this.state = 1;
                                maybeSource.subscribe(this.inner);
                            } catch (Throwable th) {
                                t80.m7781if(th);
                                this.upstream.cancel();
                                simplePlainQueue.clear();
                                h4Var.addThrowable(th);
                                subscriber.onError(h4Var.terminate());
                                return;
                            }
                        }
                    } else if (i3 == 2) {
                        long j = this.emitted;
                        if (j != atomicLong.get()) {
                            R r = this.item;
                            this.item = null;
                            subscriber.onNext(r);
                            this.emitted = j + 1;
                            this.state = 0;
                        }
                    }
                } else {
                    simplePlainQueue.clear();
                    this.item = null;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        public void innerComplete() {
            this.state = 0;
            drain();
        }

        public void innerError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (this.errorMode != Ctry.END) {
                this.upstream.cancel();
            }
            this.state = 0;
            drain();
        }

        public void innerSuccess(R r) {
            this.item = r;
            this.state = 2;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (this.errorMode == Ctry.IMMEDIATE) {
                this.inner.dispose();
            }
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.queue.offer(t)) {
                drain();
            } else {
                this.upstream.cancel();
                onError(new a01("queue full?!"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                subscription.request(this.prefetch);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            r6.m6775do(this.requested, j);
            drain();
        }
    }

    public Cnew(Cfor<T> cfor, Function<? super T, ? extends MaybeSource<? extends R>> function, Ctry ctry, int i) {
        this.f26320if = cfor;
        this.f26319for = function;
        this.f26321new = ctry;
        this.f26322try = i;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        this.f26320if.m5(new Cdo(subscriber, this.f26319for, this.f26322try, this.f26321new));
    }
}
