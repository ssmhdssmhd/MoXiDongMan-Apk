package io.reactivex.internal.operators.flowable;

import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cif;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.public, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cpublic<T> extends Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public final boolean f25803for;

    /* renamed from: if, reason: not valid java name */
    public final Publisher<? extends T>[] f25804if;

    /* renamed from: io.reactivex.internal.operators.flowable.public$do, reason: invalid class name */
    public static final class Cdo<T> extends Cif implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -8158322871608889516L;
        public final boolean delayError;
        public final Subscriber<? super T> downstream;
        public List<Throwable> errors;
        public int index;
        public long produced;
        public final Publisher<? extends T>[] sources;
        public final AtomicInteger wip;

        public Cdo(Publisher<? extends T>[] publisherArr, boolean z, Subscriber<? super T> subscriber) {
            super(false);
            this.downstream = subscriber;
            this.sources = publisherArr;
            this.delayError = z;
            this.wip = new AtomicInteger();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.wip.getAndIncrement() == 0) {
                Publisher<? extends T>[] publisherArr = this.sources;
                int length = publisherArr.length;
                int i = this.index;
                while (i != length) {
                    Publisher<? extends T> publisher = publisherArr[i];
                    if (publisher == null) {
                        NullPointerException nullPointerException = new NullPointerException("A Publisher entry is null");
                        if (!this.delayError) {
                            this.downstream.onError(nullPointerException);
                            return;
                        }
                        List arrayList = this.errors;
                        if (arrayList == null) {
                            arrayList = new ArrayList((length - i) + 1);
                            this.errors = arrayList;
                        }
                        arrayList.add(nullPointerException);
                        i++;
                    } else {
                        long j = this.produced;
                        if (j != 0) {
                            this.produced = 0L;
                            produced(j);
                        }
                        publisher.subscribe(this);
                        i++;
                        this.index = i;
                        if (this.wip.decrementAndGet() == 0) {
                            return;
                        }
                    }
                }
                List<Throwable> list = this.errors;
                if (list == null) {
                    this.downstream.onComplete();
                } else if (list.size() == 1) {
                    this.downstream.onError(list.get(0));
                } else {
                    this.downstream.onError(new io.reactivex.exceptions.Cdo(list));
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.delayError) {
                this.downstream.onError(th);
                return;
            }
            List arrayList = this.errors;
            if (arrayList == null) {
                arrayList = new ArrayList((this.sources.length - this.index) + 1);
                this.errors = arrayList;
            }
            arrayList.add(th);
            onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.produced++;
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            setSubscription(subscription);
        }
    }

    public Cpublic(Publisher<? extends T>[] publisherArr, boolean z) {
        this.f25804if = publisherArr;
        this.f25803for = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cdo cdo = new Cdo(this.f25804if, this.f25803for, subscriber);
        subscriber.onSubscribe(cdo);
        cdo.onComplete();
    }
}
