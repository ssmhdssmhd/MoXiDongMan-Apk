package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;

/* loaded from: classes3.dex */
public final class t<T> extends Cdo<T, T> {
    public t(MaybeSource<T> maybeSource) {
        super(maybeSource);
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(maybeObserver);
    }
}
