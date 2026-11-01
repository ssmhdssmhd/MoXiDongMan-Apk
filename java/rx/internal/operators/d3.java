package rx.internal.operators;

import android.support.v4.y22;
import rx.Observable;
import rx.Single;
import rx.internal.operators.r2;

/* loaded from: classes4.dex */
public final class d3<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Single.OnSubscribe<T> f34658do;

    public d3(Single.OnSubscribe<T> onSubscribe) {
        this.f34658do = onSubscribe;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        r2.Cdo cdo = new r2.Cdo(y22Var);
        y22Var.add(cdo);
        this.f34658do.call(cdo);
    }
}
