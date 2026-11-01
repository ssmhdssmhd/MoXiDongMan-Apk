package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import android.support.v4.ti1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.BooleanSupplier;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccatch<T, C extends Collection<? super T>> extends io.reactivex.internal.operators.flowable.Cdo<T, C> {

    /* renamed from: for, reason: not valid java name */
    public final int f25566for;

    /* renamed from: new, reason: not valid java name */
    public final int f25567new;

    /* renamed from: try, reason: not valid java name */
    public final Callable<C> f25568try;

    /* renamed from: io.reactivex.internal.operators.flowable.catch$do, reason: invalid class name */
    public static final class Cdo<T, C extends Collection<? super T>> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: case, reason: not valid java name */
        public boolean f25569case;

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super C> f25570do;

        /* renamed from: else, reason: not valid java name */
        public int f25571else;

        /* renamed from: for, reason: not valid java name */
        public final int f25572for;

        /* renamed from: if, reason: not valid java name */
        public final Callable<C> f25573if;

        /* renamed from: new, reason: not valid java name */
        public C f25574new;

        /* renamed from: try, reason: not valid java name */
        public Subscription f25575try;

        public Cdo(Subscriber<? super C> subscriber, int i, Callable<C> callable) {
            this.f25570do = subscriber;
            this.f25572for = i;
            this.f25573if = callable;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f25575try.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f25569case) {
                return;
            }
            this.f25569case = true;
            C c = this.f25574new;
            if (c != null && !c.isEmpty()) {
                this.f25570do.onNext(c);
            }
            this.f25570do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25569case) {
                jp1.l(th);
            } else {
                this.f25569case = true;
                this.f25570do.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f25569case) {
                return;
            }
            C c = this.f25574new;
            if (c == null) {
                try {
                    c = (C) io.reactivex.internal.functions.Cif.m29468else(this.f25573if.call(), "The bufferSupplier returned a null buffer");
                    this.f25574new = c;
                } catch (Throwable th) {
                    t80.m7781if(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            c.add(t);
            int i = this.f25571else + 1;
            if (i != this.f25572for) {
                this.f25571else = i;
                return;
            }
            this.f25571else = 0;
            this.f25574new = null;
            this.f25570do.onNext(c);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f25575try, subscription)) {
                this.f25575try = subscription;
                this.f25570do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                this.f25575try.request(r6.m6778new(j, this.f25572for));
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.catch$for, reason: invalid class name */
    public static final class Cfor<T, C extends Collection<? super T>> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -5616169793639412593L;
        public C buffer;
        public final Callable<C> bufferSupplier;
        public boolean done;
        public final Subscriber<? super C> downstream;
        public int index;
        public final int size;
        public final int skip;
        public Subscription upstream;

        public Cfor(Subscriber<? super C> subscriber, int i, int i2, Callable<C> callable) {
            this.downstream = subscriber;
            this.size = i;
            this.skip = i2;
            this.bufferSupplier = callable;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.upstream.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            C c = this.buffer;
            this.buffer = null;
            if (c != null) {
                this.downstream.onNext(c);
            }
            this.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.done = true;
            this.buffer = null;
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            C c = this.buffer;
            int i = this.index;
            int i2 = i + 1;
            if (i == 0) {
                try {
                    c = (C) io.reactivex.internal.functions.Cif.m29468else(this.bufferSupplier.call(), "The bufferSupplier returned a null buffer");
                    this.buffer = c;
                } catch (Throwable th) {
                    t80.m7781if(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            if (c != null) {
                c.add(t);
                if (c.size() == this.size) {
                    this.buffer = null;
                    this.downstream.onNext(c);
                }
            }
            if (i2 == this.skip) {
                i2 = 0;
            }
            this.index = i2;
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
                if (get() != 0 || !compareAndSet(0, 1)) {
                    this.upstream.request(r6.m6778new(this.skip, j));
                    return;
                }
                this.upstream.request(r6.m6776for(r6.m6778new(j, this.size), r6.m6778new(this.skip - this.size, j - 1)));
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.catch$if, reason: invalid class name */
    public static final class Cif<T, C extends Collection<? super T>> extends AtomicLong implements FlowableSubscriber<T>, Subscription, BooleanSupplier {
        private static final long serialVersionUID = -7370244972039324525L;
        public final Callable<C> bufferSupplier;
        public volatile boolean cancelled;
        public boolean done;
        public final Subscriber<? super C> downstream;
        public int index;
        public long produced;
        public final int size;
        public final int skip;
        public Subscription upstream;
        public final AtomicBoolean once = new AtomicBoolean();
        public final ArrayDeque<C> buffers = new ArrayDeque<>();

        public Cif(Subscriber<? super C> subscriber, int i, int i2, Callable<C> callable) {
            this.downstream = subscriber;
            this.size = i;
            this.skip = i2;
            this.bufferSupplier = callable;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            this.upstream.cancel();
        }

        @Override // io.reactivex.functions.BooleanSupplier
        public boolean getAsBoolean() {
            return this.cancelled;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            long j = this.produced;
            if (j != 0) {
                r6.m6779try(this, j);
            }
            ti1.m7953else(this.downstream, this.buffers, this, this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.done = true;
            this.buffers.clear();
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            ArrayDeque<C> arrayDeque = this.buffers;
            int i = this.index;
            int i2 = i + 1;
            if (i == 0) {
                try {
                    arrayDeque.offer((Collection) io.reactivex.internal.functions.Cif.m29468else(this.bufferSupplier.call(), "The bufferSupplier returned a null buffer"));
                } catch (Throwable th) {
                    t80.m7781if(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            Collection collection = (Collection) arrayDeque.peek();
            if (collection != null && collection.size() + 1 == this.size) {
                arrayDeque.poll();
                collection.add(t);
                this.produced++;
                this.downstream.onNext(collection);
            }
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                ((Collection) it.next()).add(t);
            }
            if (i2 == this.skip) {
                i2 = 0;
            }
            this.index = i2;
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
            if (!io.reactivex.internal.subscriptions.Cfor.validate(j) || ti1.m7958this(j, this.downstream, this.buffers, this, this)) {
                return;
            }
            if (this.once.get() || !this.once.compareAndSet(false, true)) {
                this.upstream.request(r6.m6778new(this.skip, j));
            } else {
                this.upstream.request(r6.m6776for(this.size, r6.m6778new(this.skip, j - 1)));
            }
        }
    }

    public Ccatch(io.reactivex.Cfor<T> cfor, int i, int i2, Callable<C> callable) {
        super(cfor);
        this.f25566for = i;
        this.f25567new = i2;
        this.f25568try = callable;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super C> subscriber) {
        int i = this.f25566for;
        int i2 = this.f25567new;
        if (i == i2) {
            this.f25614if.m5(new Cdo(subscriber, i, this.f25568try));
        } else if (i2 > i) {
            this.f25614if.m5(new Cfor(subscriber, this.f25566for, this.f25567new, this.f25568try));
        } else {
            this.f25614if.m5(new Cif(subscriber, this.f25566for, this.f25567new, this.f25568try));
        }
    }
}
