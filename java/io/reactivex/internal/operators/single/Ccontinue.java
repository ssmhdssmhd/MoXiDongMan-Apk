package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;

/* renamed from: io.reactivex.internal.operators.single.continue, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccontinue<T, R> extends jz1<R> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<? extends T> f27149do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends R> f27150if;

    /* renamed from: io.reactivex.internal.operators.single.continue$do, reason: invalid class name */
    public static final class Cdo<T, R> implements SingleObserver<T> {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super R> f27151do;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, ? extends R> f27152if;

        public Cdo(SingleObserver<? super R> singleObserver, Function<? super T, ? extends R> function) {
            this.f27151do = singleObserver;
            this.f27152if = function;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f27151do.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f27151do.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                this.f27151do.onSuccess(Cif.m29468else(this.f27152if.apply(t), "The mapper function returned a null value."));
            } catch (Throwable th) {
                t80.m7781if(th);
                onError(th);
            }
        }
    }

    public Ccontinue(SingleSource<? extends T> singleSource, Function<? super T, ? extends R> function) {
        this.f27149do = singleSource;
        this.f27150if = function;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super R> singleObserver) {
        this.f27149do.subscribe(new Cdo(singleObserver, this.f27150if));
    }
}
