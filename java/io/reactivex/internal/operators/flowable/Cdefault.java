package io.reactivex.internal.operators.flowable;

import android.support.v4.xz1;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;

/* renamed from: io.reactivex.internal.operators.flowable.default, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdefault<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final SingleSource<? extends T> f25613for;

    /* renamed from: io.reactivex.internal.operators.flowable.default$do, reason: invalid class name */
    public static final class Cdo<T> extends xz1<T, T> implements SingleObserver<T> {
        private static final long serialVersionUID = -7346385463600070225L;
        public SingleSource<? extends T> other;
        public final AtomicReference<Disposable> otherDisposable;

        public Cdo(Subscriber<? super T> subscriber, SingleSource<? extends T> singleSource) {
            super(subscriber);
            this.other = singleSource;
            this.otherDisposable = new AtomicReference<>();
        }

        @Override // android.support.v4.xz1, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            io.reactivex.internal.disposables.Cdo.dispose(this.otherDisposable);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.upstream = Cfor.CANCELLED;
            SingleSource<? extends T> singleSource = this.other;
            this.other = null;
            singleSource.subscribe(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.produced++;
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this.otherDisposable, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            complete(t);
        }
    }

    public Cdefault(io.reactivex.Cfor<T> cfor, SingleSource<? extends T> singleSource) {
        super(cfor);
        this.f25613for = singleSource;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25613for));
    }
}
