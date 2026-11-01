package io.reactivex.internal.operators.flowable;

import android.support.v4.cq;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.FuseToFlowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class h<T> extends np implements FuseToFlowable<T> {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<T> f25665do;

    /* renamed from: for, reason: not valid java name */
    public final int f25666for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends CompletableSource> f25667if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f25668new;

    /* renamed from: io.reactivex.internal.operators.flowable.h$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements FlowableSubscriber<T>, Disposable {
        private static final long serialVersionUID = 8443155186132538303L;
        public final boolean delayErrors;
        public volatile boolean disposed;
        public final CompletableObserver downstream;
        public final Function<? super T, ? extends CompletableSource> mapper;
        public final int maxConcurrency;
        public Subscription upstream;
        public final h4 errors = new h4();
        public final cq set = new cq();

        /* renamed from: io.reactivex.internal.operators.flowable.h$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0281do extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
            private static final long serialVersionUID = 8606673141535671828L;

            public C0281do() {
            }

            @Override // io.reactivex.disposables.Disposable
            public void dispose() {
                io.reactivex.internal.disposables.Cdo.dispose(this);
            }

            @Override // io.reactivex.disposables.Disposable
            public boolean isDisposed() {
                return io.reactivex.internal.disposables.Cdo.isDisposed(get());
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                Cdo.this.innerComplete(this);
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                Cdo.this.innerError(this, th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }
        }

        public Cdo(CompletableObserver completableObserver, Function<? super T, ? extends CompletableSource> function, boolean z, int i) {
            this.downstream = completableObserver;
            this.mapper = function;
            this.delayErrors = z;
            this.maxConcurrency = i;
            lazySet(1);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.disposed = true;
            this.upstream.cancel();
            this.set.dispose();
        }

        public void innerComplete(Cdo<T>.C0281do c0281do) {
            this.set.delete(c0281do);
            onComplete();
        }

        public void innerError(Cdo<T>.C0281do c0281do, Throwable th) {
            this.set.delete(c0281do);
            onError(th);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.set.isDisposed();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (decrementAndGet() != 0) {
                if (this.maxConcurrency != Integer.MAX_VALUE) {
                    this.upstream.request(1L);
                }
            } else {
                Throwable thTerminate = this.errors.terminate();
                if (thTerminate != null) {
                    this.downstream.onError(thTerminate);
                } else {
                    this.downstream.onComplete();
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (!this.delayErrors) {
                dispose();
                if (getAndSet(0) > 0) {
                    this.downstream.onError(this.errors.terminate());
                    return;
                }
                return;
            }
            if (decrementAndGet() == 0) {
                this.downstream.onError(this.errors.terminate());
            } else if (this.maxConcurrency != Integer.MAX_VALUE) {
                this.upstream.request(1L);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            try {
                CompletableSource completableSource = (CompletableSource) Cif.m29468else(this.mapper.apply(t), "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0281do c0281do = new C0281do();
                if (this.disposed || !this.set.add(c0281do)) {
                    return;
                }
                completableSource.subscribe(c0281do);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.upstream.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                int i = this.maxConcurrency;
                if (i == Integer.MAX_VALUE) {
                    subscription.request(Long.MAX_VALUE);
                } else {
                    subscription.request(i);
                }
            }
        }
    }

    public h(Cfor<T> cfor, Function<? super T, ? extends CompletableSource> function, boolean z, int i) {
        this.f25665do = cfor;
        this.f25667if = function;
        this.f25668new = z;
        this.f25666for = i;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25665do.m5(new Cdo(completableObserver, this.f25667if, this.f25668new, this.f25666for));
    }

    @Override // io.reactivex.internal.fuseable.FuseToFlowable
    public Cfor<T> fuseToFlowable() {
        return jp1.h(new g(this.f25665do, this.f25667if, this.f25668new, this.f25666for));
    }
}
