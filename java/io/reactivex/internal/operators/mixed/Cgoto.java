package io.reactivex.internal.operators.mixed;

import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.mixed.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cgoto<T, R> extends Cfor<R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends SingleSource<? extends R>> f26312for;

    /* renamed from: if, reason: not valid java name */
    public final Cfor<T> f26313if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f26314new;

    /* renamed from: io.reactivex.internal.operators.mixed.goto$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        public static final C0309do<Object> INNER_DISPOSED = new C0309do<>(null);
        private static final long serialVersionUID = -5402190102429853762L;
        public volatile boolean cancelled;
        public final boolean delayErrors;
        public volatile boolean done;
        public final Subscriber<? super R> downstream;
        public long emitted;
        public final Function<? super T, ? extends SingleSource<? extends R>> mapper;
        public Subscription upstream;
        public final h4 errors = new h4();
        public final AtomicLong requested = new AtomicLong();
        public final AtomicReference<C0309do<R>> inner = new AtomicReference<>();

        /* renamed from: io.reactivex.internal.operators.mixed.goto$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0309do<R> extends AtomicReference<Disposable> implements SingleObserver<R> {
            private static final long serialVersionUID = 8042919737683345351L;
            public volatile R item;
            public final Cdo<?, R> parent;

            public C0309do(Cdo<?, R> cdo) {
                this.parent = cdo;
            }

            public void dispose() {
                io.reactivex.internal.disposables.Cdo.dispose(this);
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.parent.innerError(this, th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(R r) {
                this.item = r;
                this.parent.drain();
            }
        }

        public Cdo(Subscriber<? super R> subscriber, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
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
            AtomicReference<C0309do<R>> atomicReference = this.inner;
            C0309do<Object> c0309do = INNER_DISPOSED;
            C0309do<Object> c0309do2 = (C0309do) atomicReference.getAndSet(c0309do);
            if (c0309do2 == null || c0309do2 == c0309do) {
                return;
            }
            c0309do2.dispose();
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super R> subscriber = this.downstream;
            h4 h4Var = this.errors;
            AtomicReference<C0309do<R>> atomicReference = this.inner;
            AtomicLong atomicLong = this.requested;
            long j = this.emitted;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                if (h4Var.get() != null && !this.delayErrors) {
                    subscriber.onError(h4Var.terminate());
                    return;
                }
                boolean z = this.done;
                C0309do<R> c0309do = atomicReference.get();
                boolean z2 = c0309do == null;
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
                if (z2 || c0309do.item == null || j == atomicLong.get()) {
                    this.emitted = j;
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    atomicReference.compareAndSet(c0309do, null);
                    subscriber.onNext(c0309do.item);
                    j++;
                }
            }
        }

        public void innerError(C0309do<R> c0309do, Throwable th) {
            if (!this.inner.compareAndSet(c0309do, null) || !this.errors.addThrowable(th)) {
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
            C0309do<R> c0309do;
            C0309do<R> c0309do2 = this.inner.get();
            if (c0309do2 != null) {
                c0309do2.dispose();
            }
            try {
                SingleSource singleSource = (SingleSource) Cif.m29468else(this.mapper.apply(t), "The mapper returned a null SingleSource");
                C0309do<R> c0309do3 = new C0309do<>(this);
                do {
                    c0309do = this.inner.get();
                    if (c0309do == INNER_DISPOSED) {
                        return;
                    }
                } while (!this.inner.compareAndSet(c0309do, c0309do3));
                singleSource.subscribe(c0309do3);
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

    public Cgoto(Cfor<T> cfor, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
        this.f26313if = cfor;
        this.f26312for = function;
        this.f26314new = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        this.f26313if.m5(new Cdo(subscriber, this.f26312for, this.f26314new));
    }
}
