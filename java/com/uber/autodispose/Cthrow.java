package com.uber.autodispose;

import android.support.v4.k10;
import com.uber.autodispose.observers.AutoDisposingObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.uber.autodispose.throw, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cthrow<T> extends AtomicInteger implements AutoDisposingObserver<T> {
    private final Observer<? super T> delegate;
    private final CompletableSource scope;
    public final AtomicReference<Disposable> mainDisposable = new AtomicReference<>();
    public final AtomicReference<Disposable> scopeDisposable = new AtomicReference<>();
    private final com.uber.autodispose.Cdo error = new com.uber.autodispose.Cdo();

    /* renamed from: com.uber.autodispose.throw$do, reason: invalid class name */
    public class Cdo extends k10 {
        public Cdo() {
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            Cthrow.this.scopeDisposable.lazySet(Cif.DISPOSED);
            Cif.dispose(Cthrow.this.mainDisposable);
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            Cthrow.this.scopeDisposable.lazySet(Cif.DISPOSED);
            Cthrow.this.onError(th);
        }
    }

    public Cthrow(CompletableSource completableSource, Observer<? super T> observer) {
        this.scope = completableSource;
        this.delegate = observer;
    }

    @Override // com.uber.autodispose.observers.AutoDisposingObserver
    public Observer<? super T> delegateObserver() {
        return this.delegate;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Cif.dispose(this.scopeDisposable);
        Cif.dispose(this.mainDisposable);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.mainDisposable.get() == Cif.DISPOSED;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (isDisposed()) {
            return;
        }
        this.mainDisposable.lazySet(Cif.DISPOSED);
        Cif.dispose(this.scopeDisposable);
        Creturn.m24643do(this.delegate, this, this.error);
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        if (isDisposed()) {
            return;
        }
        this.mainDisposable.lazySet(Cif.DISPOSED);
        Cif.dispose(this.scopeDisposable);
        Creturn.m24644for(this.delegate, th, this, this.error);
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (isDisposed() || !Creturn.m24647try(this.delegate, t, this, this.error)) {
            return;
        }
        this.mainDisposable.lazySet(Cif.DISPOSED);
        Cif.dispose(this.scopeDisposable);
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        Cdo cdo = new Cdo();
        if (Celse.m24612for(this.scopeDisposable, cdo, Cthrow.class)) {
            this.delegate.onSubscribe(this);
            this.scope.subscribe(cdo);
            Celse.m24612for(this.mainDisposable, disposable, Cthrow.class);
        }
    }
}
