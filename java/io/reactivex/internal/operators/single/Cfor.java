package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiPredicate;

/* renamed from: io.reactivex.internal.operators.single.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor<T> extends jz1<Boolean> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27177do;

    /* renamed from: for, reason: not valid java name */
    public final BiPredicate<Object, Object> f27178for;

    /* renamed from: if, reason: not valid java name */
    public final Object f27179if;

    /* renamed from: io.reactivex.internal.operators.single.for$do, reason: invalid class name */
    public final class Cdo implements SingleObserver<T> {

        /* renamed from: do, reason: not valid java name */
        private final SingleObserver<? super Boolean> f27180do;

        public Cdo(SingleObserver<? super Boolean> singleObserver) {
            this.f27180do = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f27180do.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f27180do.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                Cfor cfor = Cfor.this;
                this.f27180do.onSuccess(Boolean.valueOf(cfor.f27178for.test(t, cfor.f27179if)));
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f27180do.onError(th);
            }
        }
    }

    public Cfor(SingleSource<T> singleSource, Object obj, BiPredicate<Object, Object> biPredicate) {
        this.f27177do = singleSource;
        this.f27179if = obj;
        this.f27178for = biPredicate;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Boolean> singleObserver) {
        this.f27177do.subscribe(new Cdo(singleObserver));
    }
}
