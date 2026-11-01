package com.uber.autodispose;

import android.support.v4.gl;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiConsumer;
import io.reactivex.functions.Consumer;
import io.reactivex.observers.Cif;

/* loaded from: classes2.dex */
public interface SingleSubscribeProxy<T> {
    Disposable subscribe();

    Disposable subscribe(BiConsumer<? super T, ? super Throwable> biConsumer);

    Disposable subscribe(Consumer<? super T> consumer);

    Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2);

    void subscribe(SingleObserver<? super T> singleObserver);

    @gl
    <E extends SingleObserver<? super T>> E subscribeWith(E e);

    @gl
    Cif<T> test();

    @gl
    Cif<T> test(boolean z);
}
