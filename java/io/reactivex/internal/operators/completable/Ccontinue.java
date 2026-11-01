package io.reactivex.internal.operators.completable;

import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.Callable;

/* renamed from: io.reactivex.internal.operators.completable.continue, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccontinue<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25380do;

    /* renamed from: for, reason: not valid java name */
    public final T f25381for;

    /* renamed from: if, reason: not valid java name */
    public final Callable<? extends T> f25382if;

    /* renamed from: io.reactivex.internal.operators.completable.continue$do, reason: invalid class name */
    public final class Cdo implements CompletableObserver {

        /* renamed from: do, reason: not valid java name */
        private final SingleObserver<? super T> f25383do;

        public Cdo(SingleObserver<? super T> singleObserver) {
            this.f25383do = singleObserver;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            T tCall;
            Ccontinue ccontinue = Ccontinue.this;
            Callable<? extends T> callable = ccontinue.f25382if;
            if (callable != null) {
                try {
                    tCall = callable.call();
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.f25383do.onError(th);
                    return;
                }
            } else {
                tCall = ccontinue.f25381for;
            }
            if (tCall == null) {
                this.f25383do.onError(new NullPointerException("The value supplied is null"));
            } else {
                this.f25383do.onSuccess(tCall);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f25383do.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f25383do.onSubscribe(disposable);
        }
    }

    public Ccontinue(CompletableSource completableSource, Callable<? extends T> callable, T t) {
        this.f25380do = completableSource;
        this.f25381for = t;
        this.f25382if = callable;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f25380do.subscribe(new Cdo(singleObserver));
    }
}
