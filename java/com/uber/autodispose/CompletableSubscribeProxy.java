package com.uber.autodispose;

import android.support.v4.gl;
import io.reactivex.CompletableObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.observers.Cif;

/* loaded from: classes2.dex */
public interface CompletableSubscribeProxy {
    Disposable subscribe();

    Disposable subscribe(Action action);

    Disposable subscribe(Action action, Consumer<? super Throwable> consumer);

    void subscribe(CompletableObserver completableObserver);

    @gl
    <E extends CompletableObserver> E subscribeWith(E e);

    @gl
    Cif<Void> test();

    @gl
    Cif<Void> test(boolean z);
}
