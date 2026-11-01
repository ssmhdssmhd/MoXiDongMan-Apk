package io.reactivex.internal.operators.single;

import android.support.v4.ez;
import io.reactivex.Cfor;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import org.reactivestreams.Subscriber;

/* renamed from: io.reactivex.internal.operators.single.synchronized, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Csynchronized<T> extends Cfor<T> {

    /* renamed from: if, reason: not valid java name */
    public final SingleSource<? extends T> f27243if;

    /* renamed from: io.reactivex.internal.operators.single.synchronized$do, reason: invalid class name */
    public static final class Cdo<T> extends ez<T> implements SingleObserver<T> {
        private static final long serialVersionUID = 187782011903685568L;
        public Disposable upstream;

        public Cdo(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // android.support.v4.ez, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.upstream.dispose();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            complete(t);
        }
    }

    public Csynchronized(SingleSource<? extends T> singleSource) {
        this.f27243if = singleSource;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f27243if.subscribe(new Cdo(subscriber));
    }
}
