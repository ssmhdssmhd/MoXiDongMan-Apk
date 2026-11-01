package android.support.v4;

import io.reactivex.Cfor;
import io.reactivex.functions.Function;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class zc0<T, U> extends Cfor<U> {

    /* renamed from: case, reason: not valid java name */
    public final int f8511case;

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends Publisher<? extends U>> f8512for;

    /* renamed from: if, reason: not valid java name */
    public final Publisher<T> f8513if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f8514new;

    /* renamed from: try, reason: not valid java name */
    public final int f8515try;

    public zc0(Publisher<T> publisher, Function<? super T, ? extends Publisher<? extends U>> function, boolean z, int i, int i2) {
        this.f8513if = publisher;
        this.f8512for = function;
        this.f8514new = z;
        this.f8515try = i;
        this.f8511case = i2;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super U> subscriber) {
        if (io.reactivex.internal.operators.flowable.j1.m29493if(this.f8513if, subscriber, this.f8512for)) {
            return;
        }
        this.f8513if.subscribe(io.reactivex.internal.operators.flowable.f.L7(subscriber, this.f8512for, this.f8514new, this.f8515try, this.f8511case));
    }
}
