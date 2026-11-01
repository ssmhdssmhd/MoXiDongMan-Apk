package com.uber.autodispose;

import android.support.v4.gl;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.observers.Cif;

/* loaded from: classes2.dex */
public interface MaybeSubscribeProxy<T> {
    Disposable subscribe();

    Disposable subscribe(Consumer<? super T> consumer);

    Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2);

    Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action);

    void subscribe(MaybeObserver<? super T> maybeObserver);

    @gl
    <E extends MaybeObserver<? super T>> E subscribeWith(E e);

    @gl
    Cif<T> test();

    @gl
    Cif<T> test(boolean z);
}
