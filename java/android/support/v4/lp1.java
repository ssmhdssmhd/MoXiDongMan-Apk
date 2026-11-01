package android.support.v4;

import rx.Observable;
import rx.Single;
import rx.Subscription;

/* loaded from: classes4.dex */
public abstract class lp1 {
    @Deprecated
    /* renamed from: do, reason: not valid java name */
    public <T> Single.OnSubscribe<T> m4727do(Single.OnSubscribe<T> onSubscribe) {
        return onSubscribe;
    }

    @Deprecated
    /* renamed from: for, reason: not valid java name */
    public <T> Throwable m4728for(Throwable th) {
        return th;
    }

    @Deprecated
    /* renamed from: if, reason: not valid java name */
    public <T, R> Observable.Operator<? extends R, ? super T> m4729if(Observable.Operator<? extends R, ? super T> operator) {
        return operator;
    }

    @Deprecated
    /* renamed from: new, reason: not valid java name */
    public <T> Subscription m4730new(Subscription subscription) {
        return subscription;
    }

    @Deprecated
    /* renamed from: try, reason: not valid java name */
    public <T> Observable.OnSubscribe<T> m4731try(Single<? extends T> single, Observable.OnSubscribe<T> onSubscribe) {
        return onSubscribe;
    }
}
