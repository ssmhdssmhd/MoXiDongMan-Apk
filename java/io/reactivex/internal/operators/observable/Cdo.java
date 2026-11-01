package io.reactivex.internal.operators.observable;

import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.internal.fuseable.HasUpstreamObservableSource;

/* renamed from: io.reactivex.internal.operators.observable.do, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Cdo<T, U> extends Cnew<U> implements HasUpstreamObservableSource<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26500do;

    public Cdo(ObservableSource<T> observableSource) {
        this.f26500do = observableSource;
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamObservableSource
    public final ObservableSource<T> source() {
        return this.f26500do;
    }
}
