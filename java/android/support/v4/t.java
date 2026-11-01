package android.support.v4;

import rx.functions.Action0;
import rx.functions.Action1;

/* loaded from: classes4.dex */
public final class t<T> extends y22<T> {

    /* renamed from: do, reason: not valid java name */
    public final Action1<? super T> f6344do;

    /* renamed from: for, reason: not valid java name */
    public final Action0 f6345for;

    /* renamed from: if, reason: not valid java name */
    public final Action1<Throwable> f6346if;

    public t(Action1<? super T> action1, Action1<Throwable> action12, Action0 action0) {
        this.f6344do = action1;
        this.f6346if = action12;
        this.f6345for = action0;
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.f6345for.call();
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.f6346if.call(th);
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.f6344do.call(t);
    }
}
