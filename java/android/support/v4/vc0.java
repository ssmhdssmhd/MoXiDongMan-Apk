package android.support.v4;

import io.reactivex.Cfor;
import io.reactivex.functions.Function;
import io.reactivex.internal.operators.flowable.FlowableConcatMap;
import io.reactivex.internal.util.Ctry;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class vc0<T, R> extends Cfor<R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends Publisher<? extends R>> f7145for;

    /* renamed from: if, reason: not valid java name */
    public final Publisher<T> f7146if;

    /* renamed from: new, reason: not valid java name */
    public final int f7147new;

    /* renamed from: try, reason: not valid java name */
    public final Ctry f7148try;

    public vc0(Publisher<T> publisher, Function<? super T, ? extends Publisher<? extends R>> function, int i, Ctry ctry) {
        this.f7146if = publisher;
        this.f7145for = function;
        this.f7147new = i;
        this.f7148try = ctry;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        if (io.reactivex.internal.operators.flowable.j1.m29493if(this.f7146if, subscriber, this.f7145for)) {
            return;
        }
        this.f7146if.subscribe(FlowableConcatMap.L7(subscriber, this.f7145for, this.f7147new, this.f7148try));
    }
}
