package io.reactivex.internal.operators.single;

import android.support.v4.jp1;
import android.support.v4.jz1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.NoSuchElementException;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.single.package, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cpackage<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final Publisher<? extends T> f27211do;

    /* renamed from: io.reactivex.internal.operators.single.package$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super T> f27212do;

        /* renamed from: for, reason: not valid java name */
        public T f27213for;

        /* renamed from: if, reason: not valid java name */
        public Subscription f27214if;

        /* renamed from: new, reason: not valid java name */
        public boolean f27215new;

        /* renamed from: try, reason: not valid java name */
        public volatile boolean f27216try;

        public Cdo(SingleObserver<? super T> singleObserver) {
            this.f27212do = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f27216try = true;
            this.f27214if.cancel();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27216try;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f27215new) {
                return;
            }
            this.f27215new = true;
            T t = this.f27213for;
            this.f27213for = null;
            if (t == null) {
                this.f27212do.onError(new NoSuchElementException("The source Publisher is empty"));
            } else {
                this.f27212do.onSuccess(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f27215new) {
                jp1.l(th);
                return;
            }
            this.f27215new = true;
            this.f27213for = null;
            this.f27212do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f27215new) {
                return;
            }
            if (this.f27213for == null) {
                this.f27213for = t;
                return;
            }
            this.f27214if.cancel();
            this.f27215new = true;
            this.f27213for = null;
            this.f27212do.onError(new IndexOutOfBoundsException("Too many elements in the Publisher"));
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f27214if, subscription)) {
                this.f27214if = subscription;
                this.f27212do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public Cpackage(Publisher<? extends T> publisher) {
        this.f27211do = publisher;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27211do.subscribe(new Cdo(singleObserver));
    }
}
