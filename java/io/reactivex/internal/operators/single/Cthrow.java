package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;

/* renamed from: io.reactivex.internal.operators.single.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthrow<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27246do;

    /* renamed from: if, reason: not valid java name */
    public final Consumer<? super Throwable> f27247if;

    /* renamed from: io.reactivex.internal.operators.single.throw$do, reason: invalid class name */
    public final class Cdo implements SingleObserver<T> {

        /* renamed from: do, reason: not valid java name */
        private final SingleObserver<? super T> f27248do;

        public Cdo(SingleObserver<? super T> singleObserver) {
            this.f27248do = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            try {
                Cthrow.this.f27247if.accept(th);
            } catch (Throwable th2) {
                t80.m7781if(th2);
                th = new io.reactivex.exceptions.Cdo(th, th2);
            }
            this.f27248do.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f27248do.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f27248do.onSuccess(t);
        }
    }

    public Cthrow(SingleSource<T> singleSource, Consumer<? super Throwable> consumer) {
        this.f27246do = singleSource;
        this.f27247if = consumer;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27246do.subscribe(new Cdo(singleObserver));
    }
}
