package android.support.v4;

import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.operators.flowable.FlowableConcatMap;
import io.reactivex.internal.util.Ctry;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class sb1<T, R> extends ub1<R> {

    /* renamed from: do, reason: not valid java name */
    public final ub1<T> f6106do;

    /* renamed from: for, reason: not valid java name */
    public final int f6107for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends Publisher<? extends R>> f6108if;

    /* renamed from: new, reason: not valid java name */
    public final Ctry f6109new;

    public sb1(ub1<T> ub1Var, Function<? super T, ? extends Publisher<? extends R>> function, int i, Ctry ctry) {
        this.f6106do = ub1Var;
        this.f6108if = (Function) Cif.m29468else(function, "mapper");
        this.f6107for = i;
        this.f6109new = (Ctry) Cif.m29468else(ctry, "errorMode");
    }

    @Override // android.support.v4.ub1
    /* renamed from: strictfp, reason: not valid java name */
    public int mo7358strictfp() {
        return this.f6106do.mo7358strictfp();
    }

    @Override // android.support.v4.ub1
    public void subscribe(Subscriber<? super R>[] subscriberArr) {
        if (g(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                subscriberArr2[i] = FlowableConcatMap.L7(subscriberArr[i], this.f6108if, this.f6107for, this.f6109new);
            }
            this.f6106do.subscribe(subscriberArr2);
        }
    }
}
