package io.reactivex.internal.operators.flowable;

import io.reactivex.Cfor;
import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class o<T> extends Cfor<T> {

    /* renamed from: if, reason: not valid java name */
    private final Cnew<T> f25768if;

    /* renamed from: io.reactivex.internal.operators.flowable.o$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T> f25769do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f25770if;

        public Cdo(Subscriber<? super T> subscriber) {
            this.f25769do = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f25770if.dispose();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f25769do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f25769do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f25769do.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f25770if = disposable;
            this.f25769do.onSubscribe(this);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
        }
    }

    public o(Cnew<T> cnew) {
        this.f25768if = cnew;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25768if.subscribe(new Cdo(subscriber));
    }
}
