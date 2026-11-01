package io.reactivex.internal.operators.observable;

import android.support.v4.zw1;
import io.reactivex.Cnew;
import io.reactivex.Observer;

/* loaded from: classes3.dex */
public final class g1<T> extends Cdo<T, T> {
    public g1(Cnew<T> cnew) {
        super(cnew);
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new zw1(observer));
    }
}
