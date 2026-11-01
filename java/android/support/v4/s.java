package android.support.v4;

import rx.Observer;
import rx.functions.Action0;
import rx.functions.Action1;

/* loaded from: classes4.dex */
public final class s<T> implements Observer<T> {

    /* renamed from: do, reason: not valid java name */
    public final Action1<? super T> f5976do;

    /* renamed from: for, reason: not valid java name */
    public final Action0 f5977for;

    /* renamed from: if, reason: not valid java name */
    public final Action1<? super Throwable> f5978if;

    public s(Action1<? super T> action1, Action1<? super Throwable> action12, Action0 action0) {
        this.f5976do = action1;
        this.f5978if = action12;
        this.f5977for = action0;
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.f5977for.call();
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.f5978if.call(th);
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.f5976do.call(t);
    }
}
