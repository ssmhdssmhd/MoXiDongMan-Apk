package android.support.v4;

import io.reactivex.CompletableObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class z22<T> implements CompletableObserver, Subscription {

    /* renamed from: do, reason: not valid java name */
    public final Subscriber<? super T> f8434do;

    /* renamed from: if, reason: not valid java name */
    public Disposable f8435if;

    public z22(Subscriber<? super T> subscriber) {
        this.f8434do = subscriber;
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        this.f8435if.dispose();
    }

    @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
    public void onComplete() {
        this.f8434do.onComplete();
    }

    @Override // io.reactivex.CompletableObserver
    public void onError(Throwable th) {
        this.f8434do.onError(th);
    }

    @Override // io.reactivex.CompletableObserver
    public void onSubscribe(Disposable disposable) {
        if (Cdo.validate(this.f8435if, disposable)) {
            this.f8435if = disposable;
            this.f8434do.onSubscribe(this);
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
    }
}
