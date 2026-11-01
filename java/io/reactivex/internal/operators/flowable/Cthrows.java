package io.reactivex.internal.operators.flowable;

import android.support.v4.xz1;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;

/* renamed from: io.reactivex.internal.operators.flowable.throws, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthrows<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final MaybeSource<? extends T> f25943for;

    /* renamed from: io.reactivex.internal.operators.flowable.throws$do, reason: invalid class name */
    public static final class Cdo<T> extends xz1<T, T> implements MaybeObserver<T> {
        private static final long serialVersionUID = -7346385463600070225L;
        public boolean inMaybe;
        public MaybeSource<? extends T> other;
        public final AtomicReference<Disposable> otherDisposable;

        public Cdo(Subscriber<? super T> subscriber, MaybeSource<? extends T> maybeSource) {
            super(subscriber);
            this.other = maybeSource;
            this.otherDisposable = new AtomicReference<>();
        }

        @Override // android.support.v4.xz1, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            io.reactivex.internal.disposables.Cdo.dispose(this.otherDisposable);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.inMaybe) {
                this.downstream.onComplete();
                return;
            }
            this.inMaybe = true;
            this.upstream = Cfor.CANCELLED;
            MaybeSource<? extends T> maybeSource = this.other;
            this.other = null;
            maybeSource.subscribe(this);
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

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this.otherDisposable, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            complete(t);
        }
    }

    public Cthrows(io.reactivex.Cfor<T> cfor, MaybeSource<? extends T> maybeSource) {
        super(cfor);
        this.f25943for = maybeSource;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25943for));
    }
}
