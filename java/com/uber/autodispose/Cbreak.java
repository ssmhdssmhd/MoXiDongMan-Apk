package com.uber.autodispose;

import io.reactivex.Cnew;
import io.reactivex.CompletableSource;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;

/* renamed from: com.uber.autodispose.break, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cbreak<T> extends Cnew<T> implements ObservableSubscribeProxy<T> {

    /* renamed from: do, reason: not valid java name */
    private final ObservableSource<T> f20760do;

    /* renamed from: if, reason: not valid java name */
    private final CompletableSource f20761if;

    public Cbreak(ObservableSource<T> observableSource, CompletableSource completableSource) {
        this.f20760do = observableSource;
        this.f20761if = completableSource;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f20760do.subscribe(new Cthrow(this.f20761if, observer));
    }
}
