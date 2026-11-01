package io.reactivex.internal.subscribers;

import android.support.v4.wm0;

/* loaded from: classes3.dex */
public interface InnerQueuedSubscriberSupport<T> {
    void drain();

    void innerComplete(wm0<T> wm0Var);

    void innerError(wm0<T> wm0Var, Throwable th);

    void innerNext(wm0<T> wm0Var, T t);
}
