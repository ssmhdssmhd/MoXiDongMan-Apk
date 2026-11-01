package io.reactivex.internal.operators.flowable;

import io.reactivex.Cfor;
import io.reactivex.internal.operators.flowable.z1;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class d2<T> extends Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public final long f25611for;

    /* renamed from: if, reason: not valid java name */
    public final Publisher<T> f25612if;

    public d2(Publisher<T> publisher, long j) {
        this.f25612if = publisher;
        this.f25611for = j;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25612if.subscribe(new z1.Cdo(subscriber, this.f25611for));
    }
}
