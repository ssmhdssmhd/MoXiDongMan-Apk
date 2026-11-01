package io.reactivex.internal.operators.flowable;

import android.support.v4.jz1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.NoSuchElementException;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class z<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final Publisher<T> f26073do;

    /* renamed from: if, reason: not valid java name */
    public final T f26074if;

    /* renamed from: io.reactivex.internal.operators.flowable.z$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super T> f26075do;

        /* renamed from: for, reason: not valid java name */
        public Subscription f26076for;

        /* renamed from: if, reason: not valid java name */
        public final T f26077if;

        /* renamed from: new, reason: not valid java name */
        public T f26078new;

        public Cdo(SingleObserver<? super T> singleObserver, T t) {
            this.f26075do = singleObserver;
            this.f26077if = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26076for.cancel();
            this.f26076for = Cfor.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26076for == Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f26076for = Cfor.CANCELLED;
            T t = this.f26078new;
            if (t != null) {
                this.f26078new = null;
                this.f26075do.onSuccess(t);
                return;
            }
            T t2 = this.f26077if;
            if (t2 != null) {
                this.f26075do.onSuccess(t2);
            } else {
                this.f26075do.onError(new NoSuchElementException());
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f26076for = Cfor.CANCELLED;
            this.f26078new = null;
            this.f26075do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f26078new = t;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f26076for, subscription)) {
                this.f26076for = subscription;
                this.f26075do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public z(Publisher<T> publisher, T t) {
        this.f26073do = publisher;
        this.f26074if = t;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f26073do.subscribe(new Cdo(singleObserver, this.f26074if));
    }
}
