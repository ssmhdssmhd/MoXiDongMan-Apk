package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import android.support.v4.t80;
import android.support.v4.zn1;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.single.interface, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cinterface<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<? extends T> f27204do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super Throwable, ? extends SingleSource<? extends T>> f27205if;

    /* renamed from: io.reactivex.internal.operators.single.interface$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = -5314538511045349925L;
        public final SingleObserver<? super T> downstream;
        public final Function<? super Throwable, ? extends SingleSource<? extends T>> nextFunction;

        public Cdo(SingleObserver<? super T> singleObserver, Function<? super Throwable, ? extends SingleSource<? extends T>> function) {
            this.downstream = singleObserver;
            this.nextFunction = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            try {
                ((SingleSource) Cif.m29468else(this.nextFunction.apply(th), "The nextFunction returned a null SingleSource.")).subscribe(new zn1(this, this.downstream));
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.downstream.onError(new io.reactivex.exceptions.Cdo(th, th2));
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.downstream.onSuccess(t);
        }
    }

    public Cinterface(SingleSource<? extends T> singleSource, Function<? super Throwable, ? extends SingleSource<? extends T>> function) {
        this.f27204do = singleSource;
        this.f27205if = function;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27204do.subscribe(new Cdo(singleObserver, this.f27205if));
    }
}
