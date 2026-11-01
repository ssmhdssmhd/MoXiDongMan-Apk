package com.uber.autodispose;

import android.support.v4.k10;
import com.uber.autodispose.observers.AutoDisposingSingleObserver;
import io.reactivex.CompletableSource;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.uber.autodispose.while, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cwhile<T> implements AutoDisposingSingleObserver<T> {

    /* renamed from: for, reason: not valid java name */
    private final CompletableSource f20806for;

    /* renamed from: new, reason: not valid java name */
    private final SingleObserver<? super T> f20808new;

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Disposable> f20805do = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<Disposable> f20807if = new AtomicReference<>();

    /* renamed from: com.uber.autodispose.while$do, reason: invalid class name */
    public class Cdo extends k10 {
        public Cdo() {
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            Cwhile.this.f20807if.lazySet(Cif.DISPOSED);
            Cif.dispose(Cwhile.this.f20805do);
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            Cwhile.this.f20807if.lazySet(Cif.DISPOSED);
            Cwhile.this.onError(th);
        }
    }

    public Cwhile(CompletableSource completableSource, SingleObserver<? super T> singleObserver) {
        this.f20806for = completableSource;
        this.f20808new = singleObserver;
    }

    @Override // com.uber.autodispose.observers.AutoDisposingSingleObserver
    public SingleObserver<? super T> delegateObserver() {
        return this.f20808new;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Cif.dispose(this.f20807if);
        Cif.dispose(this.f20805do);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f20805do.get() == Cif.DISPOSED;
    }

    @Override // io.reactivex.SingleObserver
    public void onError(Throwable th) {
        if (isDisposed()) {
            return;
        }
        this.f20805do.lazySet(Cif.DISPOSED);
        Cif.dispose(this.f20807if);
        this.f20808new.onError(th);
    }

    @Override // io.reactivex.SingleObserver
    public void onSubscribe(Disposable disposable) {
        Cdo cdo = new Cdo();
        if (Celse.m24612for(this.f20807if, cdo, Cwhile.class)) {
            this.f20808new.onSubscribe(this);
            this.f20806for.subscribe(cdo);
            Celse.m24612for(this.f20805do, disposable, Cwhile.class);
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onSuccess(T t) {
        if (isDisposed()) {
            return;
        }
        this.f20805do.lazySet(Cif.DISPOSED);
        Cif.dispose(this.f20807if);
        this.f20808new.onSuccess(t);
    }
}
