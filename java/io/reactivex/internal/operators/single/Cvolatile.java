package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;

/* renamed from: io.reactivex.internal.operators.single.volatile, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cvolatile<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<? extends T> f27266do;

    /* renamed from: for, reason: not valid java name */
    public final T f27267for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super Throwable, ? extends T> f27268if;

    /* renamed from: io.reactivex.internal.operators.single.volatile$do, reason: invalid class name */
    public final class Cdo implements SingleObserver<T> {

        /* renamed from: do, reason: not valid java name */
        private final SingleObserver<? super T> f27269do;

        public Cdo(SingleObserver<? super T> singleObserver) {
            this.f27269do = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            T tApply;
            Cvolatile cvolatile = Cvolatile.this;
            Function<? super Throwable, ? extends T> function = cvolatile.f27268if;
            if (function != null) {
                try {
                    tApply = function.apply(th);
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    this.f27269do.onError(new io.reactivex.exceptions.Cdo(th, th2));
                    return;
                }
            } else {
                tApply = cvolatile.f27267for;
            }
            if (tApply != null) {
                this.f27269do.onSuccess(tApply);
                return;
            }
            NullPointerException nullPointerException = new NullPointerException("Value supplied was null");
            nullPointerException.initCause(th);
            this.f27269do.onError(nullPointerException);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f27269do.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f27269do.onSuccess(t);
        }
    }

    public Cvolatile(SingleSource<? extends T> singleSource, Function<? super Throwable, ? extends T> function, T t) {
        this.f27266do = singleSource;
        this.f27268if = function;
        this.f27267for = t;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27266do.subscribe(new Cdo(singleObserver));
    }
}
