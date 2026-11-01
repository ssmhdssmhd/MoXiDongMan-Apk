package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;

/* renamed from: io.reactivex.internal.operators.single.public, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cpublic<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27222do;

    /* renamed from: if, reason: not valid java name */
    public final Action f27223if;

    /* renamed from: io.reactivex.internal.operators.single.public$do, reason: invalid class name */
    public final class Cdo implements SingleObserver<T> {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super T> f27224do;

        public Cdo(SingleObserver<? super T> singleObserver) {
            this.f27224do = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            try {
                Cpublic.this.f27223if.run();
            } catch (Throwable th2) {
                t80.m7781if(th2);
                th = new io.reactivex.exceptions.Cdo(th, th2);
            }
            this.f27224do.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f27224do.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                Cpublic.this.f27223if.run();
                this.f27224do.onSuccess(t);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f27224do.onError(th);
            }
        }
    }

    public Cpublic(SingleSource<T> singleSource, Action action) {
        this.f27222do = singleSource;
        this.f27223if = action;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27222do.subscribe(new Cdo(singleObserver));
    }
}
