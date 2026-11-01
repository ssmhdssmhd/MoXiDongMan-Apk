package io.reactivex.internal.operators.flowable;

import io.reactivex.Cfor;
import io.reactivex.functions.Function;
import io.reactivex.internal.operators.flowable.c0;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class e0<T, U> extends Cfor<U> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends U> f25618for;

    /* renamed from: if, reason: not valid java name */
    public final Publisher<T> f25619if;

    public e0(Publisher<T> publisher, Function<? super T, ? extends U> function) {
        this.f25619if = publisher;
        this.f25618for = function;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super U> subscriber) {
        this.f25619if.subscribe(new c0.Cif(subscriber, this.f25618for));
    }
}
