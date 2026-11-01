package android.support.v4;

import rx.Observable;
import rx.functions.Action0;
import rx.observers.Cnew;
import rx.subscriptions.Cfor;

/* loaded from: classes4.dex */
public class x71<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    private final Action0 f7795do;

    public x71(Action0 action0) {
        this.f7795do = action0;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        y22Var.add(Cfor.m39225do(this.f7795do));
        return Cnew.m39112case(y22Var);
    }
}
