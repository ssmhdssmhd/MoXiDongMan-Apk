package android.support.v4;

import rx.Observable;
import rx.Observer;
import rx.subjects.Cnew;

/* loaded from: classes4.dex */
public abstract class u22<T, R> extends Observable<R> implements Observer<T> {
    public u22(Observable.OnSubscribe<R> onSubscribe) {
        super(onSubscribe);
    }

    public abstract boolean e6();

    public final Cnew<T, R> f6() {
        return getClass() == Cnew.class ? (Cnew) this : new Cnew<>(this);
    }
}
