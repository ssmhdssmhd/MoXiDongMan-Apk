package rx.internal.operators;

import android.support.v4.y22;
import rx.Observable;

/* renamed from: rx.internal.operators.public, reason: invalid class name */
/* loaded from: classes4.dex */
public enum Cpublic implements Observable.OnSubscribe<Object> {
    INSTANCE;

    public static final Observable<Object> NEVER = Observable.q5(INSTANCE);

    public static <T> Observable<T> instance() {
        return (Observable<T>) NEVER;
    }

    @Override // rx.functions.Action1
    public void call(y22<? super Object> y22Var) {
    }
}
