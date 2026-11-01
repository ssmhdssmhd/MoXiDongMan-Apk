package io.reactivex.internal.operators.flowable;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.si0;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class v2<T, R> extends io.reactivex.internal.operators.flowable.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    @a51
    public final Publisher<?>[] f26009for;

    /* renamed from: new, reason: not valid java name */
    @a51
    public final Iterable<? extends Publisher<?>> f26010new;

    /* renamed from: try, reason: not valid java name */
    public final Function<? super Object[], R> f26011try;

    /* renamed from: io.reactivex.internal.operators.flowable.v2$do, reason: invalid class name */
    public final class Cdo implements Function<T, R> {
        public Cdo() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.lang.Object[]] */
        @Override // io.reactivex.functions.Function
        public R apply(T t) throws Exception {
            return (R) io.reactivex.internal.functions.Cif.m29468else(v2.this.f26011try.apply(new Object[]{t}), "The combiner returned a null value");
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.v2$for, reason: invalid class name */
    public static final class Cfor extends AtomicReference<Subscription> implements FlowableSubscriber<Object> {
        private static final long serialVersionUID = 3256684027868224024L;
        public boolean hasValue;
        public final int index;
        public final Cif<?, ?> parent;

        public Cfor(Cif<?, ?> cif, int i) {
            this.parent = cif;
            this.index = i;
        }

        public void dispose() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.parent.innerComplete(this.index, this.hasValue);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.parent.innerError(this.index, th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            if (!this.hasValue) {
                this.hasValue = true;
            }
            this.parent.innerNext(this.index, obj);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.v2$if, reason: invalid class name */
    public static final class Cif<T, R> extends AtomicInteger implements ConditionalSubscriber<T>, Subscription {
        private static final long serialVersionUID = 1577321883966341961L;
        public final Function<? super Object[], R> combiner;
        public volatile boolean done;
        public final Subscriber<? super R> downstream;
        public final h4 error;
        public final AtomicLong requested;
        public final Cfor[] subscribers;
        public final AtomicReference<Subscription> upstream;
        public final AtomicReferenceArray<Object> values;

        public Cif(Subscriber<? super R> subscriber, Function<? super Object[], R> function, int i) {
            this.downstream = subscriber;
            this.combiner = function;
            Cfor[] cforArr = new Cfor[i];
            for (int i2 = 0; i2 < i; i2++) {
                cforArr[i2] = new Cfor(this, i2);
            }
            this.subscribers = cforArr;
            this.values = new AtomicReferenceArray<>(i);
            this.upstream = new AtomicReference<>();
            this.requested = new AtomicLong();
            this.error = new h4();
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
            for (Cfor cfor : this.subscribers) {
                cfor.dispose();
            }
        }

        public void cancelAllBut(int i) {
            Cfor[] cforArr = this.subscribers;
            for (int i2 = 0; i2 < cforArr.length; i2++) {
                if (i2 != i) {
                    cforArr[i2].dispose();
                }
            }
        }

        public void innerComplete(int i, boolean z) {
            if (z) {
                return;
            }
            this.done = true;
            io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
            cancelAllBut(i);
            si0.m7413if(this.downstream, this, this.error);
        }

        public void innerError(int i, Throwable th) {
            this.done = true;
            io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
            cancelAllBut(i);
            si0.m7414new(this.downstream, th, this, this.error);
        }

        public void innerNext(int i, Object obj) {
            this.values.set(i, obj);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            cancelAllBut(-1);
            si0.m7413if(this.downstream, this, this.error);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.done = true;
            cancelAllBut(-1);
            si0.m7414new(this.downstream, th, this, this.error);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t) || this.done) {
                return;
            }
            this.upstream.get().request(1L);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.deferredSetOnce(this.upstream, this.requested, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            io.reactivex.internal.subscriptions.Cfor.deferredRequest(this.upstream, this.requested, j);
        }

        public void subscribe(Publisher<?>[] publisherArr, int i) {
            Cfor[] cforArr = this.subscribers;
            AtomicReference<Subscription> atomicReference = this.upstream;
            for (int i2 = 0; i2 < i && atomicReference.get() != io.reactivex.internal.subscriptions.Cfor.CANCELLED; i2++) {
                publisherArr[i2].subscribe(cforArr[i2]);
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (this.done) {
                return false;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = this.values;
            int length = atomicReferenceArray.length();
            Object[] objArr = new Object[length + 1];
            objArr[0] = t;
            int i = 0;
            while (i < length) {
                Object obj = atomicReferenceArray.get(i);
                if (obj == null) {
                    return false;
                }
                i++;
                objArr[i] = obj;
            }
            try {
                si0.m7410case(this.downstream, io.reactivex.internal.functions.Cif.m29468else(this.combiner.apply(objArr), "The combiner returned a null value"), this, this.error);
                return true;
            } catch (Throwable th) {
                t80.m7781if(th);
                cancel();
                onError(th);
                return false;
            }
        }
    }

    public v2(@b41 io.reactivex.Cfor<T> cfor, @b41 Publisher<?>[] publisherArr, Function<? super Object[], R> function) {
        super(cfor);
        this.f26009for = publisherArr;
        this.f26010new = null;
        this.f26011try = function;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        int length;
        Publisher<?>[] publisherArr = this.f26009for;
        if (publisherArr == null) {
            publisherArr = new Publisher[8];
            try {
                length = 0;
                for (Publisher<?> publisher : this.f26010new) {
                    if (length == publisherArr.length) {
                        publisherArr = (Publisher[]) Arrays.copyOf(publisherArr, (length >> 1) + length);
                    }
                    int i = length + 1;
                    publisherArr[length] = publisher;
                    length = i;
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
                return;
            }
        } else {
            length = publisherArr.length;
        }
        if (length == 0) {
            new c0(this.f25614if, new Cdo()).n5(subscriber);
            return;
        }
        Cif cif = new Cif(subscriber, this.f26011try, length);
        subscriber.onSubscribe(cif);
        cif.subscribe(publisherArr, length);
        this.f25614if.m5(cif);
    }

    public v2(@b41 io.reactivex.Cfor<T> cfor, @b41 Iterable<? extends Publisher<?>> iterable, @b41 Function<? super Object[], R> function) {
        super(cfor);
        this.f26009for = null;
        this.f26010new = iterable;
        this.f26011try = function;
    }
}
