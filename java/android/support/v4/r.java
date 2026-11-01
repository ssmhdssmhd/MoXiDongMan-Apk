package android.support.v4;

import rx.Cdo;
import rx.Observer;
import rx.functions.Action1;

/* loaded from: classes4.dex */
public final class r<T> implements Observer<T> {

    /* renamed from: do, reason: not valid java name */
    public final Action1<Cdo<? super T>> f5556do;

    public r(Action1<Cdo<? super T>> action1) {
        this.f5556do = action1;
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.f5556do.call(Cdo.m38310if());
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.f5556do.call(Cdo.m38311new(th));
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.f5556do.call(Cdo.m38312try(t));
    }
}
