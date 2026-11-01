package io.reactivex.internal.operators.flowable;

import io.reactivex.Cfor;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.HasUpstreamPublisher;
import org.reactivestreams.Publisher;

/* renamed from: io.reactivex.internal.operators.flowable.do, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Cdo<T, R> extends Cfor<R> implements HasUpstreamPublisher<T> {

    /* renamed from: if, reason: not valid java name */
    public final Cfor<T> f25614if;

    public Cdo(Cfor<T> cfor) {
        this.f25614if = (Cfor) Cif.m29468else(cfor, "source is null");
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamPublisher
    public final Publisher<T> source() {
        return this.f25614if;
    }
}
