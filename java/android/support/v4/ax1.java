package android.support.v4;

import rx.Observer;
import rx.observers.Cfor;

/* loaded from: classes4.dex */
public class ax1<T> extends y22<T> {

    /* renamed from: do, reason: not valid java name */
    private final Observer<T> f282do;

    public ax1(y22<? super T> y22Var) {
        this(y22Var, true);
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.f282do.onCompleted();
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.f282do.onError(th);
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.f282do.onNext(t);
    }

    public ax1(y22<? super T> y22Var, boolean z) {
        super(y22Var, z);
        this.f282do = new Cfor(y22Var);
    }
}
