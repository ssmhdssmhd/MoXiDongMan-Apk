package io.reactivex.internal.operators.observable;

import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.SingleObserver;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.operators.observable.q0;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class r0<T, R> extends jz1<R> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26843do;

    /* renamed from: for, reason: not valid java name */
    public final BiFunction<R, ? super T, R> f26844for;

    /* renamed from: if, reason: not valid java name */
    public final Callable<R> f26845if;

    public r0(ObservableSource<T> observableSource, Callable<R> callable, BiFunction<R, ? super T, R> biFunction) {
        this.f26843do = observableSource;
        this.f26845if = callable;
        this.f26844for = biFunction;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super R> singleObserver) {
        try {
            this.f26843do.subscribe(new q0.Cdo(singleObserver, this.f26844for, Cif.m29468else(this.f26845if.call(), "The seedSupplier returned a null value")));
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, singleObserver);
        }
    }
}
