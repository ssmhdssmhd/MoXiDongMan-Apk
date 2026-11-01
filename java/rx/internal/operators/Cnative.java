package rx.internal.operators;

import android.support.v4.y22;
import rx.Observable;

/* renamed from: rx.internal.operators.native, reason: invalid class name */
/* loaded from: classes4.dex */
public enum Cnative implements Observable.OnSubscribe<Object> {
    INSTANCE;

    public static final Observable<Object> EMPTY = Observable.q5(INSTANCE);

    public static <T> Observable<T> instance() {
        return (Observable<T>) EMPTY;
    }

    @Override // rx.functions.Action1
    public void call(y22<? super Object> y22Var) {
        y22Var.onCompleted();
    }
}
