package com.uber.autodispose;

import io.reactivex.Cfor;
import io.reactivex.CompletableSource;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* renamed from: com.uber.autodispose.goto, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cgoto<T> extends Cfor<T> implements FlowableSubscribeProxy<T> {

    /* renamed from: for, reason: not valid java name */
    private final CompletableSource f20775for;

    /* renamed from: if, reason: not valid java name */
    private final Publisher<T> f20776if;

    public Cgoto(Publisher<T> publisher, CompletableSource completableSource) {
        this.f20776if = publisher;
        this.f20775for = completableSource;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f20776if.subscribe(new Cimport(this.f20775for, subscriber));
    }
}
