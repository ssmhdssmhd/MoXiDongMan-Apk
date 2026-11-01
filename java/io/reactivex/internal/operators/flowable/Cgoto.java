package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cgoto<T> extends Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public final Iterable<? extends Publisher<? extends T>> f25660for;

    /* renamed from: if, reason: not valid java name */
    public final Publisher<? extends T>[] f25661if;

    /* renamed from: io.reactivex.internal.operators.flowable.goto$do, reason: invalid class name */
    public static final class Cdo<T> implements Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T> f25662do;

        /* renamed from: for, reason: not valid java name */
        public final AtomicInteger f25663for = new AtomicInteger();

        /* renamed from: if, reason: not valid java name */
        public final Cif<T>[] f25664if;

        public Cdo(Subscriber<? super T> subscriber, int i) {
            this.f25662do = subscriber;
            this.f25664if = new Cif[i];
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.f25663for.get() != -1) {
                this.f25663for.lazySet(-1);
                for (Cif<T> cif : this.f25664if) {
                    cif.cancel();
                }
            }
        }

        /* renamed from: do, reason: not valid java name */
        public void m29490do(Publisher<? extends T>[] publisherArr) {
            Cif<T>[] cifArr = this.f25664if;
            int length = cifArr.length;
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                cifArr[i] = new Cif<>(this, i2, this.f25662do);
                i = i2;
            }
            this.f25663for.lazySet(0);
            this.f25662do.onSubscribe(this);
            for (int i3 = 0; i3 < length && this.f25663for.get() == 0; i3++) {
                publisherArr[i3].subscribe(cifArr[i3]);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public boolean m29491if(int i) {
            int i2 = 0;
            if (this.f25663for.get() != 0 || !this.f25663for.compareAndSet(0, i)) {
                return false;
            }
            Cif<T>[] cifArr = this.f25664if;
            int length = cifArr.length;
            while (i2 < length) {
                int i3 = i2 + 1;
                if (i3 != i) {
                    cifArr[i2].cancel();
                }
                i2 = i3;
            }
            return true;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                int i = this.f25663for.get();
                if (i > 0) {
                    this.f25664if[i - 1].request(j);
                    return;
                }
                if (i == 0) {
                    for (Cif<T> cif : this.f25664if) {
                        cif.request(j);
                    }
                }
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.goto$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -1185974347409665484L;
        public final Subscriber<? super T> downstream;
        public final int index;
        public final AtomicLong missedRequested = new AtomicLong();
        public final Cdo<T> parent;
        public boolean won;

        public Cif(Cdo<T> cdo, int i, Subscriber<? super T> subscriber) {
            this.parent = cdo;
            this.index = i;
            this.downstream = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.won) {
                this.downstream.onComplete();
            } else if (!this.parent.m29491if(this.index)) {
                get().cancel();
            } else {
                this.won = true;
                this.downstream.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.won) {
                this.downstream.onError(th);
            } else if (this.parent.m29491if(this.index)) {
                this.won = true;
                this.downstream.onError(th);
            } else {
                get().cancel();
                jp1.l(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.won) {
                this.downstream.onNext(t);
            } else if (!this.parent.m29491if(this.index)) {
                get().cancel();
            } else {
                this.won = true;
                this.downstream.onNext(t);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.deferredSetOnce(this, this.missedRequested, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            io.reactivex.internal.subscriptions.Cfor.deferredRequest(this, this.missedRequested, j);
        }
    }

    public Cgoto(Publisher<? extends T>[] publisherArr, Iterable<? extends Publisher<? extends T>> iterable) {
        this.f25661if = publisherArr;
        this.f25660for = iterable;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        int length;
        Publisher<? extends T>[] publisherArr = this.f25661if;
        if (publisherArr == null) {
            publisherArr = new Publisher[8];
            try {
                length = 0;
                for (Publisher<? extends T> publisher : this.f25660for) {
                    if (publisher == null) {
                        io.reactivex.internal.subscriptions.Cdo.error(new NullPointerException("One of the sources is null"), subscriber);
                        return;
                    }
                    if (length == publisherArr.length) {
                        Publisher<? extends T>[] publisherArr2 = new Publisher[(length >> 2) + length];
                        System.arraycopy(publisherArr, 0, publisherArr2, 0, length);
                        publisherArr = publisherArr2;
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
            io.reactivex.internal.subscriptions.Cdo.complete(subscriber);
        } else if (length == 1) {
            publisherArr[0].subscribe(subscriber);
        } else {
            new Cdo(subscriber, length).m29490do(publisherArr);
        }
    }
}
