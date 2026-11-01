package io.reactivex.internal.operators.mixed;

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
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.mixed.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse<T, R> extends Cfor<R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends MaybeSource<? extends R>> f26294for;

    /* renamed from: if, reason: not valid java name */
    public final Cfor<T> f26295if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f26296new;

    /* renamed from: io.reactivex.internal.operators.mixed.else$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        public static final C0306do<Object> INNER_DISPOSED = new C0306do<>(null);
        private static final long serialVersionUID = -5402190102429853762L;
        public volatile boolean cancelled;
        public final boolean delayErrors;
        public volatile boolean done;
        public final Subscriber<? super R> downstream;
        public long emitted;
        public final Function<? super T, ? extends MaybeSource<? extends R>> mapper;
        public Subscription upstream;
        public final h4 errors = new h4();
        public final AtomicLong requested = new AtomicLong();
        public final AtomicReference<C0306do<R>> inner = new AtomicReference<>();

        /* renamed from: io.reactivex.internal.operators.mixed.else$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0306do<R> extends AtomicReference<Disposable> implements MaybeObserver<R> {
            private static final long serialVersionUID = 8042919737683345351L;
            public volatile R item;
            public final Cdo<?, R> parent;

            public C0306do(Cdo<?, R> cdo) {
                this.parent = cdo;
            }

            public void dispose() {
                io.reactivex.internal.disposables.Cdo.dispose(this);
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.parent.innerComplete(this);
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.parent.innerError(this, th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(R r) {
                this.item = r;
                this.parent.drain();
            }
        }

        public Cdo(Subscriber<? super R> subscriber, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
            this.downstream = subscriber;
            this.mapper = function;
            this.delayErrors = z;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            this.upstream.cancel();
            disposeInner();
        }

        public void disposeInner() {
            AtomicReference<C0306do<R>> atomicReference = this.inner;
            C0306do<Object> c0306do = INNER_DISPOSED;
            C0306do<Object> c0306do2 = (C0306do) atomicReference.getAndSet(c0306do);
            if (c0306do2 == null || c0306do2 == c0306do) {
                return;
            }
            c0306do2.dispose();
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super R> subscriber = this.downstream;
            h4 h4Var = this.errors;
            AtomicReference<C0306do<R>> atomicReference = this.inner;
            AtomicLong atomicLong = this.requested;
            long j = this.emitted;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                if (h4Var.get() != null && !this.delayErrors) {
                    subscriber.onError(h4Var.terminate());
                    return;
                }
                boolean z = this.done;
                C0306do<R> c0306do = atomicReference.get();
                boolean z2 = c0306do == null;
                if (z && z2) {
                    Throwable thTerminate = h4Var.terminate();
                    if (thTerminate != null) {
                        subscriber.onError(thTerminate);
                        return;
                    } else {
                        subscriber.onComplete();
                        return;
                    }
                }
                if (z2 || c0306do.item == null || j == atomicLong.get()) {
                    this.emitted = j;
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    atomicReference.compareAndSet(c0306do, null);
                    subscriber.onNext(c0306do.item);
                    j++;
                }
            }
        }

        public void innerComplete(C0306do<R> c0306do) {
            if (this.inner.compareAndSet(c0306do, null)) {
                drain();
            }
        }

        public void innerError(C0306do<R> c0306do, Throwable th) {
            if (!this.inner.compareAndSet(c0306do, null) || !this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (!this.delayErrors) {
                this.upstream.cancel();
                disposeInner();
            }
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
            if (!this.delayErrors) {
                disposeInner();
            }
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            C0306do<R> c0306do;
            C0306do<R> c0306do2 = this.inner.get();
            if (c0306do2 != null) {
                c0306do2.dispose();
            }
            try {
                MaybeSource maybeSource = (MaybeSource) Cif.m29468else(this.mapper.apply(t), "The mapper returned a null MaybeSource");
                C0306do<R> c0306do3 = new C0306do<>(this);
                do {
                    c0306do = this.inner.get();
                    if (c0306do == INNER_DISPOSED) {
                        return;
                    }
                } while (!this.inner.compareAndSet(c0306do, c0306do3));
                maybeSource.subscribe(c0306do3);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.upstream.cancel();
                this.inner.getAndSet(INNER_DISPOSED);
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            r6.m6775do(this.requested, j);
            drain();
        }
    }

    public Celse(Cfor<T> cfor, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
        this.f26295if = cfor;
        this.f26294for = function;
        this.f26296new = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        this.f26295if.m5(new Cdo(subscriber, this.f26294for, this.f26296new));
    }
}
