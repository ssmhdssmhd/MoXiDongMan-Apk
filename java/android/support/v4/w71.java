package android.support.v4;

import rx.Observable;
import rx.functions.Action0;
import rx.observers.Cnew;

/* loaded from: classes4.dex */
public class w71<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    private final Action0 f7411do;

    public w71(Action0 action0) {
        this.f7411do = action0;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        this.f7411do.call();
        return Cnew.m39112case(y22Var);
    }
}
