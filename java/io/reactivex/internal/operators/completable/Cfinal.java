package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.completable.final, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinal<T> extends np {

    /* renamed from: do, reason: not valid java name */
    public final Publisher<T> f25396do;

    /* renamed from: io.reactivex.internal.operators.completable.final$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final CompletableObserver f25397do;

        /* renamed from: if, reason: not valid java name */
        public Subscription f25398if;

        public Cdo(CompletableObserver completableObserver) {
            this.f25397do = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25398if.cancel();
            this.f25398if = Cfor.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25398if == Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25397do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f25397do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f25398if, subscription)) {
                this.f25398if = subscription;
                this.f25397do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public Cfinal(Publisher<T> publisher) {
        this.f25396do = publisher;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25396do.subscribe(new Cdo(completableObserver));
    }
}
