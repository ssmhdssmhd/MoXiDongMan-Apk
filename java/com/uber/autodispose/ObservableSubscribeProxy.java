package com.uber.autodispose;

import android.support.v4.gl;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.observers.Cif;

/* loaded from: classes2.dex */
public interface ObservableSubscribeProxy<T> {
    Disposable subscribe();

    Disposable subscribe(Consumer<? super T> consumer);

    Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2);

    Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action);

    Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Consumer<? super Disposable> consumer3);

    void subscribe(Observer<? super T> observer);

    @gl
    <E extends Observer<? super T>> E subscribeWith(E e);

    @gl
    Cif<T> test();

    @gl
    Cif<T> test(boolean z);
}
