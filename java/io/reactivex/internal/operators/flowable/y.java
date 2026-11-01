package io.reactivex.internal.operators.flowable;

import android.support.v4.fy0;
import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class y<T> extends fy0<T> {

    /* renamed from: do, reason: not valid java name */
    public final Publisher<T> f26059do;

    /* renamed from: io.reactivex.internal.operators.flowable.y$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26060do;

        /* renamed from: for, reason: not valid java name */
        public T f26061for;

        /* renamed from: if, reason: not valid java name */
        public Subscription f26062if;

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.f26060do = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26062if.cancel();
            this.f26062if = Cfor.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26062if == Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f26062if = Cfor.CANCELLED;
            T t = this.f26061for;
            if (t == null) {
                this.f26060do.onComplete();
            } else {
                this.f26061for = null;
                this.f26060do.onSuccess(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f26062if = Cfor.CANCELLED;
            this.f26061for = null;
            this.f26060do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f26061for = t;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f26062if, subscription)) {
                this.f26062if = subscription;
                this.f26060do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public y(Publisher<T> publisher) {
        this.f26059do = publisher;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26059do.subscribe(new Cdo(maybeObserver));
    }
}
