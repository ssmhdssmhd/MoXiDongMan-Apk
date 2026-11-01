package io.reactivex.internal.observers;

import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.z61;
import io.reactivex.CompletableObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.observers.LambdaConsumerIntrospection;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.observers.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo extends AtomicReference<Disposable> implements CompletableObserver, Disposable, Consumer<Throwable>, LambdaConsumerIntrospection {
    private static final long serialVersionUID = -4361286194466301354L;
    public final Action onComplete;
    public final Consumer<? super Throwable> onError;

    public Cdo(Action action) {
        this.onError = this;
        this.onComplete = action;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        io.reactivex.internal.disposables.Cdo.dispose(this);
    }

    @Override // io.reactivex.observers.LambdaConsumerIntrospection
    public boolean hasCustomOnError() {
        return this.onError != this;
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return get() == io.reactivex.internal.disposables.Cdo.DISPOSED;
    }

    @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
    public void onComplete() {
        try {
            this.onComplete.run();
        } catch (Throwable th) {
            t80.m7781if(th);
            jp1.l(th);
        }
        lazySet(io.reactivex.internal.disposables.Cdo.DISPOSED);
    }

    @Override // io.reactivex.CompletableObserver
    public void onError(Throwable th) {
        try {
            this.onError.accept(th);
        } catch (Throwable th2) {
            t80.m7781if(th2);
            jp1.l(th2);
        }
        lazySet(io.reactivex.internal.disposables.Cdo.DISPOSED);
    }

    @Override // io.reactivex.CompletableObserver
    public void onSubscribe(Disposable disposable) {
        io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
    }

    @Override // io.reactivex.functions.Consumer
    public void accept(Throwable th) {
        jp1.l(new z61(th));
    }

    public Cdo(Consumer<? super Throwable> consumer, Action action) {
        this.onError = consumer;
        this.onComplete = action;
    }
}
