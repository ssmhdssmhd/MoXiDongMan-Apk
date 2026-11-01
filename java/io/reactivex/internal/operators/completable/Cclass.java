package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;

/* renamed from: io.reactivex.internal.operators.completable.class, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cclass extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25374do;

    /* renamed from: if, reason: not valid java name */
    public final Consumer<? super Throwable> f25375if;

    /* renamed from: io.reactivex.internal.operators.completable.class$do, reason: invalid class name */
    public final class Cdo implements CompletableObserver {

        /* renamed from: do, reason: not valid java name */
        private final CompletableObserver f25376do;

        public Cdo(CompletableObserver completableObserver) {
            this.f25376do = completableObserver;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            try {
                Cclass.this.f25375if.accept(null);
                this.f25376do.onComplete();
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f25376do.onError(th);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            try {
                Cclass.this.f25375if.accept(th);
            } catch (Throwable th2) {
                t80.m7781if(th2);
                th = new io.reactivex.exceptions.Cdo(th, th2);
            }
            this.f25376do.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f25376do.onSubscribe(disposable);
        }
    }

    public Cclass(CompletableSource completableSource, Consumer<? super Throwable> consumer) {
        this.f25374do = completableSource;
        this.f25375if = consumer;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25374do.subscribe(new Cdo(completableObserver));
    }
}
