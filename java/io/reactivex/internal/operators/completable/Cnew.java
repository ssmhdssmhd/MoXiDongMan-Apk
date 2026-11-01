package io.reactivex.internal.operators.completable;

import android.support.v4.a01;
import android.support.v4.b12;
import android.support.v4.e12;
import android.support.v4.jp1;
import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.completable.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew extends np {

    /* renamed from: do, reason: not valid java name */
    public final Publisher<? extends CompletableSource> f25422do;

    /* renamed from: if, reason: not valid java name */
    public final int f25423if;

    /* renamed from: io.reactivex.internal.operators.completable.new$do, reason: invalid class name */
    public static final class Cdo extends AtomicInteger implements FlowableSubscriber<CompletableSource>, Disposable {
        private static final long serialVersionUID = 9032184911934499404L;
        public volatile boolean active;
        public int consumed;
        public volatile boolean done;
        public final CompletableObserver downstream;
        public final int limit;
        public final int prefetch;
        public SimpleQueue<CompletableSource> queue;
        public int sourceFused;
        public Subscription upstream;
        public final C0273do inner = new C0273do(this);
        public final AtomicBoolean once = new AtomicBoolean();

        /* renamed from: io.reactivex.internal.operators.completable.new$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0273do extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = -5454794857847146511L;
            public final Cdo parent;

            public C0273do(Cdo cdo) {
                this.parent = cdo;
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.parent.innerComplete();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.parent.innerError(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.replace(this, disposable);
            }
        }

        public Cdo(CompletableObserver completableObserver, int i) {
            this.downstream = completableObserver;
            this.prefetch = i;
            this.limit = i - (i >> 2);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.cancel();
            io.reactivex.internal.disposables.Cdo.dispose(this.inner);
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!isDisposed()) {
                if (!this.active) {
                    boolean z = this.done;
                    try {
                        CompletableSource completableSourcePoll = this.queue.poll();
                        boolean z2 = completableSourcePoll == null;
                        if (z && z2) {
                            if (this.once.compareAndSet(false, true)) {
                                this.downstream.onComplete();
                                return;
                            }
                            return;
                        } else if (!z2) {
                            this.active = true;
                            completableSourcePoll.subscribe(this.inner);
                            request();
                        }
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        innerError(th);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }

        public void innerComplete() {
            this.active = false;
            drain();
        }

        public void innerError(Throwable th) {
            if (!this.once.compareAndSet(false, true)) {
                jp1.l(th);
            } else {
                this.upstream.cancel();
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(this.inner.get());
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.once.compareAndSet(false, true)) {
                jp1.l(th);
            } else {
                io.reactivex.internal.disposables.Cdo.dispose(this.inner);
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                int i = this.prefetch;
                long j = i == Integer.MAX_VALUE ? Long.MAX_VALUE : i;
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int iRequestFusion = queueSubscription.requestFusion(3);
                    if (iRequestFusion == 1) {
                        this.sourceFused = iRequestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        this.downstream.onSubscribe(this);
                        drain();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.sourceFused = iRequestFusion;
                        this.queue = queueSubscription;
                        this.downstream.onSubscribe(this);
                        subscription.request(j);
                        return;
                    }
                }
                if (this.prefetch == Integer.MAX_VALUE) {
                    this.queue = new e12(io.reactivex.Cfor.g());
                } else {
                    this.queue = new b12(this.prefetch);
                }
                this.downstream.onSubscribe(this);
                subscription.request(j);
            }
        }

        public void request() {
            if (this.sourceFused != 1) {
                int i = this.consumed + 1;
                if (i != this.limit) {
                    this.consumed = i;
                } else {
                    this.consumed = 0;
                    this.upstream.request(i);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(CompletableSource completableSource) {
            if (this.sourceFused != 0 || this.queue.offer(completableSource)) {
                drain();
            } else {
                onError(new a01());
            }
        }
    }

    public Cnew(Publisher<? extends CompletableSource> publisher, int i) {
        this.f25422do = publisher;
        this.f25423if = i;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25422do.subscribe(new Cdo(completableObserver, this.f25423if));
    }
}
