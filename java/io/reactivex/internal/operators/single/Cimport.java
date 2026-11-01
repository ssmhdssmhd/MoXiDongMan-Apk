package io.reactivex.internal.operators.single;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.Cif;

/* renamed from: io.reactivex.internal.operators.single.import, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cimport<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27196do;

    /* renamed from: if, reason: not valid java name */
    public final Consumer<? super Disposable> f27197if;

    /* renamed from: io.reactivex.internal.operators.single.import$do, reason: invalid class name */
    public static final class Cdo<T> implements SingleObserver<T> {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super T> f27198do;

        /* renamed from: for, reason: not valid java name */
        public boolean f27199for;

        /* renamed from: if, reason: not valid java name */
        public final Consumer<? super Disposable> f27200if;

        public Cdo(SingleObserver<? super T> singleObserver, Consumer<? super Disposable> consumer) {
            this.f27198do = singleObserver;
            this.f27200if = consumer;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            if (this.f27199for) {
                jp1.l(th);
            } else {
                this.f27198do.onError(th);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            try {
                this.f27200if.accept(disposable);
                this.f27198do.onSubscribe(disposable);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f27199for = true;
                disposable.dispose();
                Cif.error(th, this.f27198do);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            if (this.f27199for) {
                return;
            }
            this.f27198do.onSuccess(t);
        }
    }

    public Cimport(SingleSource<T> singleSource, Consumer<? super Disposable> consumer) {
        this.f27196do = singleSource;
        this.f27197if = consumer;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27196do.subscribe(new Cdo(singleObserver, this.f27197if));
    }
}
