package io.reactivex.internal.operators.flowable;

import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.operators.flowable.y0;
import java.util.concurrent.Callable;
import org.reactivestreams.Publisher;

/* loaded from: classes3.dex */
public final class z0<T, R> extends jz1<R> {

    /* renamed from: do, reason: not valid java name */
    public final Publisher<T> f26079do;

    /* renamed from: for, reason: not valid java name */
    public final BiFunction<R, ? super T, R> f26080for;

    /* renamed from: if, reason: not valid java name */
    public final Callable<R> f26081if;

    public z0(Publisher<T> publisher, Callable<R> callable, BiFunction<R, ? super T, R> biFunction) {
        this.f26079do = publisher;
        this.f26081if = callable;
        this.f26080for = biFunction;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super R> singleObserver) {
        try {
            this.f26079do.subscribe(new y0.Cdo(singleObserver, this.f26080for, Cif.m29468else(this.f26081if.call(), "The seedSupplier returned a null value")));
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, singleObserver);
        }
    }
}
