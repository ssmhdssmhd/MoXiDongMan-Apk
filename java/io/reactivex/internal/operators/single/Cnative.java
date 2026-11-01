package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;

/* renamed from: io.reactivex.internal.operators.single.native, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnative<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27206do;

    /* renamed from: if, reason: not valid java name */
    public final Consumer<? super T> f27207if;

    /* renamed from: io.reactivex.internal.operators.single.native$do, reason: invalid class name */
    public final class Cdo implements SingleObserver<T> {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super T> f27208do;

        public Cdo(SingleObserver<? super T> singleObserver) {
            this.f27208do = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f27208do.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f27208do.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                Cnative.this.f27207if.accept(t);
                this.f27208do.onSuccess(t);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f27208do.onError(th);
            }
        }
    }

    public Cnative(SingleSource<T> singleSource, Consumer<? super T> consumer) {
        this.f27206do = singleSource;
        this.f27207if = consumer;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27206do.subscribe(new Cdo(singleObserver));
    }
}
