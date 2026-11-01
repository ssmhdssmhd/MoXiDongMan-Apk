package android.support.v4;

import io.reactivex.functions.Function;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class tb1<T, R> extends ub1<R> {

    /* renamed from: do, reason: not valid java name */
    public final ub1<T> f6462do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f6463for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends Publisher<? extends R>> f6464if;

    /* renamed from: new, reason: not valid java name */
    public final int f6465new;

    /* renamed from: try, reason: not valid java name */
    public final int f6466try;

    public tb1(ub1<T> ub1Var, Function<? super T, ? extends Publisher<? extends R>> function, boolean z, int i, int i2) {
        this.f6462do = ub1Var;
        this.f6464if = function;
        this.f6463for = z;
        this.f6465new = i;
        this.f6466try = i2;
    }

    @Override // android.support.v4.ub1
    /* renamed from: strictfp */
    public int mo7358strictfp() {
        return this.f6462do.mo7358strictfp();
    }

    @Override // android.support.v4.ub1
    public void subscribe(Subscriber<? super R>[] subscriberArr) {
        if (g(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                subscriberArr2[i] = io.reactivex.internal.operators.flowable.f.L7(subscriberArr[i], this.f6464if, this.f6463for, this.f6465new, this.f6466try);
            }
            this.f6462do.subscribe(subscriberArr2);
        }
    }
}
