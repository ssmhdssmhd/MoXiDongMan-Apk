package android.support.v4;

import rx.Observable;
import rx.Subscription;

/* loaded from: classes4.dex */
public abstract class ip1 {
    @Deprecated
    /* renamed from: do, reason: not valid java name */
    public <T> Observable.OnSubscribe<T> m3536do(Observable.OnSubscribe<T> onSubscribe) {
        return onSubscribe;
    }

    @Deprecated
    /* renamed from: for, reason: not valid java name */
    public <T> Throwable m3537for(Throwable th) {
        return th;
    }

    @Deprecated
    /* renamed from: if, reason: not valid java name */
    public <T, R> Observable.Operator<? extends R, ? super T> m3538if(Observable.Operator<? extends R, ? super T> operator) {
        return operator;
    }

    @Deprecated
    /* renamed from: new, reason: not valid java name */
    public <T> Subscription m3539new(Subscription subscription) {
        return subscription;
    }

    @Deprecated
    /* renamed from: try, reason: not valid java name */
    public <T> Observable.OnSubscribe<T> m3540try(Observable<? extends T> observable, Observable.OnSubscribe<T> onSubscribe) {
        return onSubscribe;
    }
}
