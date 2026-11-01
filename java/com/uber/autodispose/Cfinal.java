package com.uber.autodispose;

import android.support.v4.k10;
import com.uber.autodispose.observers.AutoDisposingCompletableObserver;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.uber.autodispose.final, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cfinal implements AutoDisposingCompletableObserver {

    /* renamed from: for, reason: not valid java name */
    private final CompletableSource f20769for;

    /* renamed from: new, reason: not valid java name */
    private final CompletableObserver f20771new;

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Disposable> f20768do = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<Disposable> f20770if = new AtomicReference<>();

    /* renamed from: com.uber.autodispose.final$do, reason: invalid class name */
    public class Cdo extends k10 {
        public Cdo() {
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            Cfinal.this.f20770if.lazySet(Cif.DISPOSED);
            Cif.dispose(Cfinal.this.f20768do);
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            Cfinal.this.f20770if.lazySet(Cif.DISPOSED);
            Cfinal.this.onError(th);
        }
    }

    public Cfinal(CompletableSource completableSource, CompletableObserver completableObserver) {
        this.f20769for = completableSource;
        this.f20771new = completableObserver;
    }

    @Override // com.uber.autodispose.observers.AutoDisposingCompletableObserver
    public CompletableObserver delegateObserver() {
        return this.f20771new;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Cif.dispose(this.f20770if);
        Cif.dispose(this.f20768do);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f20768do.get() == Cif.DISPOSED;
    }

    @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
    public void onComplete() {
        if (isDisposed()) {
            return;
        }
        this.f20768do.lazySet(Cif.DISPOSED);
        Cif.dispose(this.f20770if);
        this.f20771new.onComplete();
    }

    @Override // io.reactivex.CompletableObserver
    public void onError(Throwable th) {
        if (isDisposed()) {
            return;
        }
        this.f20768do.lazySet(Cif.DISPOSED);
        Cif.dispose(this.f20770if);
        this.f20771new.onError(th);
    }

    @Override // io.reactivex.CompletableObserver
    public void onSubscribe(Disposable disposable) {
        Cdo cdo = new Cdo();
        if (Celse.m24612for(this.f20770if, cdo, Cfinal.class)) {
            this.f20771new.onSubscribe(this);
            this.f20769for.subscribe(cdo);
            Celse.m24612for(this.f20768do, disposable, Cfinal.class);
        }
    }
}
