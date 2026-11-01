package com.uber.autodispose;

import io.reactivex.CompletableConverter;
import io.reactivex.FlowableConverter;
import io.reactivex.MaybeConverter;
import io.reactivex.ObservableConverter;
import io.reactivex.SingleConverter;
import io.reactivex.parallel.ParallelFlowableConverter;

/* loaded from: classes2.dex */
public interface AutoDisposeConverter<T> extends FlowableConverter<T, FlowableSubscribeProxy<T>>, ParallelFlowableConverter<T, ParallelFlowableSubscribeProxy<T>>, ObservableConverter<T, ObservableSubscribeProxy<T>>, MaybeConverter<T, MaybeSubscribeProxy<T>>, SingleConverter<T, SingleSubscribeProxy<T>>, CompletableConverter<CompletableSubscribeProxy> {
}
