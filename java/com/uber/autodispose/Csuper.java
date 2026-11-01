package com.uber.autodispose;

import android.support.v4.k10;
import com.uber.autodispose.observers.AutoDisposingMaybeObserver;
import io.reactivex.CompletableSource;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.uber.autodispose.super, reason: invalid class name */
/* loaded from: classes2.dex */
final class Csuper<T> implements AutoDisposingMaybeObserver<T> {

    /* renamed from: for, reason: not valid java name */
    private final CompletableSource f20797for;

    /* renamed from: new, reason: not valid java name */
    private final MaybeObserver<? super T> f20799new;

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Disposable> f20796do = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<Disposable> f20798if = new AtomicReference<>();

    /* renamed from: com.uber.autodispose.super$do, reason: invalid class name */
    public class Cdo extends k10 {
        public Cdo() {
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            Csuper.this.f20798if.lazySet(Cif.DISPOSED);
            Cif.dispose(Csuper.this.f20796do);
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            Csuper.this.f20798if.lazySet(Cif.DISPOSED);
            Csuper.this.onError(th);
        }
    }

    public Csuper(CompletableSource completableSource, MaybeObserver<? super T> maybeObserver) {
        this.f20797for = completableSource;
        this.f20799new = maybeObserver;
    }

    @Override // com.uber.autodispose.observers.AutoDisposingMaybeObserver
    public MaybeObserver<? super T> delegateObserver() {
        return this.f20799new;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Cif.dispose(this.f20798if);
        Cif.dispose(this.f20796do);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f20796do.get() == Cif.DISPOSED;
    }

    @Override // io.reactivex.MaybeObserver
    public void onComplete() {
        if (isDisposed()) {
            return;
        }
        this.f20796do.lazySet(Cif.DISPOSED);
        Cif.dispose(this.f20798if);
        this.f20799new.onComplete();
    }

    @Override // io.reactivex.MaybeObserver
    public void onError(Throwable th) {
        if (isDisposed()) {
            return;
        }
        this.f20796do.lazySet(Cif.DISPOSED);
        Cif.dispose(this.f20798if);
        this.f20799new.onError(th);
    }

    @Override // io.reactivex.MaybeObserver
    public void onSubscribe(Disposable disposable) {
        Cdo cdo = new Cdo();
        if (Celse.m24612for(this.f20798if, cdo, Csuper.class)) {
            this.f20799new.onSubscribe(this);
            this.f20797for.subscribe(cdo);
            Celse.m24612for(this.f20796do, disposable, Csuper.class);
        }
    }

    @Override // io.reactivex.MaybeObserver
    public void onSuccess(T t) {
        if (isDisposed()) {
            return;
        }
        this.f20796do.lazySet(Cif.DISPOSED);
        Cif.dispose(this.f20798if);
        this.f20799new.onSuccess(t);
    }
}
