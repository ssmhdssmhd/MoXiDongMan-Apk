package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiConsumer;

/* renamed from: io.reactivex.internal.operators.single.while, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cwhile<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27271do;

    /* renamed from: if, reason: not valid java name */
    public final BiConsumer<? super T, ? super Throwable> f27272if;

    /* renamed from: io.reactivex.internal.operators.single.while$do, reason: invalid class name */
    public final class Cdo implements SingleObserver<T> {

        /* renamed from: do, reason: not valid java name */
        private final SingleObserver<? super T> f27273do;

        public Cdo(SingleObserver<? super T> singleObserver) {
            this.f27273do = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            try {
                Cwhile.this.f27272if.accept(null, th);
            } catch (Throwable th2) {
                t80.m7781if(th2);
                th = new io.reactivex.exceptions.Cdo(th, th2);
            }
            this.f27273do.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f27273do.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                Cwhile.this.f27272if.accept(t, null);
                this.f27273do.onSuccess(t);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f27273do.onError(th);
            }
        }
    }

    public Cwhile(SingleSource<T> singleSource, BiConsumer<? super T, ? super Throwable> biConsumer) {
        this.f27271do = singleSource;
        this.f27272if = biConsumer;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27271do.subscribe(new Cdo(singleObserver));
    }
}
