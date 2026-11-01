package android.support.v4;

import rx.Observer;

/* loaded from: classes4.dex */
public final class j61<T> extends y22<T> {

    /* renamed from: do, reason: not valid java name */
    public final Observer<? super T> f3016do;

    public j61(Observer<? super T> observer) {
        this.f3016do = observer;
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.f3016do.onCompleted();
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.f3016do.onError(th);
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.f3016do.onNext(t);
    }
}
