package io.reactivex.internal.operators.completable;

import android.support.v4.cq;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.completable.while, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cwhile extends np {

    /* renamed from: do, reason: not valid java name */
    public final Publisher<? extends CompletableSource> f25471do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f25472for;

    /* renamed from: if, reason: not valid java name */
    public final int f25473if;

    /* renamed from: io.reactivex.internal.operators.completable.while$do, reason: invalid class name */
    public static final class Cdo extends AtomicInteger implements FlowableSubscriber<CompletableSource>, Disposable {
        private static final long serialVersionUID = -2108443387387077490L;
        public final boolean delayErrors;
        public final CompletableObserver downstream;
        public final int maxConcurrency;
        public Subscription upstream;
        public final cq set = new cq();
        public final h4 error = new h4();

        /* renamed from: io.reactivex.internal.operators.completable.while$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0275do extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
            private static final long serialVersionUID = 251330541679988317L;

            public C0275do() {
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

        public Cdo(CompletableObserver completableObserver, int i, boolean z) {
            this.downstream = completableObserver;
            this.maxConcurrency = i;
            this.delayErrors = z;
            lazySet(1);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.cancel();
            this.set.dispose();
        }

        public void innerComplete(C0275do c0275do) {
            this.set.delete(c0275do);
            if (decrementAndGet() != 0) {
                if (this.maxConcurrency != Integer.MAX_VALUE) {
                    this.upstream.request(1L);
                }
            } else {
                Throwable th = this.error.get();
                if (th != null) {
                    this.downstream.onError(th);
                } else {
                    this.downstream.onComplete();
                }
            }
        }

        public void innerError(C0275do c0275do, Throwable th) {
            this.set.delete(c0275do);
            if (!this.delayErrors) {
                this.upstream.cancel();
                this.set.dispose();
                if (!this.error.addThrowable(th)) {
                    jp1.l(th);
                    return;
                } else {
                    if (getAndSet(0) > 0) {
                        this.downstream.onError(this.error.terminate());
                        return;
                    }
                    return;
                }
            }
            if (!this.error.addThrowable(th)) {
                jp1.l(th);
            } else if (decrementAndGet() == 0) {
                this.downstream.onError(this.error.terminate());
            } else if (this.maxConcurrency != Integer.MAX_VALUE) {
                this.upstream.request(1L);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.set.isDisposed();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (decrementAndGet() == 0) {
                if (this.error.get() != null) {
                    this.downstream.onError(this.error.terminate());
                } else {
                    this.downstream.onComplete();
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.delayErrors) {
                if (!this.error.addThrowable(th)) {
                    jp1.l(th);
                    return;
                } else {
                    if (decrementAndGet() == 0) {
                        this.downstream.onError(this.error.terminate());
                        return;
                    }
                    return;
                }
            }
            this.set.dispose();
            if (!this.error.addThrowable(th)) {
                jp1.l(th);
            } else if (getAndSet(0) > 0) {
                this.downstream.onError(this.error.terminate());
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.upstream, subscription)) {
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

        @Override // org.reactivestreams.Subscriber
        public void onNext(CompletableSource completableSource) {
            getAndIncrement();
            C0275do c0275do = new C0275do();
            this.set.add(c0275do);
            completableSource.subscribe(c0275do);
        }
    }

    public Cwhile(Publisher<? extends CompletableSource> publisher, int i, boolean z) {
        this.f25471do = publisher;
        this.f25473if = i;
        this.f25472for = z;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25471do.subscribe(new Cdo(completableObserver, this.f25473if, this.f25472for));
    }
}
