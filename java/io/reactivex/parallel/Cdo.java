package io.reactivex.parallel;

import io.reactivex.functions.BiFunction;

/* renamed from: io.reactivex.parallel.do, reason: invalid class name */
/* loaded from: classes3.dex */
public enum Cdo implements BiFunction<Long, Throwable, Cdo> {
    STOP,
    ERROR,
    SKIP,
    RETRY;

    @Override // io.reactivex.functions.BiFunction
    public Cdo apply(Long l, Throwable th) {
        return this;
    }
}
