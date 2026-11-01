package android.support.v4;

import io.reactivex.SingleObserver;
import io.reactivex.SingleOperator;
import io.reactivex.SingleSource;
import io.reactivex.internal.functions.Cif;

/* loaded from: classes3.dex */
public final class uz1<T, R> extends jz1<R> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f7018do;

    /* renamed from: if, reason: not valid java name */
    public final SingleOperator<? extends R, ? super T> f7019if;

    public uz1(SingleSource<T> singleSource, SingleOperator<? extends R, ? super T> singleOperator) {
        this.f7018do = singleSource;
        this.f7019if = singleOperator;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super R> singleObserver) {
        try {
            this.f7018do.subscribe((SingleObserver) Cif.m29468else(this.f7019if.apply(singleObserver), "The onLift returned a null SingleObserver"));
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, singleObserver);
        }
    }
}
