package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Predicate;

/* renamed from: io.reactivex.internal.operators.completable.switch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cswitch extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25450do;

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super Throwable> f25451if;

    /* renamed from: io.reactivex.internal.operators.completable.switch$do, reason: invalid class name */
    public final class Cdo implements CompletableObserver {

        /* renamed from: do, reason: not valid java name */
        private final CompletableObserver f25452do;

        public Cdo(CompletableObserver completableObserver) {
            this.f25452do = completableObserver;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f25452do.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            try {
                if (Cswitch.this.f25451if.test(th)) {
                    this.f25452do.onComplete();
                } else {
                    this.f25452do.onError(th);
                }
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.f25452do.onError(new io.reactivex.exceptions.Cdo(th, th2));
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f25452do.onSubscribe(disposable);
        }
    }

    public Cswitch(CompletableSource completableSource, Predicate<? super Throwable> predicate) {
        this.f25450do = completableSource;
        this.f25451if = predicate;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25450do.subscribe(new Cdo(completableObserver));
    }
}
