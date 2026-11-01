package io.reactivex.internal.observers;

import android.support.v4.vm0;

/* loaded from: classes3.dex */
public interface InnerQueuedObserverSupport<T> {
    void drain();

    void innerComplete(vm0<T> vm0Var);

    void innerError(vm0<T> vm0Var, Throwable th);

    void innerNext(vm0<T> vm0Var, T t);
}
