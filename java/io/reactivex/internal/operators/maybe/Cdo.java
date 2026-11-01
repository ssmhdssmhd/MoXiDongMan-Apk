package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import io.reactivex.MaybeSource;
import io.reactivex.internal.fuseable.HasUpstreamMaybeSource;

/* renamed from: io.reactivex.internal.operators.maybe.do, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Cdo<T, R> extends fy0<R> implements HasUpstreamMaybeSource<T> {

    /* renamed from: do, reason: not valid java name */
    public final MaybeSource<T> f26120do;

    public Cdo(MaybeSource<T> maybeSource) {
        this.f26120do = maybeSource;
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamMaybeSource
    public final MaybeSource<T> source() {
        return this.f26120do;
    }
}
