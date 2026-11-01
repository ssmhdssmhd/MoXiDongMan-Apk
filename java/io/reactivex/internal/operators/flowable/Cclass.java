package io.reactivex.internal.operators.flowable;

import android.support.v4.cq;
import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.class, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cclass<T, U extends Collection<? super T>, Open, Close> extends io.reactivex.internal.operators.flowable.Cdo<T, U> {

    /* renamed from: for, reason: not valid java name */
    public final Callable<U> f25576for;

    /* renamed from: new, reason: not valid java name */
    public final Publisher<? extends Open> f25577new;

    /* renamed from: try, reason: not valid java name */
    public final Function<? super Open, ? extends Publisher<? extends Close>> f25578try;

    /* renamed from: io.reactivex.internal.operators.flowable.class$do, reason: invalid class name */
    public static final class Cdo<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -8466418554264089604L;
        public final Function<? super Open, ? extends Publisher<? extends Close>> bufferClose;
        public final Publisher<? extends Open> bufferOpen;
        public final Callable<C> bufferSupplier;
        public volatile boolean cancelled;
        public volatile boolean done;
        public final Subscriber<? super C> downstream;
        public long emitted;
        public long index;
        public final e12<C> queue = new e12<>(Cfor.g());
        public final cq subscribers = new cq();
        public final AtomicLong requested = new AtomicLong();
        public final AtomicReference<Subscription> upstream = new AtomicReference<>();
        public Map<Long, C> buffers = new LinkedHashMap();
        public final h4 errors = new h4();

        /* renamed from: io.reactivex.internal.operators.flowable.class$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0276do<Open> extends AtomicReference<Subscription> implements FlowableSubscriber<Open>, Disposable {
            private static final long serialVersionUID = -8498650778633225126L;
            public final Cdo<?, ?, Open, ?> parent;

            public C0276do(Cdo<?, ?, Open, ?> cdo) {
                this.parent = cdo;
            }

            @Override // io.reactivex.disposables.Disposable
            public void dispose() {
                io.reactivex.internal.subscriptions.Cfor.cancel(this);
            }

            @Override // io.reactivex.disposables.Disposable
            public boolean isDisposed() {
                return get() == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            }

            @Override // org.reactivestreams.Subscriber
            public void onComplete() {
                lazySet(io.reactivex.internal.subscriptions.Cfor.CANCELLED);
                this.parent.openComplete(this);
            }

            @Override // org.reactivestreams.Subscriber
            public void onError(Throwable th) {
                lazySet(io.reactivex.internal.subscriptions.Cfor.CANCELLED);
                this.parent.boundaryError(this, th);
            }

            @Override // org.reactivestreams.Subscriber
            public void onNext(Open open) {
                this.parent.open(open);
            }

            @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
            public void onSubscribe(Subscription subscription) {
                io.reactivex.internal.subscriptions.Cfor.setOnce(this, subscription, Long.MAX_VALUE);
            }
        }

        public Cdo(Subscriber<? super C> subscriber, Publisher<? extends Open> publisher, Function<? super Open, ? extends Publisher<? extends Close>> function, Callable<C> callable) {
            this.downstream = subscriber;
            this.bufferSupplier = callable;
            this.bufferOpen = publisher;
            this.bufferClose = function;
        }

        public void boundaryError(Disposable disposable, Throwable th) {
            io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
            this.subscribers.delete(disposable);
            onError(th);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream)) {
                this.cancelled = true;
                this.subscribers.dispose();
                synchronized (this) {
                    this.buffers = null;
                }
                if (getAndIncrement() != 0) {
                    this.queue.clear();
                }
            }
        }

        public void close(Cif<T, C> cif, long j) {
            boolean z;
            this.subscribers.delete(cif);
            if (this.subscribers.m996new() == 0) {
                io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
                z = true;
            } else {
                z = false;
            }
            synchronized (this) {
                Map<Long, C> map = this.buffers;
                if (map == null) {
                    return;
                }
                this.queue.offer(map.remove(Long.valueOf(j)));
                if (z) {
                    this.done = true;
                }
                drain();
            }
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            long j = this.emitted;
            Subscriber<? super C> subscriber = this.downstream;
            e12<C> e12Var = this.queue;
            int iAddAndGet = 1;
            do {
                long j2 = this.requested.get();
                while (j != j2) {
                    if (this.cancelled) {
                        e12Var.clear();
                        return;
                    }
                    boolean z = this.done;
                    if (z && this.errors.get() != null) {
                        e12Var.clear();
                        subscriber.onError(this.errors.terminate());
                        return;
                    }
                    C cPoll = e12Var.poll();
                    boolean z2 = cPoll == null;
                    if (z && z2) {
                        subscriber.onComplete();
                        return;
                    } else {
                        if (z2) {
                            break;
                        }
                        subscriber.onNext(cPoll);
                        j++;
                    }
                }
                if (j == j2) {
                    if (this.cancelled) {
                        e12Var.clear();
                        return;
                    }
                    if (this.done) {
                        if (this.errors.get() != null) {
                            e12Var.clear();
                            subscriber.onError(this.errors.terminate());
                            return;
                        } else if (e12Var.isEmpty()) {
                            subscriber.onComplete();
                            return;
                        }
                    }
                }
                this.emitted = j;
                iAddAndGet = addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.subscribers.dispose();
            synchronized (this) {
                Map<Long, C> map = this.buffers;
                if (map == null) {
                    return;
                }
                Iterator<C> it = map.values().iterator();
                while (it.hasNext()) {
                    this.queue.offer(it.next());
                }
                this.buffers = null;
                this.done = true;
                drain();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            this.subscribers.dispose();
            synchronized (this) {
                this.buffers = null;
            }
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                Map<Long, C> map = this.buffers;
                if (map == null) {
                    return;
                }
                Iterator<C> it = map.values().iterator();
                while (it.hasNext()) {
                    it.next().add(t);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.setOnce(this.upstream, subscription)) {
                C0276do c0276do = new C0276do(this);
                this.subscribers.add(c0276do);
                this.bufferOpen.subscribe(c0276do);
                subscription.request(Long.MAX_VALUE);
            }
        }

        public void open(Open open) {
            try {
                Collection collection = (Collection) io.reactivex.internal.functions.Cif.m29468else(this.bufferSupplier.call(), "The bufferSupplier returned a null Collection");
                Publisher publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.bufferClose.apply(open), "The bufferClose returned a null Publisher");
                long j = this.index;
                this.index = 1 + j;
                synchronized (this) {
                    Map<Long, C> map = this.buffers;
                    if (map == null) {
                        return;
                    }
                    map.put(Long.valueOf(j), collection);
                    Cif cif = new Cif(this, j);
                    this.subscribers.add(cif);
                    publisher.subscribe(cif);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
                onError(th);
            }
        }

        public void openComplete(C0276do<Open> c0276do) {
            this.subscribers.delete(c0276do);
            if (this.subscribers.m996new() == 0) {
                io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
                this.done = true;
                drain();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            r6.m6775do(this.requested, j);
            drain();
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.class$if, reason: invalid class name */
    public static final class Cif<T, C extends Collection<? super T>> extends AtomicReference<Subscription> implements FlowableSubscriber<Object>, Disposable {
        private static final long serialVersionUID = -8498650778633225126L;
        public final long index;
        public final Cdo<T, C, ?, ?> parent;

        public Cif(Cdo<T, C, ?, ?> cdo, long j) {
            this.parent = cdo;
            this.index = j;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Subscription subscription = get();
            io.reactivex.internal.subscriptions.Cfor cfor = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            if (subscription != cfor) {
                lazySet(cfor);
                this.parent.close(this, this.index);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Subscription subscription = get();
            io.reactivex.internal.subscriptions.Cfor cfor = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            if (subscription == cfor) {
                jp1.l(th);
            } else {
                lazySet(cfor);
                this.parent.boundaryError(this, th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            Subscription subscription = get();
            io.reactivex.internal.subscriptions.Cfor cfor = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            if (subscription != cfor) {
                lazySet(cfor);
                subscription.cancel();
                this.parent.close(this, this.index);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    public Cclass(Cfor<T> cfor, Publisher<? extends Open> publisher, Function<? super Open, ? extends Publisher<? extends Close>> function, Callable<U> callable) {
        super(cfor);
        this.f25577new = publisher;
        this.f25578try = function;
        this.f25576for = callable;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super U> subscriber) {
        Cdo cdo = new Cdo(subscriber, this.f25577new, this.f25578try, this.f25576for);
        subscriber.onSubscribe(cdo);
        this.f25614if.m5(cdo);
    }
}
