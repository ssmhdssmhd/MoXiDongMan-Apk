package com.uber.autodispose;

import android.support.v4.gl;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.subscribers.Cdo;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes2.dex */
public interface FlowableSubscribeProxy<T> {
    Disposable subscribe();

    Disposable subscribe(Consumer<? super T> consumer);

    Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2);

    Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action);

    Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Consumer<? super Subscription> consumer3);

    void subscribe(Subscriber<? super T> subscriber);

    @gl
    <E extends Subscriber<? super T>> E subscribeWith(E e);

    @gl
    Cdo<T> test();

    @gl
    Cdo<T> test(long j);

    @gl
    Cdo<T> test(long j, boolean z);
}
