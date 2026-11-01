package io.reactivex.internal.operators.flowable;

import io.reactivex.Cfor;
import io.reactivex.functions.Function;
import io.reactivex.internal.operators.flowable.Creturn;
import io.reactivex.internal.util.Ctry;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* renamed from: io.reactivex.internal.operators.flowable.static, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cstatic<T, R> extends Cfor<R> {

    /* renamed from: case, reason: not valid java name */
    public final Ctry f25860case;

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends Publisher<? extends R>> f25861for;

    /* renamed from: if, reason: not valid java name */
    public final Publisher<T> f25862if;

    /* renamed from: new, reason: not valid java name */
    public final int f25863new;

    /* renamed from: try, reason: not valid java name */
    public final int f25864try;

    public Cstatic(Publisher<T> publisher, Function<? super T, ? extends Publisher<? extends R>> function, int i, int i2, Ctry ctry) {
        this.f25862if = publisher;
        this.f25861for = function;
        this.f25863new = i;
        this.f25864try = i2;
        this.f25860case = ctry;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        this.f25862if.subscribe(new Creturn.Cdo(subscriber, this.f25861for, this.f25863new, this.f25864try, this.f25860case));
    }
}
